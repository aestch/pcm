<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SavedPortalBerita extends Model
{
    use HasFactory;

    // Tentukan nama tabel yang sesuai dengan nama tabel di database
    protected $table = 'saved_portalberitas';

    // Tentukan kolom yang dapat diisi
    protected $fillable = [
        'user_id',
        'portalberita_id',
    ];

    public function berita()
    {
        return $this->belongsTo(PortalBerita::class, 'portalberita_id');
    }
}
