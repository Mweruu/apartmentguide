function getLocationModal()
{
	$("#stateWiseCityPopUp").modal('show');
	$("#stateList").show();
    $("#stateList").html("Please wait...");
    $("#cityList").hide();
    $("#cityBack").hide();
    var qstr = {};
    $.ajax({
      url: '/stateList',
      type: 'POST',
      data: qstr,
      success: function success(r) {
        //console.log(r.length);
        var stateHtml = '';
        if (r.length > 0) {
          stateHtml = createLocationHtml(r,'stateList');
        } else {
          stateHtml = "Data not found!";
        }

        $("#stateList").html(stateHtml);
      }
    });
}

function getCityStateList(stateID,stateName)
{
	$("#stateList").hide();
    $("#cityList").show();
	$("#cityList").html("Please wait...");	
    var qstr = {stateID:stateID};
    $.ajax({
      url: '/cityList',
      type: 'POST',
      data: qstr,
      success: function success(r) {
        //console.log(r.length);
        var stateHtml = '';
        if (r.length > 0) {
            stateHtml = createLocationHtml(r,'cityList',stateName);		  
			//Title Change
			$("#localtion-search-popup-title").html("All "+stateName+" : "+r.length);
        } else {
          stateHtml = "Data not found!";
        }
		$("#cityBack").show();
        $("#cityList").html(stateHtml);
      }
    });
}

function createLocationHtml(data,flag,stateName='') {
	var alphabet = '';
	var stateHtml = '<ul class="list-group">';
	$.each(data, function (i, item) {
		if (alphabet == "" || alphabet != item.name.slice(0, 1)) {
			alphabet = item.name.slice(0, 1);
			stateHtml += "<li class='list-group-item d-flex justify-content-between align-items-center'><string>" + alphabet.toUpperCase() + "</string></li>";
		}

		if(flag == "cityList")
		{
			//City List
			stateHtml += "<li class='list-group-item d-flex justify-content-between align-items-center'><a href='/properties?city_id="+ item.id + "&location=" + item.name + ", " + stateName + "'>" + item.name + " <span class='badge badge-primary badge-pill'>" + item.count + "</span></a></li>";
		} else {
			//State List
			stateHtml += "<li class='list-group-item d-flex justify-content-between align-items-center'><a href='javascript:void(0);' onclick=\"getCityStateList('"+item.id+"','"+item.name+"');\">" + item.name + " <span class='badge badge-primary badge-pill'>" + item.count + " </span></a></li>";
		}
	});
	stateHtml += '</ul>';
	return stateHtml;
}

$(document).ready(function () {
	/* button click event */
	$("#property-location-btn, #mnt_property_location").click(function() {
		getLocationModal();
	});

	/* Back Button Click */
	$("#cityBack").click(function () {
		$("#stateList").show();
		$("#cityList").hide();
		$("#cityBack").hide();
		//Title Change
		$("#localtion-search-popup-title").html("All Kenya");
	});
});