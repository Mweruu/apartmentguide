@php 
	if(config('apartment.production'))
	{
		$unsetMenuAdmin = ['cms-plugins-career', 'cms-plugins-payments', 'cms-core-appearance', 'cms-core-plugins', 'cms-plugin-translation', 'cms-core-settings', 'cms-core-platform-administration'];
		$unsetchildrenAdminMenu = [];

		$menus = dashboard_menu()->getAll();
		foreach($unsetMenuAdmin as $key => $menuKey) {
			unset($menus[$menuKey]);
		}
	}
	else {
		$unsetMenuAdmin = $unsetchildrenAdminMenu = [];
		$menus = dashboard_menu()->getAll();
	}
@endphp

@foreach ($menus as $menu)
    @php $menu = apply_filters(BASE_FILTER_DASHBOARD_MENU, $menu); @endphp
    <li class="nav-item @if ($menu['active']) active @endif" id="{{ $menu['id'] }}">
        <a href="{{ $menu['url'] }}" class="nav-link nav-toggle">
            <i class="{{ $menu['icon'] }}"></i>
            <span class="title">
                {{ !is_array(trans($menu['name'])) ? trans($menu['name']) : null }}
                {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $menu['id']) !!}</span>
            @if (isset($menu['children']) && count($menu['children'])) <span class="arrow @if ($menu['active']) open @endif"></span> @endif
        </a>
        @if (isset($menu['children']) && count($menu['children']))
            <ul class="sub-menu @if (!$menu['active']) hidden-ul @endif">
                @foreach ($menu['children'] as $item)
					@if(!in_array($item['id'], $unsetchildrenAdminMenu))
                    <li class="nav-item @if ($item['active']) active @endif" id="{{ $item['id'] }}">
                        <a href="{{ $item['url'] }}" class="nav-link">
                            <i class="{{ $item['icon'] }}"></i>
                            {{ trans($item['name']) }}
                            {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $item['id']) !!}</span>
                        </a>
                    </li>
					@endif
                @endforeach
            </ul>
        @endif
    </li>
@endforeach
