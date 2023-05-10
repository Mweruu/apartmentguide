@php
    use Botble\RealEstate\Enums\PropertyStatusEnum;
    use Botble\RealEstate\Repositories\Interfaces\PropertyInterface;

    $properties = collect([]);

    if (is_plugin_active('real-estate')) {
        $properties = app(PropertyInterface::class)->advancedGet([
            'condition' => [
                're_properties.is_featured' => true,
                ['re_properties.status', 'NOT_IN', [PropertyStatusEnum::NOT_AVAILABLE]],
            ],
            'take'      => (int)theme_option('number_of_featured_projects', 5),
            'with'      => RealEstateHelper::getPropertyRelationsQuery(),
            'order_by' => ['re_properties.created_at' => 'DESC'],
        ]);
     }
@endphp
@if ($properties->count())
    <div class="box_shadow" style="margin-top: 0;">
        <div class="container-fluid w90">
            <div class="projecthome">
                <div class="row">
                    <div class="col-12">
                        <h2>{{ __('Featured properties') }}</h2>
                        <p style="margin: 0; margin-bottom: 10px">Below is list of each property for featured</p>
                    </div>
                </div>
                <div class="row rowm10">
                    @foreach ($properties as $property)
                        <div class="col-sm-4 col-md-3 colm10">
                            {!! Theme::partial('real-estate.properties.item', compact('property')) !!}
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endif
