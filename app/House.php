<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class House extends Model
{
    protected $table = 'house';
    protected $guarded = ['id'];
    protected $casts = [
        'area' => 'float',
        'unitPrice' => 'float',
        'price' => 'integer',
        'floor' => 'integer',
        'floors' => 'integer',
        'direction' => 'array',
        'roomCount' => 'array'
    ];
}
