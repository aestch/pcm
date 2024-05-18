<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Komentarberita extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function portalberita()
    {
        return $this->belongsTo(Portalberita::class);
    }
}
