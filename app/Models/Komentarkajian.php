<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Komentarkajian extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function kajian()
    {
        return $this->belongsTo(Kajian::class);
    }
}
