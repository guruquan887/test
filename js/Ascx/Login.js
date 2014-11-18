//if (nameuser == "") {
//    $("#topLoginOut").hide();
//    $("#topLoginIn").show();
//} else {
//    $("#topLoginOut").show();
//    $("#topLoginIn").hide();

//}

//$(document).keydown(function () {
//    var event = BEvent();
//    var btn = $("#btnLogin");
//    if (event.keyCode == 13) {
//        if ($("#txtLoginName").val().Trim() != "") {
//            btn.click();
//            event.returnValue = false;
//        }
//    }
//});


function OnLoginSubmit(btn) {
    var username = $("#txtLoginName");
    var pass = $("#txtLoginPassword");
    var validate = $("#txtValidate");
    var RembPassword = $("#chbRembPassword").attr("checked");

    if (username.val().Trim() == "账 号") {
        $('#logintable').messagebox('请输入您的登录帐号', '', 0, 1000);
        return;
    }
    if (pass.val().Trim() == "") {
        $('#logintable').messagebox('请输入密码', '', 0, 1000);
        return;
    }
    if (validate.val().Trim() == "") {
         $('#logintable').messagebox('请输入验证码', '', 0, 1000);
        return;
    }
 
 
    $("#spanLoading").html("<img src='/Images/System/smallloading.gif' width='16' height='16' style='float:none;margin:2px;' />&nbsp;登录中..");
    $(btn).css("display", "none");

    $.post(
					"/Members/MembersHandler.ashx?action=loginnoval&x=" + Math.random(),
					{
					    username: username.val().Trim(),
					    password: pass.val().Trim(),
					    validate: validate.val().Trim(),
					    rembpass: RembPassword
					},
					function (data) {
					    if (data == "success") {
					        $("#spanLoading").remove();
					        $("#topLoginOut").show();
					        $("#topLoginIn").hide();
					        //  $("#lblNameUser").innerHTMl = '<%=topName%>';
					        // location.href = location.href;
					        history.go(0);
					    }
					    else {
					        $(btn).css("display", "inline");
					        $("#spanLoading").remove();
					        $("#imgValidate").attr("src", "/Public/Validate.ashx?t="+Math.random());
					        $('#logintable').messagebox(data, '', 0, 1000);
					    }
					}
				);
	}

	function OnLoginSubmitDialog(btn) {
	    var username = $("#txtUserNameDialog");
	    var pass = $("#txtPasswordDialog");

	    if (username.val().Trim() == "") {
	        alert("请输入您的登录帐号。");
	        return;
	    }
	    if (pass.val().Trim() == "") {
	        alert("请输入密码。");
	        return;
	    }

	    $("#spanLoadingDialog").html("<img src='/Images/System/smallloading.gif' width='16' height='16' style='float:none;margin:2px;' />&nbsp;登录中..");
	    $(btn).css("display", "none");

	    $.post(
					"/Members/MembersHandler.ashx?action=loginDialog&x=" + Math.random(),
					{
					    username: username.val().Trim(),
					    password: pass.val().Trim()
					},
					function (data) {
					    if (data == "success") {
					        $("#UserLoginDialog").hide();
					        history.go(0);
					    }
					    else {
					        $(btn).css("display", "inline");
					        $("#spanLoadingDialog").remove();
					        alert(data);
					    }
					}
				);
	}

//只能输入数字
function KeyPressNum(obj, evt) {
	var key = window.event ? evt.keyCode : evt.which;
	if (key < 27 || key > 128) return true; //如果输入的是功能按键，则不限制
	else if (key >= 48 && key <= 57) return true;
	else
	    return false;
}


var returnurl = '';
var messagebox_timer;

$.fn.messagebox = function (message, url, type, delay) {
    clearTimeout(messagebox_timer);
    $("#msgprint").remove();
    var m_body = $(this), timer = false; delay = (typeof delay == "undefined" ? 5000 : delay); returnurl = url;
    var box_style = 'position:absolute;display:none;z-index:1000;padding:10px 30px 10px 40px;';
    switch (type) {
        case 1: box_style += 'border:1px solid Green;color:#090;background:url(/images/web/ok.png) 10px 10px no-repeat #F1FEF2;';
            break;
        case 0: box_style += 'border:1px solid Red;color:#EE1010;background:url(/images/web/error.png) 10px 10px no-repeat #FDF8E8;background-color:#FEEFB3';
            break;
        default: box_style += 'border:1px solid Orange;color:Orange;background:url(/images/web/warning.png) 10px 10px no-repeat #FEFDE9;';
            break
    }
    var str = "<div id=\"msgprint\" style=\"" + box_style + "\">" + message + "</div>";
    m_body.append(str);

    var dom_obj = document.getElementById("msgprint");
    var ext_width = $("#msgprint").width();
   // dom_obj.style.top = (document.documentElement.scrollTop + (document.documentElement.clientHeight - dom_obj.offsetHeight - $("#msgprint").height()) / 2) + "px";
  //  dom_obj.style.left = (document.documentElement.scrollLeft + (document.documentElement.clientWidth - dom_obj.offsetWidth - $("#msgprint").width()) / 2) + "px";
    $("#msgprint").fadeIn(1000, function () { messagebox_timer = setTimeout(messagebox_out, delay) })
};

function messagebox_out() {
    if (returnurl == undefined || returnurl == '') {
        $("#msgprint").fadeOut(1000)
    }
    if (returnurl == "back") {
        this.history.back(-1)
    }
    else if (returnurl != "" && returnurl != undefined) {
        this.location.href = returnurl
    }
}