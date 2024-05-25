<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bidangkajian extends Model
{
    use HasFactory;
    protected $guarded = [
        'id'
    ];

    public function kajian()
    {
        return $this->hasMany(Kajian::class);
    }
}
