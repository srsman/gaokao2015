﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fruit.aspx.cs" Inherits="GaoKao.CePing.ZhiYeMao.Fruit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>职业锚初级测评报告</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../js/reportForms/highcharts.js"></script>
    <script type="text/javascript" src="../js/reportForms/exporting.js"></script>
             <script type="text/javascript">
                 window.moveTo(-4, -4);
                 window.resizeTo(window.screen.availWidth + 9, window.screen.availHeight + 9);
    </script>
    <script type="text/javascript">

        var chart;
        $(document).ready(function () {
           
            /**************************************/

            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    defaultSeriesType: 'column',
                    margin: [50, 50, 100, 80]
                },
                title: {
                    text: '职业锚统计结果'
                },
                xAxis: {
                    categories: [
							'技术/职能型',
							'管理型',
							'自主独立型',
							'安全稳定型',
							'创造/创业型',
							'服务/奉献型',
                            '挑战型',
                            '生活型'
						],
                    labels: {
                        rotation: -45,
                        align: 'right',
                        style: {
                            font: 'normal 13px Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '分数值'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' + Highcharts.numberFormat(this.y, 1);
                    }
                },
                series: [{
                    name: 'Population',
                    data: [<%=tf_1 %>,<%=gm_2%>, <%=au_3 %>, <%=se_4 %>, <%=ec_5 %>, <%=sv_6 %>,<%=ch_7 %>,<%=ls_8 %>],
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        x: -3,
                        y: 10,
                        formatter: function () {
                            return this.y;
                        },
                        style: {
                            font: 'normal 13px Verdana, sans-serif'
                        }
                    }
                }],colors: [
                   '#2f7ed8', 
                   '#0d233a', 
                   '#8bbc21', 
                   'red', 
                   '#1aadce', 
                   '#492970'
                  
                ]
            });

            
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container1',
                    defaultSeriesType: 'column',
                    margin: [50, 50, 100, 80]
                },
                title: {
                    text: '职业锚统计结果'
                },
                xAxis: {
                    categories: [
							'技术/职能型',
							'管理型',
							'自主独立型',
							'安全稳定型',
							'创造/创业型',
							'服务/奉献型',
                            '挑战型',
                            '生活型'
						],
                    labels: {
                        rotation: -45,
                        align: 'right',
                        style: {
                            font: 'normal 13px Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '分数值'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' + Highcharts.numberFormat(this.y, 1);
                    }
                },
                series: [{
                    name: 'Population',
                    data: [<%=tf_1 %>,<%=gm_2%>, <%=au_3 %>, <%=se_4 %>, <%=ec_5 %>, <%=sv_6 %>,<%=ch_7 %>,<%=ls_8 %>],
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        x: -3,
                        y: 10,
                        formatter: function () {
                            return this.y;
                        },
                        style: {
                            font: 'normal 13px Verdana, sans-serif'
                        }
                    }
                }],colors: [
                   '#2f7ed8', 
                   '#0d233a', 
                   '#8bbc21', 
                   'red', 
                   '#1aadce', 
                   '#492970'
                  
                ]
            });
        });
    </script>
