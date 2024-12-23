<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Amalusaha extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_amal',
        'link_amal',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
