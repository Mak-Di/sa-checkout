(function () {
    $( document ).ready(function() {
        $('li.item').click(function () {
            $('li.item').removeClass('active');
            $(this).addClass('active');
            var currency = $(this).children('span.item-name').data('currency');
            var price = $('#prices').data('price-' + currency.toLowerCase());
            var payment_tax = $(this).children('span.item-name').data('payment_tax');
            var discount = $('#discount').data('discount');
            var total = (price + (price * (payment_tax / 100)));
            var with_discount = (price - (price * (discount / 100)));
            with_discount = (with_discount + (with_discount * (payment_tax / 100)));
            $('td.item-reg-price > span > span.amount').html(Math.ceil(total));
            $('#discount > span.amount').html(Math.ceil(with_discount));
        });

        $('.input-steam').change(function () {
            $.ajax({
                'url': '/checkout/get-discount',
                'method': 'post',
                data: {
                    'email': $(this).val(),
                    'digisellerId': $('input[name="id_goods"]').val()
                },
                success: function (response) {
                    var discountPrice = $('#prices').data('price-rub');
                    if (response.discountPrice > 0) {
                        discountPrice = response.discountPrice;
                    }
                    if ($('li.item.active').length == 1) {
                        var payment_tax = $('li.item.active').children('span.item-name').data('payment_tax');
                        discountPrice = discountPrice + (discountPrice * (payment_tax / 100));
                    }
                    $('#discount > span.amount').html(Math.ceil(discountPrice));
                    $('#discount').data('discount', response.discount);
                }
            });
        })
    });
})();