﻿
$(function () {

    $('#txt1').focus(function () {
        var txt1_value = $('#txt1').val();
        if (txt1_value == "帐号") {
            $(this).val('');
        }

    })
    //邮箱地址输入框失去焦点
    $('#txt1').blur(function () {
        var txt1_value = $('#txt1').val();
        if (txt1_value == "") {
            $(this).val('帐号');
        }
    })

//    $('#pawd').focus(function () {
//        var txt1_value = $('#pawd').val();
//        if (txt1_value == "密码") {
//            $(this).val('');
//        }

//    })
//    //邮箱地址输入框失去焦点
//    $('#pawd').blur(function () {
//        var txt1_value = $('#pawd').val();
//        if (txt1_value == "") {
//            $(this).val('密码');
//        }
//    })

    $('#yzm').focus(function () {
        var yzm_value = $('#yzm').val();
        if (yzm_value == "验证码") {
            $(this).val('');
        }

    })

    $('#yzm').blur(function () {
        var yzm_value = $('#yzm').val();
        if (yzm_value == "") {
            $(this).val('验证码');
        }
    })
    var $txt2_obj = $('#txt2'); //获取id为txt2的jquery对象
    var $pawd_obj = $('#pawd'); //获取id为txt2的jquery对象
    $txt2_obj.focus(function () {
        $pawd_obj.show().focus(); //使密码输入框获取焦点

        $txt2_obj.hide(); //隐藏文本输入框

    })
    $pawd_obj.blur(function () {
        if ($pawd_obj.val() == '') {//密码输入框失去焦点后，若输入框中没有输入字符时，则显现文本输入框
            $txt2_obj.show();
            $pawd_obj.hide();
        }
    })
})
    