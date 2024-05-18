<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Komentarartikel extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function artikel()
    {
        return $this->belongsTo(Artikel::class);
    }
}
