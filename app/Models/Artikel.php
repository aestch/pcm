<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function kategoriartikel()
    {
        return $this->belongsTo(Kategoriartikel::class);
    }

    public function komentarartikel()
    {
        return $this->hasMany(Komentarartikel::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
