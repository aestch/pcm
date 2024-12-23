<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kategoriarsip extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function arsipadministrasi()
    {
        return $this->hasMany(Arsipadministrasi::class);
    }
}
