(function () {
    $( document ).ready(function() {
        $(".more").toggle(function(){
            $(this).text("Свернуть");
            $(".complete").show();
        }, function(){
            $(this).text("Читать далее...");
            $(".complete").hide();
        });
    });
})();