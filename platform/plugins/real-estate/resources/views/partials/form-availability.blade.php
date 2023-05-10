<div id="availability_ui">
	@if(!empty($selectedAvailabilities) && count($selectedAvailabilities) > 0)
		@foreach($selectedAvailabilities as $key=>$avail)			
			<div class="row">
				<input type="hidden" name="availability[{{$key}}][id]" value="{{$avail->id}}" class="custom_id"/>
				<div class="col-md-3 col-sm-5">
					<div class="form-group mb-3">
						<label for="number_bedroom" class="control-label">Available Date</label>
						<input type="text" class="form-control datepicker" placeholder="Enter Available Date" name="availability[{{$key}}][avail_date]" value="{{date('m/d/Y', strtotime($avail->avail_date))}}"/>
					</div>
				</div>

				<div class="col-md-3 col-sm-5">
					<div class="form-group mb-3">
						<label class="control-label">From Time</label>
						<div class="input-group-append">
							<select class="select2" name="availability[{{$key}}][from_hour]">
								@for($i=1;$i<=12;$i++)
									<option value='{{sprintf("%02d", $i)}}' @if($avail->from_hour == $i) selected @endif >{{sprintf("%02d", $i)}}</option>
								@endfor
							</select>
							<select class="select2" name="availability[{{$key}}][from_min]">
								@for($i=0;$i<=59;$i++)
									<option value='{{sprintf("%02d", $i)}}' @if($avail->from_min == $i) selected @endif>{{sprintf("%02d", $i)}}</option>
								@endfor
							</select>
							<select class="select2" name="availability[{{$key}}][from_formate]">
								<option value="AM" @if($avail->from_formate == "AM") selected @endif>AM</option>				
								<option value="PM" @if($avail->from_formate == "PM") selected @endif>PM</option>
							</select>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-5">
					<div class="form-group mb-3">
						<label class="control-label">Upto Time</label>
						<div class="input-group-append">
							<select class="select2" name="availability[{{$key}}][to_hour]">
								@for($i=1;$i<=12;$i++)
									<option value='{{sprintf("%02d", $i)}}' @if($avail->to_hour == $i) selected @endif>{{sprintf("%02d", $i)}}</option>
								@endfor
							</select>
							<select class="select2" name="availability[{{$key}}][to_min]">
								@for($i=0;$i<=59;$i++)
									<option value='{{sprintf("%02d", $i)}}' @if($avail->to_min == $i) selected @endif>{{sprintf("%02d", $i)}}</option>
								@endfor
							</select>
							<select class="select2" name="availability[{{$key}}][to_formate]">
								<option value="AM" @if($avail->to_formate == "AM") selected @endif>AM</option>				
								<option value="PM" @if($avail->to_formate == "PM") selected @endif>PM</option>
							</select>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-2 mt-4">
					<button type="button" class="btn btn-warning delete_availability">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
		@endforeach
	@else	
		<div class="row">
			<div class="col-md-3 col-sm-5">
				<div class="form-group mb-3">
					<label for="number_bedroom" class="control-label">Available Date</label>
					<input type="text" class="form-control datepicker" placeholder="Enter Available Date" name="availability[0][avail_date]"/>
				</div>
			</div>

			<div class="col-md-3 col-sm-5">
				<div class="form-group mb-3">
					<label class="control-label">From Time</label>
					<div class="input-group-append">
						<select class="select2" name="availability[0][from_hour]">
							@for($i=1;$i<=12;$i++)
								<option value='{{sprintf("%02d", $i)}}'>{{sprintf("%02d", $i)}}</option>
							@endfor
						</select>
						<select class="select2" name="availability[0][from_min]">
							@for($i=0;$i<=59;$i++)
								<option value='{{sprintf("%02d", $i)}}'>{{sprintf("%02d", $i)}}</option>
							@endfor
						</select>
						<select class="select2" name="availability[0][from_formate]">
							<option value="AM">AM</option>				
							<option value="PM">PM</option>
						</select>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-5">
				<div class="form-group mb-3">
					<label class="control-label">Upto Time</label>
					<div class="input-group-append">
						<select class="select2" name="availability[0][to_hour]">
							@for($i=1;$i<=12;$i++)
								<option value='{{sprintf("%02d", $i)}}'>{{sprintf("%02d", $i)}}</option>
							@endfor
						</select>
						<select class="select2" name="availability[0][to_min]">
							@for($i=0;$i<=59;$i++)
								<option value='{{sprintf("%02d", $i)}}'>{{sprintf("%02d", $i)}}</option>
							@endfor
						</select>
						<select class="select2" name="availability[0][to_formate]">
							<option value="AM">AM</option>				
							<option value="PM">PM</option>
						</select>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-2 mt-4">
				<button type="button" class="btn btn-warning delete_availability">
					<i class="fa fa-times"></i>
				</button>
			</div>
		</div>
	@endif
</div>

<div class="form-group mb-3">
	<button type="button" class="btn btn-info" id="add_new_availability">Add new</button>
</div>