<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mockery\Exception;
use App\User;

class Bsession extends Model
{
  public $table = 'bsession';

  protected $guarded = ['id'];

  protected $casts = [
    'data' => 'json',
  ];

  static $meta;

  public static function valid($token)
  {
    return ! ! self::init($token);
  }

  public static function init($token)
  {
    $row = self::where('token', $token)->first();

    if ( ! $row)
      return false;

    return self::$meta = $row;
  }

  public static function generate($user_id = null)
  {
    $row = new self;
    $expired_ut = time() + self::day(7);

    $row->token = self::make_token();
    $row->data = [];
    $row->user_id = $user_id;
    $row->expired_at = date('Y-m-d H:i:s', $expired_ut);

    $row->save();

    self::$meta = $row;

    return $row;
  }

  public static function sync_to_cache()
  {
    $meta = self::$meta;
    $arr = $meta->toArray();
    unset($arr['data']);

    $cache = [
      'meta' => $arr,
      'user' => $meta->user_id ? User::find($meta->user_id)->toArray() : null,
      'data' => $meta->data ?: [],
    ];

    $GLOBALS['__BSESSION__'] = $cache;
    // dd($GLOBALS);
    // dump('session');
  }

  public function get_cache()
  {
    return @$GLOBALS['__BSESSION__'];
  }

  public static function get_token()
  {
    return self::$meta->token;
  }

  public static function set_data($key, $val)
  {
    $row = &self::$meta;
    $data = $row->data;
    array_set($data, $key, $val);
    $row->data = $data;
    if ($row->save()) {
      self::sync_to_cache();
      return true;
    }
  }

  public static function get_data($key = null)
  {
    $data = self::$meta->data;
    if ( ! $key)
      return $data;
    return array_get($data, $key);
  }

  public static function make_token()
  {
    return uniqid() . md5(rand(1000, 9999));
  }

  public static function day($num = 1)
  {
    return $num * 24 * 60 * 60;
  }
}
