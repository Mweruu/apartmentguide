/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*******************************************************************!*\
  !*** ./platform/plugins/location/resources/assets/js/location.js ***!
  \*******************************************************************/
function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }
function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, _toPropertyKey(descriptor.key), descriptor); } }
function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }
function _toPropertyKey(arg) { var key = _toPrimitive(arg, "string"); return _typeof(key) === "symbol" ? key : String(key); }
function _toPrimitive(input, hint) { if (_typeof(input) !== "object" || input === null) return input; var prim = input[Symbol.toPrimitive]; if (prim !== undefined) { var res = prim.call(input, hint || "default"); if (_typeof(res) !== "object") return res; throw new TypeError("@@toPrimitive must return a primitive value."); } return (hint === "string" ? String : Number)(input); }
var Location = /*#__PURE__*/function () {
  function Location() {
    _classCallCheck(this, Location);
  }
  _createClass(Location, null, [{
    key: "changeProvince",
    value: function changeProvince($element) {
      var $city = $(document).find('select[data-type=city]');
      if ($element.data('related-city')) {
        $city = $(document).find('#' + $element.data('related-city'));
      }
      var url = $element.data('change-state-url');
      if (url !== null && url !== '' && $element.val() !== '') {
        $.ajax({
          url: url,
          type: 'GET',
          data: {
            'state_id': $element.val()
          },
          beforeSend: function beforeSend() {
            $element.closest('form').find('button[type=submit], input[type=submit]').prop('disabled', true);
          },
          success: function success(data) {
            var option = '<option value="">' + $city.data('placeholder') + '</option>';
            $.each(data.data, function (index, item) {
              if (item.id === $city.data('origin-value')) {
                option += '<option value="' + item.id + '" selected="selected">' + item.name + '</option>';
              } else {
                option += '<option value="' + item.id + '">' + item.name + '</option>';
              }
            });
            $city.html(option);
            $element.closest('form').find('button[type=submit], input[type=submit]').prop('disabled', false);
          }
        });
      }
    }
  }]);
  return Location;
}();
$(document).ready(function () {
  var $state_fields = $(document).find('select[data-type=state]');
  if ($state_fields.length > 0) {
    $.each($state_fields, function (index, el) {
      Location.changeProvince($(el));
    });
    $(document).on('change', 'select[data-type=state]', function (event) {
      Location.changeProvince($(event.currentTarget));
    });
  }
});
/******/ })()
;