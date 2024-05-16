<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kategoriberita extends Model
{
    use HasFactory;
    protected $guarded = [
        'id'
    ];

    public function portalberita()
    {
        return $this->hasMany(Portalberita::class);
    }
}
