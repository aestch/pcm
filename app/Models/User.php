<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'username',
        'email',
        'password',
        'role_id',
    ];

    protected $with = ['role'];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function getRouteKeyName()
    {
        return 'id';
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function arsipfile()
    {
        return $this->hasMany(Arsipfile::class);
    }

    public function agenda()
    {
        return $this->hasMany(Agenda::class);
    }
    public function pengumuman()
    {
        return $this->hasMany(Pengumuman::class);
    }
    public function amalusaha()
    {
        return $this->hasMany(Amalusaha::class);
    }
    public function carousel()
    {
        return $this->hasMany(Carousel::class);
    }
}
