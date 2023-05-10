<div id="contact">
    <div class="row" style="background-color: #f4f4f4;">        
        <div class="col-md-6">
            <form action="javascript:void(0);" method="post" class="generic-form" id="emi-calculator-frm" name="emi-calculator-frm">
				@csrf
                <div class="wrapper">
                    <h2 class="h2">{{ __('Loan EMI Calculator') }}</h2>
					<p>Home Loan EMI calculator is a basic calculator that helps you to calculate the EMI, monthly interest and monthly reducing balance on the basis of principal amount, loan tenure and interest rate.</p>
                    <div class="form-group">
						<label>Loan Amount <span class="text-danger">*</span></label>
                        <input class="form-control" type="number" name="principal_amount" id="principal_amount" placeholder="{{ __('Loan Amount') }} *" required value="1000000">
                    </div>
                    <div class="form-group">
						<label>Rate of interest <small>(%)</small> <span class="text-danger">*</span></label>
                        <input class="form-control" type="number" name="interest_rate" id="interest_rate" placeholder="{{ __('Rate of interest') }} *" required value="8.5" max="100">
                    </div>
                    <div class="form-group">
						<label>Loan Terms <small>(in Years)</small> <span class="text-danger">*</span></label>
                        <input class="form-control" type="number" name="loan_terms" id="loan_terms" placeholder="{{ __('Loan Terms') }}" value="10" required>
                    </div>                    
                    <div class="alert alert-success text-success text-left" style="display: none;">
                        <span></span>
                    </div>
                    <div class="alert alert-danger text-danger text-left" style="display: none;">
                        <span></span>
                    </div>
                    <br>
                    <div class="form-actions">
                        <button class="btn-special" type="button" id="calculate_emi">{{ __('Calculate') }}</button>
                    </div>
                </div>
            </form>
        </div>

		<div class="col-md-6">
            <div class="wrapper"><h2 class="h2">{{ __('Break-up of Total Payment') }}</h2>
                <div class="contact-main">
                    <div id="payment_graph" style="max-height: 250px;"></div>
					<div class="contact-email" id="loan_emi"></div>
					<div class="contact-email" id="total_interest"></div>
					<div class="contact-email" id="total_payment"></div>
                </div>
            </div>
        </div>
		
    </div>
</div>
@php
$bankArr = [
	"Stanbic Bank"=>["url"=>"https://www.stanbicbank.co.ke/","img"=>"/storage/banks/Stanbic-Bank.png"],
	"Family Bank"=>["url"=>"https://familybank.co.ke/","img"=>"/storage/banks/Family-Bank.png"],
	"Prime Bank"=>["url"=>"https://www.primebank.co.ke/","img"=>"/storage/banks/Prime-Bank.png"],
	"I&M Bank"=>["url"=>"https://net.imbank.com/","img"=>"/storage/banks/I-M.png"],
	"KCB Bank"=>["url"=>"https://kcbgroup.com/","img"=>"/storage/banks/KCB.png"],
	"Co-operative Bank"=>["url"=>"https://www.co-opbank.co.ke/","img"=>"/storage/banks/Co-operative.png"],
	"Standard Chartered Bank"=>["url"=>"https://www.sc.com/ke/","img"=>"/storage/banks/Standard-Chartered.png"],
	"NCBA Bank"=>["url"=>"https://ke.ncbagroup.com/","img"=>"/storage/banks/NCBA.png"],
	"National Bank"=>["url"=>"https://www.nationalbank.co.ke/","img"=>"/storage/banks/National-Bank.png"],
	"Bank Of Africa Kenya"=>["url"=>"https://www.boakenya.com/","img"=>"/storage/banks/Bank-Of-Africa.png"],
	"Equity Bank"=>["url"=>"https://equitygroupholdings.com/","img"=>"/storage/banks/Equity-Bank.png"],
	"Diamond Trust Bank of Kenya"=>["url"=>"https://dtbk.dtbafrica.com/","img"=>"/storage/banks/Diamond-Trust.png"],
	"ABSA Bank"=>["url"=>"https://www.absabank.co.ke/personal/","img"=>"/storage/banks/ABSA.png"],
];
@endphp
<div class="container-fluid">
	<div class="padtop20">		
		<div class="row">
			<div class="col-sm-12">
				<h2>Our Bank Partners</h2>
				<p>Our bank partners have varying mortgage rates. Call your bank today for more detailed information on mortgage rates.</p>
			</div>
			@foreach($bankArr as $bank=>$info)
				<div class="col-sm-3 mb-5">
					<a href="{{$info['url']}}" target="_blank" title="{{ $bank }}"><img src="{{$info['img']}}" alt="{{ $bank }}">
					{{--<h4>{{ $bank }}</h4>--}}
					</a>
				</div>
			@endforeach				
		</div>
	</div>
</div>
