/*
var sUrl = "http://www.ylz.com";
var sName = "ylz";


try {
var WshShell = new ActiveXObject("WScript.Shell");
var oUrlLink = WshShell.CreateShortcut(WshShell.SpecialFolders("Desktop") + "//" + sName + ".url");
oUrlLink.TargetPath = sUrl;
oUrlLink.Save();
} catch (e) {
alert("当前浏览器不支持该操作！");
}
*/

/*滚动插件*/
(function ($) {
    $.fn.extend({
        slide: function (opt, callback) {
            //定义变量
            if (!opt) var opt = {};
            var timerID;
            var btnLeft = $("#" + opt.left); //向左按钮
            var btnRight = $("#" + opt.right); //向右按钮
            var _this = this.find("ul");
            liW = opt.li_w//参数：每个li的宽度（包括border,margin,padding,都要算进去）
            li_size = opt.li_size ? parseInt(opt.li_size, 10) : parseInt(this.width() / liW, 10)  //每次滚动的个数，默认为一屏，即父容器宽度
            speed = opt.speed ? parseInt(opt.speed, 10) : 500; //滚动速度，数值越大，速度越慢（毫秒）
            timer = opt.timer //?parseInt(opt.timer,10):3000; //滚动的时间间隔（毫秒）
            if (li_size == 0) { li_size = 1 };
            var leftW = 0 - li_size * liW;
            //向左滚动函数
            function scrollLeft() {
                btnLeft.unbind("click", scrollLeft); //滑动时先取消点击滑动事件
                btnRight.unbind("click", scrollRight);
                _this.animate({
                    marginLeft: leftW
                }, speed, function () { //参数"easeOutExpo"不需要可以删掉，需要的话必选先加载"easing.js"文件
                    for (i = 1; i <= li_size; i++) {
                        _this.find("li:first").appendTo(_this);
                    }
                    _this.css({ 'margin-left': 0 });
                    btnLeft.bind("click", scrollLeft); //滑动结束后绑定按钮的点击事件
                    btnRight.bind("click", scrollRight);
                });
            }
            //向右滚动函数
            function scrollRight() {
                btnLeft.unbind("click", scrollLeft);
                btnRight.unbind("click", scrollRight);
                for (i = 1; i <= li_size; i++) {
                    _this.find("li:last").prependTo(_this);
                }
                _this.css({ 'margin-left': leftW });
                _this.animate({
                    marginLeft: 0
                }, speed, function () {
                    btnLeft.bind("click", scrollLeft);
                    btnRight.bind("click", scrollRight);
                });
            }
            //自动播放
            function autoPlay() {
                if (timer)
                    timerID = window.setInterval(scrollLeft, timer);
            };
            //停止自动播放
            function autoStop() {
                if (timer)
                    window.clearInterval(timerID);
            };
            //鼠标事件绑定
            _this.hover(autoStop, autoPlay).mouseout() //加载完成后自动开始
            btnLeft.click(scrollLeft).hover(autoStop, autoPlay); //向左鼠标事件绑定
            btnRight.click(scrollRight).hover(autoStop, autoPlay); //向右鼠标事件绑定
        }
    })
})(jQuery);

(function ($) {
    $.fn.WIT_SetTab = function (iSet) {
        /*
        * Nav: 导航钩子；
        * Field：切换区域
        * K:初始化索引；
        * CurCls：高亮样式；
        * Auto：是否自动切换；
        * AutoTime：自动切换时间；
        * OutTime：淡入时间；
        * InTime：淡出时间；
        * CrossTime：鼠标无意识划过时间
        * Ajax：是否开启ajax
        * AjaxFun：开启ajax后执行的函数
        */
        iSet = $.extend({ Nav: null, Field: null, K: 0, CurCls: 'cur', Auto: false, AutoTime: 5000, OutTime: 600, InTime: 600, CrossTime: 100 }, iSet || {});
        var acrossFun = null, hasCls = false, autoSlide = null;
        //切换函数
        function changeFun(n) {
            iSet.Field.filter(':visible').fadeOut(iSet.OutTime, function () {

            });
            iSet.Field.eq(n).fadeIn(iSet.InTime).siblings().fadeOut(iSet.OutTime);
            iSet.Nav.eq(n).addClass(iSet.CurCls).siblings().removeClass(iSet.CurCls);
        }
        //初始高亮第一个
        changeFun(iSet.K);
        //鼠标事件
        iSet.Nav.hover(function () {
            iSet.K = iSet.Nav.index(this);
            if (iSet.Auto) {
                clearInterval(autoSlide);
            }
            hasCls = $(this).hasClass(iSet.CurCls);
            //避免无意识划过时触发
            acrossFun = setTimeout(function () {
                //避免当前高亮时划入再次触发
                if (!hasCls) {
                    changeFun(iSet.K);
                }
            }, iSet.CrossTime);
        }, function () {
            clearTimeout(acrossFun);
            //ajax调用
            if (iSet.Ajax) {
                iSet.AjaxFun();
            }
            if (iSet.Auto) {
                //自动切换
                autoSlide = setInterval(function () {
                    iSet.K++;
                    changeFun(iSet.K);
                    if (iSet.K == iSet.Field.size()) {
                        changeFun(0);
                        iSet.K = 0;
                    }
                }, iSet.AutoTime)
            }
        }).eq(0).trigger('mouseleave');
    }
})(jQuery);



