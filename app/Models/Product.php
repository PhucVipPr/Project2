<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $primaryKey = 'product_id';
    protected $fillable = [
        'product_id',
        'url',
        'cate_name',
        'product_name',
        'prices',
        'product_code',
        'product_info',
    ];
}
