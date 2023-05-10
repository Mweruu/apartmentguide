<?php

namespace Botble\RealEstate\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Html;

class Availabilities extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 're_availabilities';

    /**
     * @var array
     */
    protected $fillable = [
        'property_id',
        'avail_date',
        'from_hour',
        'from_min',
        'from_formate',
        'to_hour',
        'to_min',
        'to_formate',
    ];    
    
    public function property()
    {
        return $this->belongsTo(Property::class, 'property_id','id');
    }
}