//选项卡切换
            jQuery(function () {
                jQuery("#NewsTab li").mouseover(function () {
                    var index_tab = jQuery(this).parent().children().index(jQuery(this)); //选项卡的索引值     
                    jQuery(this).parent().find(".tzy_ing_2").removeClass("tzy_ing_2"); //选项卡背景处理
                    jQuery(this).removeClass("tzy_ing_2").addClass("tzy_ing_2");

                    var content_obj = $(".tzy_main_2_main3")  //内容节点
                    content_obj.hide();
                    content_obj.eq(index_tab).show();
                });
            });


 (function ($) {
            $.fn.myScroll = function (options) {
                //默认配置
                var defaults = {
                    auto: [false, 3000],
                    //是否自动滚动,第二个参数是自动滚动是切换的间隔时间
                    visible: 4,
                    //可显示的数量
                    speed: 1000,
                    //动画时间，可选slow，fast，数值类
                    scroll: 1 //每次切换的个数,此数小于等于visible值
                };

                var opts = $.extend({}, defaults, options);
                opts.scroll = opts.scroll > opts.visible ? opts.visible : opts.scroll;

                this.each(function (i) {

                    var prevBtn = $("#rightSlideButton"),
              nextBtn = $("#leftSlideButton"),
              block = $(this).find("div.myBlock"),

              innerBlock = block.find("ul"),
              list = block.find('ul>li'),
              listNum = list.size(),
              listWidth = list.width(),
              blockWidth = listWidth * opts.visible,
              ntervalId;

                    //设置宽度样式
                    $(this).width(blockWidth + prevBtn.width() + nextBtn.width());
                    block.width(blockWidth).find("ul").width(listWidth * listNum);

                    //获取已滚动个数

                    function getSnum() {
                        return (parseInt(innerBlock.css("margin-left")) * -1) / listWidth;
                    }

                    //获取滚动的距离
                    function getMove(c) {
                        return c >= opts.scroll ? opts.scroll * listWidth : c * listWidth;
                    }

                    //单击向前按钮
                    prevBtn.click(function () {
                        var snum = getSnum(),
                    c = listNum - snum - opts.visible,
                    m = getMove(c);

                        if (listNum - snum > opts.visible) {
                            innerBlock.animate({ "margin-left": "-=" + m }, opts.speed);
                        }
                    });

                    //单击向后按钮
                    nextBtn.click(function () {
                        var snum = getSnum(),
                    m = getMove(snum);
                        if (snum > 0) {
                            innerBlock.animate({ "margin-left": "+=" + m }, opts.speed);
                        }
                    });

                    //如果自动滚动
                    if (opts.auto[0]) {

                        $(this).width(blockWidth);
                        prevBtn.hide();
                        nextBtn.hide();

                        function auto() {
                            var snum = getSnum(),
              m = getMove(listNum - snum - opts.visible);

                            if (listNum - snum > opts.visible) {
                                innerBlock.animate(
            {
                "margin-left": "-=" + m
            }, opts.speed);
                            }
                            else {
                                innerBlock.css("margin-left", 0).find('li').slice(0, listNum - opts.visible).appendTo(innerBlock);
                            }
                        }

                        //当鼠标经过滚动区域停止滚动
                        block.hover(function () {
                            clearInterval(intervalId);
                        }, function () {
                            intervalId = setInterval(auto, opts.auto[1] + Math.abs(opts.speed - opts.auto[1]) + 100);
                        }).trigger('mouseleave');

                    }

                });

            };

        })(jQuery);



//选项卡切换
            jQuery(function () {
                jQuery(".tzy_main_rmdj2 li").mouseover(function () {
                    var index_tab = jQuery(this).parent().children().index(jQuery(this)); //选项卡的索引值     
                    jQuery(this).parent().find(".tzy_ing_2").removeClass("tzy_ing_2"); //选项卡背景处理
                    jQuery(this).removeClass("tzy_ing_2").addClass("tzy_ing_2");

                    var content_obj = $(".tzy_main_rmdj3")  //内容节点
                    content_obj.hide();
                    content_obj.eq(index_tab).show();
                });
            });