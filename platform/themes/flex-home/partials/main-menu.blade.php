<ul {!! $options !!}>
    @foreach ($menu_nodes as $key => $row)
        <li class="menu-item @if ($row->has_child) menu-item-has-children @endif {{ $row->css_class }} @if ($row->active) current-menu-item @endif"> 
			@if($row->title == "Property Locations")
				<a href="javascript:void(0);" id="mnt_property_location" target="{{ $row->target }}">
					@if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}
				</a>
			@else 
				<a href="{{ url($row->url) }}" target="{{ $row->target }}">
					@if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}
				</a>
			@endif

            @if ($row->has_child)				
				@php 
					foreach($row->child as $key => $menuinfo){
						$row->child[$key]->url = str_replace("&amp;", "&", $menuinfo->url);
					}
				@endphp
                <span class="fas fa-angle-down sub-toggle-desktop"></span>
                <span class="sub-toggle"></span>
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'sub-menu'],
                        'menu_nodes' => $row->child,
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>