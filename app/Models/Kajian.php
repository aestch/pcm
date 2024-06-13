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

    public function komentarkajian()
    {
        return $this->hasMany(Komentarkajian::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
