<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Portalberita extends Model
{
    use HasFactory;

    protected $guarded = [
        'id'
    ];

    // protected $with = ['category'];

    // public function scopeFilter($query, array $filters)
    // {

    //     $query->when($filters['search'] ?? false, function($query, $search) {
    //         return $query->where('judul', 'like', '%' . $search . '%')
    //         ->orWhere('body', 'like', '%' . $search . '%');
    //     });

    //     $query->when($filters['kategoriberita'] ?? false, function($query, $kategoriberita){
    //         return $query->whereHas('kategoriberita', function($query) use ($kategoriberita) {
    //             $query->where('slug', $kategoriberita);
    //         });
    //     });

    // }

    public function kategoriberita()
    {
        return $this->belongsTo(Kategoriberita::class);
    }

    public function komentarberita()
    {
        return $this->hasMany(Komentarberita::class);
    }
}
