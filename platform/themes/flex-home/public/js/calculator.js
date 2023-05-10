/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!***********************************************************!*\
  !*** ./platform/themes/flex-home/assets/js/calculator.js ***!
  \***********************************************************/
var EMICalculator = function () {
  var currency = 'Ksh ';
  var validate = function validate() {
    if ($("#principal_amount").val() == "" || $("#interest_rate").val() == "" || $("#loan_terms").val() == "") {
      $(".alert-danger").show();
      $(".alert-danger").html("Please add all required value");
      return false;
    }
    if (!parseFloat($("#principal_amount").val()) || !parseFloat($("#interest_rate").val()) || !parseFloat($("#loan_terms").val()) || parseFloat($("#interest_rate").val()) > 100) {
      $(".alert-danger").show();
      $(".alert-danger").html("Please add all required value");
      return false;
    }
    return true;
  };
  var calculateEMI = function calculateEMI() {
    if (!validate()) return false;
    $(".alert-danger").hide();
    var loanstruct = {
      loanAmount: parseFloat($("#principal_amount").val()),
      annualInterestrate: parseFloat($("#interest_rate").val()),
      loanDuration: parseFloat($("#loan_terms").val())
    };

    //console.log(loanstruct)
    var EMIResult = getEMI(loanstruct);
    //console.log(EMIResult);

    $("#loan_emi").html('<p> Monthly Payment: <span style="float:right;"><b>' + currency + num2money(EMIResult.EMI) + '</b></span></p><hr/>');
    $("#total_interest").html('<p> Total Interest Payable: <span style="float:right;"><b>' + currency + num2money(EMIResult.Interest) + '</b></span></p><hr/>');
    $("#total_payment").html('<p> Total Payment (Principal + Interest): <span style="float:right;"><b>' + currency + num2money(EMIResult.Total) + '</b></span></p><hr/>');
    drawChart(EMIResult);
  };
  var getEMI = function getEMI(loan) {
    var interest = loan.annualInterestrate / 1200;
    var term = loan.loanDuration * 12;
    var top = Math.pow(1 + interest, term);
    var bottom = top - 1;
    var ratio = top / bottom;
    var EMI = loan.loanAmount * interest * ratio;
    var Total = EMI * term;
    var Payble_Interest = Total - loan.loanAmount;
    var EMIObj = {
      EMI: EMI.toFixed(0),
      Interest: Payble_Interest.toFixed(0),
      Total: Total.toFixed(0),
      Principal: loan.loanAmount.toFixed(0)
    };
    return EMIObj;
  };
  var drawChart = function drawChart(EMIResult) {
    $("#payment_graph").empty();
    Morris.Donut({
      element: 'payment_graph',
      data: [{
        label: "Total Interest",
        value: EMIResult.Interest
      }, {
        label: "Principal Amount",
        value: EMIResult.Principal
      }],
      colors: ['#e23e1d', '#538cca'],
      resize: true
    });
  };
  var num2money = function num2money(yourNumber) {
    //Seperates the components of the number
    var n = yourNumber.toString().split(".");
    //Comma-fies the first part
    n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    //Combines the two sections
    return n.join(".");
  };
  var money2num = function money2num(nameStr) {
    if (nameStr != '' && nameStr != null && nameStr != 'undefined' && typeof nameStr != 'undefined') {
      nameStr = nameStr.toString();
      var number = Number(nameStr.replace(/[^0-9\.]+/g, ""));
      return number;
    } else return 0;
  };
  return {
    init: function init() {
      calculateEMI();

      /* button click event */
      $("#calculate_emi").click(function () {
        calculateEMI();
      });
      $("#principal_amount, #interest_rate, #loan_terms").change(function () {
        $("#calculate_emi").trigger("click");
      });
    }
  };
}();
// Initialize when page loads
$(document).ready(function () {
  EMICalculator.init();
});
/******/ })()
;