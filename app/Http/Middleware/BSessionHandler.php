<?php

namespace App\Http\Middleware;

use \App\Bsession as BS;
use Closure;

class BSessionHandler
{
  public function handle($request, Closure $next)
  {
    $session_name = 'authorization';
    $token = $request->get($session_name) ?: $request->header($session_name);

    if ( ! $token || ! BS::valid($token)) {
      BS::generate();

      $token = BS::get_token();
      header("Access-Control-Expose-Headers: $session_name");
      header("$session_name: $token");
    }

    BS::sync_to_cache();
    return $next($request);
  }
}