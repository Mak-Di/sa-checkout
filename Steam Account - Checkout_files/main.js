function checkmail() {
    var reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:.[a-z0-9!#$%&*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
        
    if (!$('#notice_mail').val().match(reg)) {
        alert("Введен некорректный e-mail"); 
        $('#notice_mail').val('');
        return false;
    }
    return true; 
}

function checkMailAndPhone() {
    var reg_mail = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:.[a-z0-9!#$%&*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
    var reg_phone = /^((8|\+7)[\- ]?)?(\(?\d{3,4}\)?[\- ]?)?[\d\- ]{5,10}$/;

    var email_and_phone = $('#notice_mail_phone').val();


    if (!email_and_phone.match(reg_mail) && !email_and_phone.match(reg_phone)) {
        alert("Введен некорректный e-mail или телефон");
        $('#notice_mail_phone').val('');
        return false;
    }
    return true;
}


function PopupCenter(pageURL, title,w,h) {
    var left = (screen.width/2)-(w/2);
    var top = (screen.height/2)-(h/2);
    var targetWin = window.open (pageURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
} 


var timestamp = 0;
var first = true;
$(document).ready(function() {
    
    $.each($('.alert_msg'), function(i, val){
        alert($(val).val());
    });
    
    $("#subm").mouseenter(function() 
    { 
        $(this).find('.submenu').show();
    });
    $("#subm").mouseleave(function() 
    { 
        $(this).find('.submenu').hide();
    });
    
    $("#subm2").mouseenter(function() 
    { 
        $(this).find('.submenu').show();
    });
    $("#subm2").mouseleave(function() 
    { 
        $(this).find('.submenu').hide();
    });

    $("#pay_btn").mouseenter(function() 
    { 
        $(this).find('.payments').show();
    });
    $("#pay_btn").mouseleave(function() 
    { 
        $(this).find('.payments').hide();
    });
    $("#searchid").keyup(function() 
    { 
        //clearTimeout(timeoutID);
        //var timeoutID = setTimeout(function(){
        var searchid = $("#searchid").val();
        if(searchid!='') {
            var dataString = 'query='+ searchid;
            $.ajax({
                type: "POST",
                url: "/live_search",
                data: dataString,
                cache: false,
                success: function(html)
                {
                    $("#result").html(html).show();
                    //clearTimeout(timeoutID);
                }
            }); 
        } 
        return false;            
        //},2000);    
    });
    
    $('html').click(function() { 

        jQuery("#result").fadeOut(); 
	
    });
    
    
    //последняя покупка

                                            
    var diff = 0;
    var last_timing = 10;
    var first = true;
                
    function update_sale(){     

    }
                
    function update_diff(){
        var min = diff / 60 | 0;
        var sec = diff - min * 60;
                    
        if(min < 10) 
            min = "0" + min;
        if(sec < 10) 
            sec = "0" + sec;
                    
        $('#last_time').html(min + " мин. " + sec + " сек. назад");
    }
                
    var upd = function() {  
	
        $.ajax({
            //                        url: "/test.php?date=" + (new Date().getTime()), 
            //cach
            url: "/last_sale.html?date=" + (new Date().getTime()),
            async: true,
            success: function (data) { 
                data = jQuery.parseJSON(data);   
                if (timestamp != data['timestamp']){
                    timestamp = data['timestamp'];
                    if (first)
                        diff = ((new Date().getTime())/1000).toFixed(0) - /*js_ts_diff -*/ timestamp + 7200;
                    else{
                        diff = -1;
                        $('#last_sale').css('visibility', 'hidden');
                    }
                    //                    first = false;
                    var img = '<a href="' + $(data['message']).find('a').attr('href') + '"><img title="' + data['title'] + '" alt="" style="padding-left: 8px;" width="200" height="93" src="' + data['image'] + '" /></a>';
                    $('#last_sale').html(img + data['message'] + '<span id="last_time"></span>');
                    last_timing = 0;
                    update_diff();
                }
            }
        });                                        
    };
   // upd();
   // setInterval(upd, 10000);
    setInterval(
        function() {     
            if (last_timing == 0){
                if(!first)
                    $('#last_sale').css('visibility', 'hidden');
                else
                    first = false;
            }
                    
            if (last_timing >= 1){
                $('#last_sale').css('visibility', 'visible');
            //                console.log(last_timing);
            }
            
                
            diff++;
            last_timing++;
            update_diff();                    
        }, 
        1000
        );
});

//$(document).ready(function() {
//    $(".fancybox-thumb").fancybox({
//        prevEffect	: 'none',
//        nextEffect	: 'none',
//        helpers	: {
//            title	: {
//                type: 'outside'
//            }   
////            thumbs	: {
////                width	: 50,
////                height	: 50
////            }
//        }
//    });
//});
