<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keanggotaan extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama',
        'nbm',
        'tempat_lahir',
        'tgl_lahir',
        'cabang',
        'ranting',
        'alamat',
        'status_perkawinan',
        'email',
        'no_hp',
        'pekerjaan',
        'foto_diri',
        'file_ktam',
    ];
}
