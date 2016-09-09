
<!--------------------------------------------------------------------------------СОДЕРЖИМОЕ СТРАНИЦЫ-------------------------------------------------------------------------------->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Oplata.info</title>
<!-- meta name="viewport" content="width=800, user-scalable=no" / -->
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta name="google" content="notranslate" />
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8" />
<meta name="viewport" content="width=device-width"/>
<link href="favicon.ico" rel="SHORTCUT ICON" />

<link rel="stylesheet" type="text/css" href="../css/default.css" />
<link rel="stylesheet" type="text/css" href="../css/styles.css" />
<link rel="stylesheet" type="text/css" href="../css/dd.css?rnd=123456" />
<link rel="stylesheet" type="text/css" href="../css/jquery.qtip.css" />

<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.truemodal.js"></script>
<script type="text/javascript" src="../js/jquery.dd.min.js"></script>
<script type="text/javascript" src="../js/jquery.qtip.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript" src="https://seal.networksolutions.com/siteseal/javascript/siteseal.js"></script>
<script type="text/javascript" src="../js/lang-ru-RU.js?31.01.2014-0"></script>

<script async src="//ulogin.ru/js/ulogin.js"></script>

<script type="text/javascript">
	function setFocus() {
		if (!(window.location.hash)) {
			if (document.getElementById('Phone')!=null) document.getElementById('Phone').focus();
			else if (document.getElementById('CardNum')!=null) document.getElementById('CardNum').focus();
			else if (document.getElementById('Email')!=null) document.getElementById('Email').focus();
		}
	}
	function ChangeLang(lang) {
		var regexp = new RegExp('lang=[a-zA-Z\-]*');
		window.location.href = (regexp.test(window.location.href) 
			? window.location.href.replace(regexp, 'lang=' + lang) 
			: window.location.href + (/\?/.test(window.location.href) ? '&' : '?') + 'lang=' + lang
		);
	}

	$(document).ready(function(e) {
			
	
		try {$("body select").msDropDown();} 
		catch(e) {alert(e.message);}

		$('.hasTooltip').each(function() { // Notice the .each() loop, discussed below
		    $(this).qtip({
		        content: {
		            text: $(this).next('div') // Use the "div" element next to this for the content
		        },
				position: {
				    target: 'mouse', // Position it where the click was...
				    adjust: {x:12, y:12},
				    my: 'top left',
				    at: 'bottom right'
			    },
			    style: {
					 classes: 'qtip-bootstrap',
					 tip: {corner: true, mimic: false, width: 8, height: 8, border: true, offset: 0}
				}
		    });
		});
		
	});	
</script>

<script src='https://www.google.com/recaptcha/api.js?hl=ru'></script>

</head>

<body>

