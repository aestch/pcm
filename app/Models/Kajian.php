<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kajian extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function bidangkajian()
    {
        return $this->belongsTo(Bidangkajian::class);
    }
}