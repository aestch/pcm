<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Arsipadministrasi extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function kategoriarsip()
    {
        return $this->belongsTo(Kategoriarsip::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