<div class="align_center">

	<div class="pagediv_oplata">
		<div style="text-align:right; margin-bottom:10px;"><a style="font-size:12px;" href="../info/purchases.asp?lang=ru-RU" target=_blank>Мои покупки</a>&nbsp;&nbsp;&nbsp;<a style="font-size:12px;" href="../info/promo.asp?lang=ru-RU" target=_blank>Промо-коды</a>&nbsp;&nbsp;&nbsp;<a style="font-size:12px;" href="../gifts/card_new.asp?lang=ru-RU" target=_blank>Подарочные карты</a></div>
		
		<div class="lang">
			
				<h1>
				Выберите способ оплаты
				</h1>
			

			<form id="form_lang" method=GET>
			<select id="Lang" name="Lang" style="width:70px;font-size:12px;background-color:#FFF;" onchange="ChangeLang($('#Lang').val())">
				<option value="ru-RU" data-image="images/flag_RU.png" selected>Ru</option>
				<option value="en-US" data-image="images/flag_EN.png" >En</option>
			</select>
			</form>
		</div>
		<div class="maindiv">
			
			<div class="innerdiv">
			
			<div class="ssl_seal"></div>
			

		<!--БЛОК С НАЗВАНИЕМ-->
		
		<div class=row2div>
			<div class=product_name>
					
					<span style="font-size:20px;" title="CS GO (Counter-Strike: Global Offensive)">CS GO (Counter-Strike: Global Offensive)</span>
				
			</div>

			
		</div>

		<!--/БЛОК С НАЗВАНИЕМ-->

		<!--БЛОК С ЦЕНОЙ-->
				<div class=row_separator></div>
		<div class=row2div>
			<div class="goods_price" id="goods_price">
				595.00<span style=font-size:14px>&nbsp;RUB</span>
				
			</div>
		</div>
		
		<div style="font-size:11px;color:#B2B2B2;height:11px;">
		
		</div>
		
		<div class=row_separator><small><small></small></small></div>
		
		<!--/БЛОК С ЦЕНОЙ-->

		<!--БЛОК С АДРЕСОМ ДОСТАВКИ-->
		
		<!--/БЛОК С АДРЕСОМ ДОСТАВКИ-->

		<!--БЛОК СО СПОСОБАМИ ОПЛАТЫ-->
		<div class=row_separator></div>
	
			<form name=fMethods id=fMethods action="?id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http%3A%2F%2Fsteam%2Daccount%2Eru%2Foplata%2Ephp%3Fid%3D1953054" method=POST>
			
			<span style="color:#0065CB;">способ оплаты:</span>&nbsp;<select name=TypeCurr id=TypeCurr style="width:260px;" onChange="$('#Currency').val($(this).val());$('#fMethods').submit();"><option option_curr value="WMR" selected>WebMoney</option><option option_curr value="RCC" >Банковская карта</option><option  value="BTC" >Bitcoin</option><option  value="QSR" >QIWI</option><option  value="PCR" >Яндекс.Деньги</option><option  value="MTS" >МТС</option><option  value="BLN" >Билайн</option><option option_curr value="RUB" >Терминалы</option><option  value="BNK" >Интернет-банкинг</option><option  value="PRR" >Почта России</option><option option_curr value="PPR" >WM-карта</option><option option_curr value="GCR" >Подарочная карта</option></select><select name=TypeCurrAdd id=TypeCurrAdd class=currency_pay_select style="width:64px;margin-left:2px;" onChange="$('#Currency').val($(this).val());$('#fMethods').submit();"><option value="WMR" selected>RUB</option><option value="WMZ">USD</option><option value="WME">EUR</option><option value="WMU">UAH</option></select>
			<input type=hidden name=Currency id=Currency value="">
			</form>
			
	
	<div class=row_separator></div>
	
	
		<div class=row1div style="font-size:0;z-index:100">
		
						
					<a class="currLink  currLinkSelected" href="?currency=WMR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="WebMoney"><div class="pm-WMU"><img src=images/pm/WMU_active.png width=36 height=36 border=0></div></a>
						
					
						
					<a class="currLink " href="?currency=RCC&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Банковская карта"><div class="pm-ECC"></div></a>
						
					
						
					<a class="currLink " href="?currency=BTC&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Bitcoin"><div class="pm-BTC"></div></a>
						
					
						
					<a class="currLink " href="?currency=QSR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="QIWI"><div class="pm-QSR"></div></a>
						
					
						
					<a class="currLink " href="?currency=PCR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Яндекс.Деньги"><div class="pm-PCR"></div></a>
						
					
						
					<a class="currLink " href="?currency=MTS&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="МТС"><div class="pm-MTS"></div></a>
						
					
						
					<a class="currLink " href="?currency=BLN&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Билайн"><div class="pm-BLN"></div></a>
						
					
						
					<a class="currLink " href="?currency=RUB&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Терминалы"><div class="pm-GRN"></div></a>
						
					
						
					<a class="currLink " href="?currency=BNK&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Интернет-банкинг"><div class="pm-BNK"></div></a>
						
					
						
					<a class="currLink " href="?currency=PRR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Почта России"><div class="pm-PRR"></div></a>
						
					
						
					<a class="currLink " href="?currency=PPR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="WM-карта"><div class="pm-PPU"></div></a>
						
					
						
					<a class="currLink " href="?currency=GCR&id_d=1953054&id_po=0&cart_uid=&ai=162527&lang=ru-RU&failpage=http://steam-account.ru/oplata.php?id=1953054" title="Подарочная карта"><div class="pm-GCU"></div></a>
						
					
		</div>
	
		<!--/БЛОК СО СПОСОБАМИ ОПЛАТЫ-->
		
	    <!--ВОПРОСЫ-->
		<div class="helpdiv">
			
			<!--WebMoney-->
				<!--весь этот блок дублируем в "pay_robo.asp", "pay_wm.asp", "pay_x20.asp"-->
				<table width=100% cellpadding="0" cellspacing="0" border="0"><tr>				
				<td><div class=helptopic><a class=link href="http://start.webmoney.ru/" target=_blank>Как зарегистрироваться в WebMoney?</a></div></td>
                <td><div class=helptopic><a class=link href="http://www.webmoney.ru/rus/addfunds/wmr/index.shtml" target=_blank>Как пополнить свой WMR-кошелёк?</a></div></td>
				</tr>
                <!--<tr>
				<td><div class=helptopic><a class=link href="http://geo.webmoney.ru/wmobjects/" target=_blank>Территория WebMoney</a></div></td>
				<td><div class=helptopic><a class=link href="http://www.webmoney.ru/rus/about//" target=_blank>Что такое WebMoney?</a></div></td>
				</tr>-->
                </table>
				<!--/весь этот блок дублируем в "pay_robo.asp", "pay_wm.asp", "pay_x20.asp"-->
			<!--/WebMoney-->
			
		</div>
		<!--/ВОПРОСЫ-->

		<!--ФОРМА ВВОДА ПРОМОКОДА-->
		
		
			<div class=row_separator></div>
			<div class=promodiv>
			<form method=POST>
				<div><nobr><b>У вас есть промо-код?</b> Значит, вы сможете купить товар дешевле!</nobr></div>
				
				<div style="margin-top:7px;"><nobr>Промо-код:&nbsp;
					<input type="text" maxlength="16" style="width:170px;padding:2px;" name="promocode" value="" >&nbsp;
					<input type=submit name=button_promo_check style="width:120px;margin-top:5px;" value="Проверить" >&nbsp;
					
						<input type=submit name="button_promo_use" style="width:120px;margin-top:5px;color:#B2B2B2;" value="Применить" disabled>
					
				</nobr></div>
				
				<input type="hidden" name="country" value=""> <!--для pay_sma.asp-->
				<input type="hidden" name="operator" value=""> <!--для pay_sma.asp-->
			</form>
			</div>

		
		<!--/ФОРМА ВВОДА ПРОМОКОДА-->
				
		<!--ФОРМА РАСЧЕТА СКИДКИ-->
		
		<!--/ФОРМА РАСЧЕТА СКИДКИ-->

	    <!--КОММЕНТАРИИ-->
	    
		<!--/КОММЕНТАРИИ-->

		<div class=row_separator></div>
		<div class=row1div>
			<form name=PayWM method=POST>

			

			<div class=row_separator></div>
			<!--<div class=commentdiv>Пожалуйста, укажите свой действующий email для доставки товара:</div><div class=row_separator></div>-->
					
			<table cellpadding="0" cellspacing="0" border="0"><tr>
			<td align=left style="padding:2px;" nowrap><span style="color:#0065CB;">Email:</span>&nbsp;</td>
			<td align=left style="padding:2px;">
