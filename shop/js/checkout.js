/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

;(function($){
    var $chooseTable = $('#choose-table'),
        $zoneInputs = $chooseTable.find('.zone-input'),
        $quantityInputs = $chooseTable.find('.quantity-input'),
        $ticketsInputs = $chooseTable.find('.tickets-input'),
        $subtotalInputs = $chooseTable.find('.input-subtotal'),
        $total = $('#total');

    $zoneInputs.change(function(){
        var _row = $(this).closest('tr').attr('id');
        calcSubTotal(_row);
        calcTotal();
    });

    $quantityInputs.on('input', function(){
        var _row = $(this).closest('tr').attr('id');
        calcSubTotal(_row);
        calcTotal();
    });


    function calcSubTotal(row) {
        var _$zoneInput = $('#'+row).find('.zone-input'),
            _$zoneSelected = $('option:selected', _$zoneInput),
            _remain = _$zoneSelected.attr('remain'),
            _$quantityInput = $('#'+row).find('.quantity-input'),
            _quantity = _$quantityInput.val(),
            _$price = $('#'+row).find('.input-price'),
            _price = parseFloat(_$price.html().substr(1)),
            _$subtotal = $('#'+row).find('.input-subtotal'),
            _result = '',
            _error = false;

        if (_quantity % 1 !== 0 ) {
            _result = 'Please provide valid input';
            _error = true;
        } else if(_quantity > parseInt(_remain)) {
            console.log(_quantity);
            console.log(_remain);
            _result = 'Sorry, exceed maximum quantity';
            _error = true;
        } else {
            _result = '$' + _quantity * _price;
        }

        _$subtotal.html(_result);
        if (_error) {
            _$quantityInput.addClass('error');
            _$subtotal.addClass('error');
        }

    }

    function calcTotal() {
        var total = 0,
            subtotal = 0;
        $subtotalInputs.each(function(){
            subtotal = parseFloat($(this).html().substr(1));
            if (!isNaN(subtotal)) {
                total += subtotal;
            }

        });

        $total.html('$' + total);
        $total.siblings('input').val(total);
    }

})(jQuery);