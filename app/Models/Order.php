<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use mysql_xdevapi\Table;

class Order extends Model
{
    use HasFactory;
    protected $primaryKey = 'order_id';
    protected $table = 'orders';
    protected $fillable = [
        'user_id',
        'cart_id',
        'order_name',
        'order_phone',
        'order_address',
        'order_status',
    ];
}