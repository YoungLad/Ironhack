// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){
	var total = 10;

			$('.pep, .mushroom, .green-pepper').toggle()

	$('strong').text('$'+total)
	$('.btn-pepperonni').click(function(){
		$('.pep').toggle(9000);
			$('.btn-pepperonni').toggleClass('active');

				if ($('.btn-pepperonni').hasClass('active')){
					total += 1;
					$('strong').text('$'+total);
				}
				else {
					total -= 1;
					$('strong').text('$'+total); 
				}

	});


	$('.btn-mushrooms').click(function(){
		$('.mushroom').toggle(9000);
			$('.btn-mushrooms').toggleClass('active');

			if ($('.btn-mushrooms').hasClass('active')){
					total += 1;
					$('strong').text('$'+total);
				}
				else {
					total -= 1;
					$('strong').text('$'+total); 
				}


	});


	$('.btn-green-peppers').click(function(){
		$('.green-pepper').toggle(9000);
				$('.btn-green-peppers').toggleClass('active');

						if ($('.btn-green-peppers').hasClass('active')){
					total += 1;
					$('strong').text('$'+total);
				}
				else {
					total -= 1;
					$('strong').text('$'+total); 
				}
	});



	$('.btn-sauce').click(function(){
		$('.sauce').toggleClass('sauce-white');
		$('.btn-sauce').toggleClass('active');

		if ($('.btn-sauce').hasClass('active')){
					total += 3;
					$('strong').text('$'+total);
				}
				else {
					total -= 3;
					$('strong').text('$'+total); 
				}

	});



	$('.btn-crust').click(function(){
		$('.crust').toggleClass('crust-gluten-free');
				$('.btn-crust').toggleClass('active');

					 if ($('.btn-crust').hasClass('active')){
					total += 5;
					$('strong').text('$'+total);
				}
				else {
					total -= 5;
					$('strong').text('$'+total); 
				}

	});
});

