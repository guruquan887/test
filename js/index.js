/*gaotd 2012-12-14*/
$(function(){
	var yunx;       // 瀹氫箟鍔ㄧ敾鍙橀噺
	var Time = 8000;      // 鑷姩鎾斁闂撮殧鏃堕棿 姣
	var num = 1000;       // 鍒囨崲鍥剧墖闂撮殧鐨勬椂闂� 姣
	var page = 0;         // 瀹氫箟鍙橀噺
	var len = $( ".zfb_datu_ul li" ).length;     // 鑾峰彇鍥剧墖鐨勬暟閲�
	$( ".zfb_datu_ul li" ).css( "opacity", 0 );   // 璁剧疆鍏ㄩ儴鐨勫浘鐗囬€忔槑搴︿负0
	$( ".zfb_datu_ul li:first" ).css( "opacity", 1 ); // 璁剧疆榛樿绗竴寮犲浘鐗囩殑閫忔槑搴︿负1
	function fun(){      // 灏佽
		$( ".xiaod_div span" ).eq( page ).addClass( "a_active" ).siblings().removeClass( "a_active" );       // 鍒囨崲灏忕偣
		$( ".zfb_datu_ul li" ).eq( page ).animate({ "opacity" : 1 }, num ).siblings().animate( { "opacity" : 0 }, num );     // 鍒囨崲鍥剧墖
	}
	function run(){         // 灏佽
		if( !$(".zfb_datu_ul li" ).is( ":animated" )){    // 鍒ゆ柇li鏄惁鍦ㄥ姩鐢�
			if( page == len - 1 ){ // 褰撳浘鐗囧垏鎹㈠埌浜嗘渶鍚庝竴寮犵殑鏃跺€�
				page = 0;    // 鎶妏age璁剧疆鎴�0 鍙堥噸鏂板紑濮嬫挱鏀惧姩鐢�
				fun();
			}else{     // 缁х画鎵ц涓嬩竴寮�
				page++;
				fun();
			}
		}
	}
	$(".xiaod_div span").click( function(){  // 鐐瑰嚮灏忕偣
		if( !$( ".zfb_datu_ul li" ).is( ":animated" ) ){   // 鍒ゆ柇li鏄惁鍦ㄥ姩鐢�
			var index = $( ".xiaod_div span" ).index( this );   // 鑾峰彇鐐瑰嚮灏忕偣鐨勪綅缃�
			page = index;    // 鍚屾浜巔age
			fun();
		}
	});
	$( ".zhifub" ).hover( function(){    // 榧犳爣鏀句笂鍘诲浘鐗囩殑鏃跺€欐竻闄ゅ姩鐢�
		clearInterval( yunx );
	}, function(){     // 榧犳爣绉诲紑鍥剧墖鐨勬椂鍊欏張寮€濮嬫墽琛屽姩鐢�
		yunx = setInterval( run, Time );
	}).trigger( "mouseleave" );
	
	// 鐧诲綍妗�
	$( "#bg_bno" ).css( { "width" : $( "#bg_bno1" ).width(), "height" : $( "#bg_bno1" ).height() + 20, "opacity" : "0.3" } );    
	$( "#bg_bno1 h3 span" ).css( { "opacity" : 0.6 } );
	$( ".btn_dengl" ).hover(function(){
		$( this ).addClass( "btn_d1" );
	},function(){
		$( this ).removeClass( "btn_d1" );
	});
	$( "#bg_bno1 h3 span" ).click(function(){
		$( this ).addClass( "h3_span" ).siblings().removeClass( "h3_span" );
		if( $( "#bg_bno1 h3 span:first" ).hasClass( "h3_span" ) ){
			$( "#sui_a" ).show();
		}else{
			$( "#sui_a" ).hide();
		}
	});
});














































