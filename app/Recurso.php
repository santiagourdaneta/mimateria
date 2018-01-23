<?php
namespace App;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

 
class Recurso extends Model
{
    

    use SoftDeletes;
    
    protected $fillable = ['descripcion', 'enlace'];
    
    public static function boot()
    {
        parent::boot();

        Recurso::observe(new \App\Observers\UserActionsObserver);
    }

   
    
}