</head>
<body>
    <div class="mbtitu hightu1">
        职业锚</div>
    <div class="hightu2">
        测评报告</div>
    <div class="mbtitu3">
    </div>
    <div class="contants">
        <div class="tit1 tit4">
            职业锚测评报告</div>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            理论体系</div>
        <h2>
            职业锚理论
        </h2>
        <div class="cotthree">
            <dl>
                <dt>
                    <img src="../images/careertu1.jpg" /></dt>
                <dd>
                    <p>
                        职业锚理论，也称为职业价值观理论，产生于在美国麻省理工大学斯隆商学院，是由美国著名的职业指导专家埃德加•H•施恩（Edgar.H.S chein）教授领导的专门研究小组在对该学院毕业生的职业生涯研究中演绎成的。斯隆管理学院的44名MBA毕业生，自愿形成一个小组接受施
                        恩教授长达12年的职业生涯研究，包括面谈、跟踪调查、公司调查、人才测评、问卷等多种方式，最终分析总结出了职业锚理论。</p>
                    <p>
                        锚，是使船只停泊定位用的铁制器具，职业锚，实际就是人们选择和发展自己的职业时所围绕的中心，是指当一个人不得不做出选择的时 候，他（她）无论如何都不会放弃的职业中的那种至关重要的东西或价值观，是自我意向的一个习得部分。个人进入早期工作情境后，由习得的实际工作经验所决定，与在经验中自省的动机、价值观、才干相符合，达到自我满足和补偿的一种稳定的职业定位。职业锚强调个人能力、动机和价值观三方面的相互作用与整合。职业锚是个人同工作环境互动作用的产物，在实际工作中是不断调整的。</p>
                </dd>
            </dl>
        </div>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            职业锚的功能</div>
        <p>
            职业锚在员工的工作生命周期中，在组织的事业发展过程中，发挥着重要的功能作用。</p>
        <p>
            <strong class="fontred">（1）使组织获得正确的反馈</strong></p>
        <p>
            职业锚是员工经过搜索，所确定的长期职业贡献区或职业定位。这一搜索定位过程，依循着员工的需要、动机和价值观进行。所以，职业锚清楚的反映出员工职业追求与抱负。</p>
        <p>
            <strong class="fontred">（2）为员工设置可行有效的职业渠道</strong></p>
        <p>
            职业锚准确的反映员工职业需要及其所追求的职业工作环境。反映员工的价值观和抱负。透过职业锚，组织获得员工正确信息的反馈，这样，组织才可能有针对性的对员工职业发展设置可行的、有效的、顺畅的职业渠道。</p>
        <p>
            <strong class="fontred">（3）增长员工工作经验</strong></p>
        <p>
            职业锚是员工职业工作的定位，不但能使员工在长期从事某项职业中增长工作经验，同时，员工职业技能也能不断增强，直接产生提高工作效率或劳动生产率的明显效益。</p>
        <p>
            <strong class="fontred">（4）为员工做好奠定中后期工作的基础</strong></p>
        <p>
            之所以说职业锚是中后期职业工作的基础。是因为职业锚是员工在通过工作经验的积累后产生的，它反映了该员工价值观和被发现的才干。当员工抛锚于某一种职业工作过程，就是自我认知过程。就是把职业工作与自我观相结合的过程，开始决定成年期的主要生活和职业选择。</p>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            职业锚测评的作用</div>
        <h2>
            职业锚测评</h2>
        <p>
            职业锚测评是通过对你过去行为的分析和未来目标的探索，帮你人清一个你没有深入探索和认真体会的清晰、真实的自我，从而帮助你在面临职业选择时，做出与自己价值观、内心真实自我相匹配的职业决策。</p>
        <h2 class="h2two">
            职业锚测评的作用</h2>
        <p>
            职业锚强调个人能力、动机和价值观三方面的相互作用于整合。职业锚是我们内心深层次价值观、能力和动力的整合体，它是职业决策时最稳定不变的因素，一般情况下一旦确定就很难改变。</p>
        <p>
            <strong class="fontred">（1） 职业锚测评可以帮助我们思考自己的职业决策与价值观之间的关系。</strong></p>
        <p>
            如果缺乏对职业锚的清醒认识，在外界因素的诱惑下，人们可能会做出错误的职业选择。许多人对自己的职业不满意，频繁跳槽，有很大一部分原因是因为他们的职业选择没有基于真实的自我做出，而职业锚就是真实自我的体现。
        </p>
        <p>
            <strong class="fontred">（2） 职业锚测评可以帮助你在面临职业抉择时，做出与自身价值观、内心真我相匹配的职业决策。</strong></p>
        <p>
            格伦职业锚测评的研究报告，不仅仅是帮助您认识您的职业锚以及职业方向的测评报告，我们更希望这份研究报告能够成为您规划职业生涯的工作手册，为您提供关于职业生涯发展的指导信息，以及职业规划的流程与方法，以使您可以进一步审视您的主导职业锚，并按照这个流程对于您目前的职业现状以及将来可能的职业选择进行分析。为了能够更好地利用我们所介绍的流程与方法，您必须清楚地理解职业发展的基本知识，职业锚是如何影响并制约您的职业发展，以及职业锚是如何与岗位特征（要求）相关的。
        </p>
        <h2 class="h2two">
            职业锚类型</h2>
        <p>
            职业锚是指当一个人面临职业选择的时候，他（她）无论如何都不会放弃的职业中至关重要的东西或理念。研究表明职业锚是一个人内心深处对自己的看法，它是个人的才干、动机以及价值观经过自省后形成的，职业锚可以指导、约束、或稳定个人的职业生涯。</p>
        <p>
            每个人对自己都有一定的认识，这种认识在不同的职业阶段都发挥着关键的作用，而职业锚正是一个人在职业发展过程中永远不会放弃的最重要的东西。专家们经过长时间的研究，对处于不同职业阶段上的几百人进行了访谈和分析，最终确定了八种基本的职业锚类型。要想深刻理解职业锚的概念，并在进行职业规划或决策时充分发挥其帮助作用，我们必须了解其它类型职业锚的基本特点，并明确不同职业锚之间的区别。
        </p>
        <p>
            *******************************************************************************<br />
            &nbsp;&nbsp;
            “技术/职能型职业锚”与“管理型职业锚”以个体的主导才干为中心。<br />
            &nbsp; ******************************************************************************* 
        </p>
        <p>
            <strong class="fontred">（1）使组织获得正确的反馈馈</strong></p>
        <p>
            <strong>技术/职能型：</strong><span class="fontred">（占人群的8.81%）</span></p>
        <p>
            技术/职能型的人 追求在技术/职能领域的成长和技能的不断提高，希望在工作中实践并应用这种技术/职能。他们对自己的认可来自于他们的专业水平，他们喜欢面对专业领域内的挑战。通常，他们不喜欢从事一般的管理工作，因为这意味着他们不得不放弃在技术/职能领域内的成就。</p>
        <br />
        <p>
            <strong>管理型：</strong><span class="fontred">（占人群的6.63%）</span></p>
        <p>
            管理型的人 追求并致力于职位晋升，倾心于全面管理，独立负责一个部分，可以跨部门整合其他人的努力成果。他们想承担整体的责任，并将公司的成功与否看作衡量自己工作的标准。具体的技术/职能工作仅仅被看作是通向全面管理层的必经之路。</p>
        <p>
          *******************************************************************************
            <br />
            &nbsp;&nbsp;
            “自主/独立型”、“安全/稳定性”、“创业型”与“服务型”职业锚以个体动机与需求为中心。
            <br />
            &nbsp; *******************************************************************************
        </p>
        <p>
            <strong>自主/独立型：型：</strong><span class="fontred">（占人群的10.16%）</span></p>
        <p>
            自主/独立型的人 希望随心所欲地安排自己的工作方式、工作习惯和生活方式。追求能施展个人能力的工作环境，最大限度地摆脱组织的限制和制约。他们宁愿放弃职位提升或工作发展的机会，也不愿意放弃自由与独立。</p>
        <br />
        <p>
            <strong>安全/稳定型：</strong><span class="fontred">（占人群的12.74%）</span></p>
        <p>
            安全/稳定型的人 追求工作中的安全感与稳定感。他们因为能够预测到稳定的将来而感到放松。他们关心财务安全，例如：养老金和退休计划。他们对公司忠诚，能够完成老板交待的工作。他们并不关心具体的职位和具体的工作内容是什么，只要职位与工作内容比较稳定，他们就会感到比较放松。</p>
        <br />
        <p>
            <strong>创造/创业型：</strong><span class="fontred">（占人群的19.97%）</span></p>
        <p>
            创业型的人 希望用自己的能力去创建属于自己的公司或创建完全属于自己的产品(或服务)，而且愿意冒风险，并克服面临的障碍。他们非常想向世界证明“通过自己的努力可以创建属于自己的公司或产品”。他们可能也会在别人的公司工作，但并不会长久，他们是在学习并寻找的机会。一旦时机成熟了，他们便会走出去创立自己的事业。</p>
        <br />
        <p>
            <strong>服务型：</strong><span class="fontred">（占人群的7.24%）</span></p>
        <p>
            服务型的人 一直在追求他们的核心价值，例如：帮助他人，改善人们的安全，通过新的产品消除疾病等。他们一直追寻这种机会，这意味着即使变换公司，他们也不会接受无法实现这种价值的变动或工作提升。</p>
        <br />
        <p>
            <strong>自主/独立型：</strong><span class="fontred">（占人群的10.16%）</span></p>
        <p>
            自主/独立型的人 希望随心所欲地安排自己的工作方式、工作习惯和生活方式。追求能施展个人能力的工作环境，最大限度地摆脱组织的限制和制约。他们宁愿放弃职位提升或工作发展的机会，也不愿意放弃自由与独立。</p>
        <p>
          *******************************************************************************<br />
            &nbsp;&nbsp;
            “挑战型”职业锚，既不反映价值观，也不体现动机，它是一种个性特征与解决问题方式的综合体现。<br />
            &nbsp;&nbsp; *******************************************************************************
        </p>
        <br />
        <p>
            <strong>挑战型：型：</strong><span class="fontred">（占人群的4.91%）</span></p>
        <p>
            挑战型的人 喜欢解决看上去无法解决的问题，战胜强硬的对手，克服无法克服的障碍等。对他们而言，参加工作或职业的原因是工作允许他们去战胜各种不可能。他们需要新奇、变化和困难，如果工作非常容易，他马上就会厌倦这份工作。
        </p>
        <p>
          *******************************************************************************
            <br />
            &nbsp;&nbsp;
            “生活型”职业锚，是综合了职业与家庭关系的一种职业价值观。
            <br />
            &nbsp;&nbsp; *******************************************************************************
        </p>
        <br />
        <p>
            <strong>生活型：型：</strong><span class="fontred">（占人群的29.54%）</span></p>
        <p>
          生活型的人 希望将生活的各个主要方面整合为一个整体，喜欢平衡个人的、家庭的和职业的需要，因此，生活型的人需要一个能够提供“足够弹性”的工作环境来实现这一目标。生活型的人甚至可以牺牲职业的一些方面，例如放弃职位的提升或调动，来换取三者的平衡。相对于具体的工作环境、工作内容，生活型的人更关注自己如何生活、在哪里居住、如何处理家庭事情及怎样自我提升等。</p>
        <br />
        <p class="primaryend">
        </p>
        <br />
        <br />
        <br />
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            内职业生涯与职业锚业锚</div>
        <p>
            “职业生涯”（career）这个词有很多种不同的用法，且含义也十分丰富。有时，“拥有职业生涯”多用来形容那些从事专业工作或者职场生活规划良好、并能取得稳步发展的人士。但是，如果我们可以把“职业生涯”定义为“构成个人职业发展的一系列步骤与阶段”，那么每个人都可以有自己的职业生涯，而这种职业生涯就是通过个人对他/她自己的能力、动机和价值观的理解来一步步“锚定”的。您可以将这种对于职业生涯的理解称之为“内职业生涯”，以区别于其他人对于您的职业生涯的认识。</p>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            外职业生涯与职业发展</div>
        <p>
            “外职业生涯”的各个阶段通常都是由正规的行业标准来界定的，如果职业隶属于某组织，组织也会界定“外职业生涯”的各个阶段。因此，一位年轻的工程专业大学生可以很清晰地看到自己“外职业生涯”中必需的学校教育年限；何时可以进入组织接受培训，或者担任辅助技术人员；以及该机构制定的详细的“职业发展”标准。大多数组织都会有一些根据以往员工的发展历史而形成的标准职业发展路径，可以告诉这位年轻的工程师或某位初级经理接下去会如何发展。然而，职场正处于变革之中，各个行业和各种组织中明显而标准的职业路径已经越来越少了。</p>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            基于内职业生涯发展职业锚</div>
        <p>
            我们在每一次教育经历或者工作经历中都有机会学习新知。重要的是，我们需要不仅仅以好坏、是否有趣、是否有用等这些标准来看待每一次经历，还应该自问“我从中得到了对于认识自我的什么启示？”随着年龄的增长，我们不仅需要了解职场中的种种知识，更要了解我们对于这些经历会作出哪些“天性的反应”，这些反应可以分为以下三种类型：</p>
        <p>
            <strong class="fontred">1.才干：</strong>您需要从每一次经历中发现您最擅长做的事。这种发现既来自于您的自我评估，也来自于其他人对您作出的反馈。</p>
        <p>
            <strong class="fontred">2.动机：</strong>您需要从每一次经历中发现您真正想要获得的是什么。年轻时我们会认为自己知道自己想要的是什么，清楚我们的职业理想在何方；但是随着经历地增长，我们会开始发现，有些事情是我们喜欢的，而另一些事情是我们不喜欢的，有些理想是不切实际的，同时我们也会产生新的目标。</p>
        <p>
            <strong class="fontred">3.价值：</strong>每一次经历，您不仅需要了解自己最看重的是什么，也要充分考虑行业或组织最看重的是什么，您的同事最重视的是什么，以及您所处的组织环境是否符合这些价值。</p>
    </div>
    <div class="contants">
        <div class="tit1 tit4">
            您的职业锚分析</div>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            您的职业锚分析</div>
        <p>
            格伦职业价值观测评系统是基于职业锚理论开发的针对从业人士的职业规划测评系统，其目的在于帮助您更好地管理您的职业生涯发展。为什么职业定位测评是如此得重要呢？在很多行业以及组织中，职业发展要么被过于重视而流于形式，要么因为看起来并不服务于组织的目的而被彻底舍弃。而作为您来说，要么被迫接受某种他人为您安排的生涯规划，要么积极去创建属于您自己的职业生涯。</p>
        <p>
            有越来越多的事实证明，在现今竞争日益激烈的时代，作为个体不得不越来越依靠自身的努力获得职业的成功。但是，如果作为个体的您对于您的才干，动机或价值观没有清晰的了解，您也就无法实现自我依靠的目的。这些对于自我才干，动机以及价值观的清晰了解，正是您的“职业锚”。本报告为您识别并揭示了您的职业锚，并基于此为您提供了相关的职业定位与规划辅导，以下是您的格伦职业锚测评数据分析图形：</p>
        <p>
           <div  id="container" style="width: 800px; height: 400px; margin: 0 auto"></div>
        </p>
        <p>
        </p>
        <br />
        <br />
     <%--   <p class="font24">
            主导职业锚类型：<span class="fontred">生活型（占人群的29.54%）</span></p>
        <p class="font24">
            辅助职业锚类型：<span class="fontred">生活型（占人群的29.54%）</span></p>--%>
        <p class="primaryend">
        </p>
        <h2>
            主导职业锚类型：</h2>
        <div class="zhudao"></div>
        <h2>
            辅助职业锚：</h2>
        <div class="fuzhu"></div>
        <script type="text/javascript">
            $(function () {
                var zhudao = "<%=zhuLieXing %>";
                var fuzhu = "<%=fuLeiXing %>";

              
                $(".zhudao").load("innerpage/" + zhudao + ".html");
                $(".fuzhu").load("innerpage/" + fuzhu + ".html");
            })
        </script>
    </div>
    <div class="contants">
        <div class="tit1 tit4">
            确认您的主导职业锚类型</div>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            回顾您的测评结果</div>
        <p>
            到此为止，您应该对于您的职业锚有了一定的认识了，让我们再一次回到您的职业锚类型数据分析图示，来确认您的主导职业锚类型。通常来说，您应该首先关注得分最低的职业锚类型，这些得分较低的职业锚类型是您在进行决策时将被放弃的因素。</p>
        <p>
           <div id="container1" style="width: 800px; height: 400px; margin: 0 auto"></div></p>

        
        <p>
            接着，我们再来重新审视您给予了高分的职业锚类型，您还仍然确认它是您在不得不做出某种选择时，所不能放弃的吗？很可能您会感觉到其他一些职业锚类型也使您犹豫不决，通常这是因为在职业锚测评系统的设计中，我们并没有采用迫选的方式。在这种情况下，您需要通过自己的努力，或者在一位职业发展专家的协助下，进一步确认您的主导职业锚类型。确定您的主导职业锚的最为可靠的方式，就是对您以往的教育和择业决定进行一番分析。</p>
        <p>
            测评报告的确可帮助您认清自己究竟看重什么；但是自我的反思与洞察却有着一个更深层次的基础，那就是您以往的决定和这些决定背后的深层次原因。您可以基于本报告的测评结果，自行分析您的教育与职业历史。但是更好的办法是在一位职业发展专家的帮助下，让他/她来帮助您解析您以往的选择有何规律。
        </p>
    </div>
    <asp:Panel  ID="panel" runat="server">

    <div class="contants">
        <div class="tit3 tit5">
            确认您的职业锚类型</div>
        <p>
            现在，请您将量化的自我评估分数，同您分析自己的教育与职业历史所得出的结论加以比较。假如出现前后矛盾的情况，请尽力辨别出究竟哪一个更符合实际：究竟是您在自我评估中所说的比较准确，还是您解释自己职业决定时陈述的原因更准确。您可以邀请您的职业生涯辅导顾问帮助您进行辨别。在已经完成了以上分析后，您可能又会产生其他一些问题，其中最为常见的问题包括：</p>
        <p>
            <strong>1. 还存在其他的职业锚类型吗？</strong></p>
        <p>
            截至目前的种种研究都表明，绝大部分人的职业情况都能够归入上述八种职业锚类型。这些职业锚存在于各行各业，对于医生、律师、教师、军人、咨询师、警察、乃至一线的生产工人都同样有效（假如您撇开工种区别来审视他们的职业生涯的话）。甚至比如家庭主妇这些“无酬劳”的工作，也可以用不同的职业锚来加以分析。家庭主妇/妇男往往发现，自己喜欢做家务的个性也可以找到对应的职业锚。</p>
        <p>
            人们时常问起是否存在其它职业锚，尤其是与“权力”、“多样性”、“创造力”或者“组织认同”有关的职业锚类型。根据职业锚研究时所遵从的原则，假如两个或两个以上的案例完全无法从已有的八个类型中找到合适的对应，同时也彼此在某一其它方面明显类似，那么就可算产生了一个新的类别。但到目前为止，所有提出来的新类别都被证明其实属于已有的某一种职业锚类型，或者已经在不同的职业锚类别中以别的方式表达过了。
        </p>
        <p>
            比如，“权力”和“创造性”似乎是两种普遍的需求，但研究认为，不同的职业锚只不过对其有着不同的表达方式罢了。技术/职能型的人用胜人一筹的知识和技能来表达权力；总经理则是以获取一个能带来头衔、影响力和资源的职位来表达；服务型的人通过道德上的说服力来表达，等等。与此类似，创造性也可以在不同的职业锚类别中找到不同的表达方式。在它们之外，多样性也是一个很多人都追求并以之为乐的东西，但它本身仍不算一个职业锚，因为它可以经由个人的独立性、经营管理上的挑战、创业活动或者生活方式来取得。只有那些职业锚定位在技术/职能型、安全型或服务型的人，会牺牲一些多样性来换取他们职业发展中的其它重要因素。
        </p>
        <p>
            您应该根据本测评报告第三部分的自我分析练习，结合您的测评结果，来寻找您自己“最真实”的职业锚，但也不能完全排除这种可能：您在能力、动机和价值观方面的认识模式是独一无二的。重要的是，您需要不断深化自我了解，使今后作出的职业选择更加趋于合理。八大职业锚类型应该会对您有所帮助，但是也不必把自己硬塞入某一类型中去。您必须了解的是：假如您不得不作出一个选择，什么是您决不愿放弃的，这个才是您真正的职业锚。
        </p>
        <p>
            <strong>2. 可以有一个以上的的职业锚类型吗？</strong></p>
        <p>
            所谓“职业锚”是指个人在被迫作出某种选择时决不会放弃的那一样东西，这个定义决定了只能有一个职业锚：即位于人格层级顶端的那个唯一的才能、价值观与动机的组合。但是，很多现实中的职场情境都可以实现多种这样的组合，因为无需作出某种选择，因此也妨碍了您对人格层级顶端的清楚认识。举个例子来说，一家实行家长式管理公司中的职能经理，可以实现安全型、独立自主型、技术/职能型、管理型、甚至生活型这几种职业锚。为了找出其中真正核心的那一种，此人必须假想出一些职业选项来迫使自己进行选择。比如，他/她会选择成为分公司经理，还是他所在职能领域的最高层级的管理者吗？大多数人在自己假设了这些选择之后，才会找到自己真正的职业锚。
        </p>
        <p>
            假如您还是找不出一个清晰的职业锚，还有一种可能，就是您还没有足够的生活经历，在面临选择时根本排不出先后顺序。假如您正好属于这种情况，以下的做法将有助于您确定您的主导职业锚类型：首先找出您心中排序最高的那些职业锚，再通过系统的职业选择来探求对于不同职业情境的反应。例如，假如您不知道自己是否有从事综合管理的才能或者本领，目前也还没有机会涉足这一领域，您可以以志愿者的身份去运作一个项目，当一名委员会主席，或是要求担任一个团队的代理管理者，或以其它形式来获取一些经验。另一种选择是，您可以去寻访那些明显正处于这种职业情境中的人，并详细地采访他们以了解这种职业情境是什么样子的，从而设身处地地思考自己对于这种情景的反应。
        </p>
        <p>
            <strong>3. 职业锚可以改变吗？</strong></p>
        <p>
            所有已有的证据都还无法证明职业锚是否会发生改变。要想判断出职业锚的变化必须要对足够多的人群样本进行足够长时间的观察，而事实上能够接受这种长时期观察调研的人实在太少了。不过，本项研究的很多初始成员一直到他们四五十岁时都仍然在接受跟踪研究，而到目前为止，事实证明职业锚还是相对稳定的。这也是情理之中的结果，因为随着人对自我形象看得越来越清楚，也越来越了解自己擅长什么，想要得到什么，以及看重什么，人都会倾向于维持这种自我形象。人们对自己了解得越深，就越想保留住这种自我洞察。</p>
        <p>
            比如，一个大型企业中的技术/职能型职业锚的工程经理，发现自己正随着“外职业生涯”路径的发展而渐渐接近综合管理层。他觉得自己的下一次提升可能会使得他从事综合性的工作而离开了自己所喜爱的职能领域，于是他开始游说自己在高管层的熟人将自己调至总部从事高级别的职能领域工作，最终他成功实现了后一种调动。看起来，他宁可放弃提升到更高级别综合管理职位的机会，而留在他更喜欢的技术职能领域。另一位得到提升的技术/职能型的经理却辞了职，因为他的工作枯燥无味，已经成为一条死胡同。随后他成功开辟了在该领域作为一位顾问的职业生涯。他的职业生涯改变了，但是职业锚并没有变。一个独立型职业锚的人完全退出了公司生活，过着边缘化的生活直到结婚生子。此时他仍不回归主流，而是和妻子一起开了一家古玩店，得以保持自己的独立性。
        </p>
        <p>
            有些人的“外职业生涯”在中年时期发生了巨大变化，这实际上可以看做是他们在将一直以来未曾实现的职业锚付诸实施，他们在过去只是一直找不到机会去做他们真正想做的事而已。举例来说，一位有着技术/职能型职业锚的电脑顾问一直想进法学院读书，当他获得一小笔遗产可以支持自己时，他毅然理智地选择去了法学院。毕业之后他专攻一门专业法律，最终借助他所具备的大量电脑和咨询技能成为一名成功的执业律师。但他始终都保持着技术/职能领域的职业锚
        </p>
        <p>
            由于职业生涯的结构各异，一个人的工作同他/她的职业锚常常会有所出入。一个技术/职能型的人有可能会被升为总经理；一个管理型的人可能会被授予一项高层职能工作；一个安全型职业锚的人有可能会愿意加盟一家创业型公司；或者一个独立型职业锚的人可能会默默忍受强势上司的压迫，接受一份枯燥但稳定的工作。在这些情况下，人还是可以取得一些成就，但是他们会感到郁闷，认为真实的那个自我并没有真正投入生活。他们可以适应环境并充分利用环境，但是他们的职业锚并不会改变；一旦时机来临，他们就会寻求更优的职业生涯选择。
        </p>
        <p>
            现在，您应该已经对自己的职业锚有了一个相当清晰的概念了。假如您自己的职业生涯发生过改变，请自问您的职业锚是否也发生了改变，或者改变的只是不同职业和不同生活下您所关注的东西罢了
        </p>
        <p>
            <strong>3. 那么，下一步是什么呢？</strong></p>
        <p>
            好了，假设您已经明确了您的职业锚类型，或者您已经清楚地了解了您的核心价值观：那些您无论如何都不会放弃的职业中至关重要的东西，接下来的执行部分就是去发展您的倾向与优势。职业锚理论注重于发现自己的职业倾向与优势，并把这种优势加以发展以获得更好的效果。职业锚理论认为，我们没有必要去特别关注我们不倾向的专长或者弱项，就算您能够把您的弱项发展为普通人群的水平，又能怎样呢？我们建议您制定一个学习发展的规划，记录您进一步学习的渠道，方法或者资源，并规定一个轻松的时间表。如果您能够获得一个由组织资助的顾问咨询项目，或者得到一个职业指导专家的辅导，那将是一个非常不错的选择！
        </p>
    </div>

    </asp:Panel>


    <div class="contants">
        <div class="tit3 tit5">
            结束语</div>
        <p>
            通过职业锚测评，您明确了自己的职业锚类型，接下来，在进行职业规划或寻找工作的过程中，在进行职业决策时，您就要紧扣本报告为您总结的特点，具体分析所面临的职业信息，明确其具体要求与特性，看这些要求与特性能否满足自己职业发展的需要，并以此作为职业规划与决策的依据。职业锚是个体认识自我、探索自我的重要内容，是进行职业生涯规划时应该重点考虑的因素之一，也是影响个人做出职业决策的关键因素，但它并不是唯一的影响因素，请您时刻谨记这一点。</p>
        <p>
            职业锚测评是通过专业职业测评工具探索您的职业锚类型，但如果您对自己的认识不够清晰，那么仅仅通过该测评可能无法帮助您完全确定您的职业锚类型，反而会出现测评结果与自我感觉不符的情况，甚至是相背的情况。此时，测评的结果就只能看作您探索自己职业锚类型的开始，接下来您还可以通过我们为您提供的活动加深自我认识，当您觉得对自己的认识比较清晰时，可以再次通过本测评来确定您的职业锚类型。</p>
        <p class="primaryend">
        </p>
        <p>
            <strong class="fontred">注意：</strong></p>
        <p>
            格伦职业锚测评，是格伦职业生涯规划项目的有机组成部分。结合格伦职业价值观测评，格伦性格与职业发展测评，格伦行为模式测评，本项目将帮助每一位有志于卓越职业生涯发展的从业人士，以系统化的方法来学习职业生涯发展的知识、洞察自我、能动地调整自我、规划职业生涯，并设定人生奋斗的目标。
        </p>
    </div>
</body>
</html>
