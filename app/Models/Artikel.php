<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    public function kategori()
    {
        return $this->belongsTo(Kategoriartikel::class, 'kategoriartikel_id'); // Nama foreign key di tabel artikel
    }

    // Relasi ke model Komentarartikel
    public function komentar()
    {
        return $this->hasMany(Komentarartikel::class, 'artikel_id'); // Nama foreign key di tabel komentar artikel
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
