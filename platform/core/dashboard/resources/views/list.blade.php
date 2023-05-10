@extends(BaseHelper::getAdminMasterLayoutTemplate())
@section('content')
    <div class="clearfix"></div>
    <div class="row">
        @foreach ($topWidgertState as $widget)
            <div class="col-lg-3 col-md-3 col-sm-6 col-12">
				<a class="dashboard-stat dashboard-stat-v2" style="{{$widget['style']}}" href="javascript:void(0);">
					<div class="visual">
						<i class="{{$widget['icon']}}" style="opacity: .1;"></i>
					</div>
					<div class="details">
						<div class="number">
							<span data-counter="counterup" data-value="{{$widget['count']}}">0</span>
						</div>
						<div class="desc"> {{$widget['title']}} </div>
					</div>
				</a>
			</div>
        @endforeach
	</div>

	<div id="list_widgets" class="row">
		<div class="col-md-6 col-sm-6 col-12 widget_item" id="widget_users">
			<div class="portlet light bordered portlet-no-padding ">
				<div class="portlet-title">
					<div class="caption">
						<i class="fas fa-users font-dark fw-bold"></i>
						<span class="caption-subject font-dark">Latest Users</span>
					</div>							
				</div>
				<div class="portlet-body">
					<div class="scroller mCustomScrollbar" style="padding: 0px;">
						<div id="mCSB_1" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" style="max-height: 320px;" tabindex="0">
							<div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px;" dir="ltr">
								<ul class="item-list padding">
									@foreach($latestUsersList as $userKey => $userInfo)		
										 <li>
											<span>
												<a href="{{ route('account.edit', $userInfo->id) }}" class="d-inline-block">{{$userInfo->first_name}} {{$userInfo->last_name}}</a>		
											</span>												
											<span class="d-inline-block" style="float: right;">{{date("m/d/Y", strtotime($userInfo->created_at))}}</span>
										 </li>								
									@endforeach								
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-sm-6 col-12 widget_item" id="widget_property">
					<div class="portlet light bordered portlet-no-padding ">
						<div class="portlet-title">
							<div class="caption">
								<i class="fas fa-building font-dark fw-bold"></i>
								<span class="caption-subject font-dark">Latest Properties</span>
							</div>							
						</div>
						<div class="portlet-body">
							<div class="scroller mCustomScrollbar">
								<div id="mCSB_1" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" style="max-height: 320px;" tabindex="0">
									<div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px;" dir="ltr">
										<ul class="item-list padding">											
											@foreach($latestPropertiesList as $propertyKey => $propertyInfo)		
												 <li>
													<span>
														<a href="{{route('property.edit', $propertyInfo->id)}}" class="d-inline-block">{{$propertyInfo->name}}</a>		
													</span>
													<span class="small italic d-inline-block"style="margin-left:10px;">{{date("m/d/Y", strtotime($propertyInfo->created_at))}} </span>
													<span class="d-inline-block" style="float: right;">{{ucfirst($propertyInfo->moderation_status)}}</span>
												 </li>								
											@endforeach								
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</div>
@stop
