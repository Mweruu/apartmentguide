/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*************************************************************!*\
  !*** ./platform/themes/flex-home/assets/js/availability.js ***!
  \*************************************************************/
var Availability = function () {
  //Add New
  var add_new_availability = function add_new_availability() {
    //var avail_html = $("#availability_ui > .row:first").html();
    var avail_html = $("#availability_ui > .row:first").clone();

    //Change Index in name
    var rowCnt = $("#availability_ui > .row").length;
    avail_html.find('input,select').each(function () {
      this.name = this.name.replace('[0]', '[' + rowCnt + ']');
      //$(this).removeClass("is-valid");
      //$(this).removeClass("hasDatepicker");
    });

    //Remove ID field if any
    avail_html.find(".custom_id").remove();

    //Set default value
    avail_html.find("input[type=text]").val("");
    avail_html.find('select').find("option:first").attr("selected", "selected");
    avail_html.find('.datepicker').removeClass('hasDatepicker');
    $("#availability_ui").append(avail_html);
    setTimeout(init_event, 500);
  };

  //Delete
  var delete_availability = function delete_availability(obj) {
    if ($("#availability_ui > .row").length > 1) $(obj).parent().parent().remove();
  };
  var init_event = function init_event() {
    $(".delete_availability").click(function () {
      delete_availability(this);
    });
    $('.datepicker').bootstrapDP({
      //format: 'yyyy-dd-mm',
      format: 'mm/dd/yyyy',
      startDate: new Date(),
      autoclose: true
    });
  };
  return {
    init: function init() {
      $("#add_new_availability").click(function () {
        add_new_availability();
      });
      setTimeout(init_event, 300);
    }
  };
}();
$(document).ready(function () {
  Availability.init();
});
/******/ })()
;