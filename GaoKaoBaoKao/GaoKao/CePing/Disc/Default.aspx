﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GaoKao.CePing.Disc.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Disc测评</title>
     <link href="../css/Test.css" type="text/css"  rel="Stylesheet" rev="Stylesheet"/>
    <script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript">
             //页面初始化
             function  page_Loading(){
                var  loadNumber=$(".boxlist input:radio:checked").length;
                 var  anNumber=0;
                anNumber= (<%=page %>-1)*<%=pagesize %>+loadNumber;

                //页面数量
                $("#answer").text(anNumber);

                var  radioNumber=$(".bc_c input:radio").length;
                    //计算进度条长度
                var  plan=answer_Number*$(".jdt").width()/(radioNumber/4);

                $("#plan").css("width",plan);

                $(".a").each(function (n) {
                    $(this).find("input:radio").each(function(c){
                      
                       if(c==0){
                         
                        $(this).next().text("A："+$(this).next().text()) ;
                        }
                         if(c==1){
                         $(this).next().text("B："+$(this).next().text()) ;
                        }
                        if(c==2){
                         $(this).next().text("C："+$(this).next().text()) ;
                        }
                    });
                 });
            }

             $(function(){
                $(".bc_c input:radio").click(function () {
                    //回答的题的数目
                    var answer_Number = $(".bc_c input:radio:checked").length;

                  var  radioNumber=$(".bc_c input:radio").length;
                    //计算进度条长度
                    var  plan=answer_Number*$(".jdt").width()/(radioNumber/4);


                    $("#plan").css("width",plan);
                    $("#answer").text(answer_Number+(<%=page %>-1)*<%=pagesize %>);
                    $(this).parent().parent().parent().css("background","");
                    $(this).parent().parent().parent().parent().parent().addClass("redbg");

                });


                var  array=new Array();
                array[0]="一";
                array[1]="二";
                array[2]="三";
                array[3]="四";
                array[4]="五";
                array[5]="六";
                array[6]="七";
                array[7]="八";
                array[8]="九";
                array[9]="十";
               

                $(".cti").each(function(){
                    var  tx=$(this).text();
                    $(this).text();
                });
             });

             
                  //确定是否新窗口打开页面
            function BlankWindow() {
                //判断是否最后一页，如果是最后一页则打开新窗口查看结果，如果不是则退出
                var  page=<%=page %>;
                if(page!=<%=countPage %>){

                    var a = window.top;
                    if (a == undefined) {
                        //新窗口打开本页

                        var w = 1000;
                        var h = 760;
                        var win = null;
                        var LeftPosition = (screen.width) ? (screen.width - w) / 2 : 0;
                        var TopPosition = (screen.height) ? (screen.height - h) / 2 : 0;
                        var settings = 'height=' + h + ',width=' + w + ',top=' + TopPosition + ',left=' + LeftPosition + ',scrollbars=no,resizable=no,location=no';
                   
                        var a = $("<a href='Fruit.aspx' target='_blank'>Apple</a>").get(0);
                        var e = document.createEvent('MouseEvents');
                        e.initEvent( 'click', true, true );
                        a.dispatchEvent(e);
                        //刷新父页面
                
                        //a.location.href=a.location.href;
                    }
               }
               else{
                  return;
               }
          }

    </script>

    <style type="text/css">
    table td{  text-align:left;}
    </style>
</head>
<body onload=" page_Loading();">
    <form id="form1" runat="server">
    <asp:HiddenField ID="hdPage" runat="server" />
    <div class="box fb">
        <img src="../images/box_top.png"></div>
    <div class="box box_c">
        <div class="bc bc_t">
            <div class="bc_t_l">
                <img src="../images/logo.png" /><span>Disc测评</span></div>
            <div class="bc_t_r">
                <div class="bc_t_r_l">
                    答题进度：</div>
                <div class="jdt">
                    <img id="plan" src="../images/jdt.png" style="height: 22px" /></div>
                <div class="bc_t_r_b">
                    <span id="answer">0</span>/<%=count%></div>
            </div>
        </div>
        <div class="bc bc_c">
            <h2>你是什么样的人？为了帮助您，请切实填写。</h2>
            <div class="bccl">
                <ul>
                    <asp:Repeater ID="rpt_List1" runat="server" OnItemDataBound="rpt_List1_ItemDataBound">
                        <ItemTemplate>
                            <li class="q">
                                <div class="ct">
                                    <div class="cti">
                                        <%# Eval("TestType")%>.</div>
                                     
                                </div>
                                <asp:RadioButtonList ID="rdb_Check" runat="server">
                                </asp:RadioButtonList>
                                <asp:HiddenField ID="hdType" runat="server" Value='<%# Eval("TestType") %>' />
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <div class="bc bcb">
            <span class="alert_info"></span>
            <asp:ImageButton ID="ImageButton1" class="right" runat="server" ImageUrl="../images/btn_next.png"
                OnClick="next_Click" OnClientClick="return nextclick();" />
        </div>
    </div>
    <div class="box">
        <img src="../images/box_bottom.png" />
    </div>
    <script type="text/javascript">
        function nextclick() {
            BlankWindow();
            var errorList = 0;
            $(".q").each(function (n) {

                var rads = $(".q").eq(n).find("input:radio:checked").length;

                if (rads == 0) {
                    $(this).css("background", "#6e6e6e");
                    errorList++;
                }

            });
            if (errorList > 0) {
                $(".alert_info").text("共有" + errorList + "题没有回答");
                return false;
            } else {

                return true;
            }
            return false;
        }

    </script>
    </form>
</body>
</html>
