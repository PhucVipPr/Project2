<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;
    protected $primaryKey = ['cart_id'];
    protected $fillable = ['product_id','quantity'];
    protected $table = 'carts';
}
