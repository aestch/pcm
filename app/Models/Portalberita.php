<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Portalberita extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function kategoriberita()
    {
        return $this->belongsTo(Kategoriberita::class);
    }
}