<input placeholder="Ваш email" type="email" class="email_text" name="Email" id="Email" value="nort@ya.ru" required="required" style="border:1px solid #999999;">
</td>
			
			</tr></table>
			
			<div class=row_separator_line></div>
			<div class=div_button_pay>
				<input type=hidden name=oper value=next>
				<input id="btn_next" name="btn_next" type="submit" class="btn btn_blue" value="Продолжить" title="">
			</div>
			
			</form>
						
			<form name=NotPay action="" method=POST>
			<div class=div_button_cancel>
				<input type=hidden name=oper value=back>
				<!--<input type="submit" class="btn btn_red" value="Вернуться" title="">-->
<div style="text-align:center;"><a style="font-size:14px;" href="http://steam-account.ru/oplata.php?id=1953054">Отказаться от оплаты</a><div style="font-size:11px;text-align:center;color:#777;">и вернуться в магазин</div></div>
			</div>
			</form>
		</div>
	
					</div>
		</div>
	</div>
	
	<div class="pagediv_oplata_bottom">
		<div style="position:relative; float:left; width:675px;"><b>Oplata.Info</b> — сервис по приему платежей с одновременной передачей оплаченного товара или услуги.<br><a href="http://digiseller.ru/outside/check.asp" target=_blank>Подключиться прямо сейчас!</a></div>
		<div style="position:relative; float:right; width:125px;"><script language="JavaScript" type="text/javascript"> SiteSeal("https://www.oplata.info/images/netsolsiteseal.png", "NETSB", "none");</script></div>
	</div>
	
</div>

<br />
<br />
<br />
<br />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-744872-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>


