﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FruitSenior.aspx.cs" Inherits="GaoKao.CePing.JiaoLv.FruitSenior" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript">
            window.moveTo(-4, -4);
            window.resizeTo(window.screen.availWidth + 9, window.screen.availHeight + 9);
    </script>
</head>
<body>
    <div class="mbtitu hightu1">
        考试焦虑</div>
    <div class="hightu2">
        高级测评报告</div>
    <div class="mbtitu3">
    </div>
    <div class="contants">
        <div class="tit1 tit4">
            考试焦虑高级测评报告</div>
    </div>
    <div class="contants">
        <div class="tit3 tit5">
            测评结果</div>
        <div class="du">
            <div value="1" style="display: none;">
                <h2>
                    您没有考试焦虑症</h2>
            </div>
            <div value="2" style="display: none;">
                <h2>
                    您属于，轻度考试焦虑</h2>
                <p>
                    比较适当的焦虑程度，可以进行自我调整。</p>
                <p>
                    焦虑心理既不能过度也不能过少，保持适度的焦虑可以避免过度放松导致的缺乏学习动力，所以一定程度的紧张感是必须的。</p>
            </div>
            <div value="3" style="display: none;">
                <h2>
                    您属于，中度考试焦虑</h2>
                <p>
                    轻微过度的考试焦虑，可以进行自我调整。</p>
                <p>
                    焦虑心理轻微过度时，不仅会影响考试时的临场发挥，也会影响考前的学习状态，使自己的学习效率低下，因此需要合理调整和控制，将焦虑心理降低到一个健康合理的程度。</p>
            </div>
            <div value="4" style="display: none;">
                <h2>
                    您属于，重度考试焦虑</h2>
                <p>
                    非常严重的考试焦虑，建议咨询心理医生。</p>
                <p>
                    当考前焦虑非常严重时，一般的调理方法很难发挥作用，建议就医咨询。心理医生能够通过专业的心理疗法，更好的缓解你的焦虑心态，帮助你回复到平静状态，使你稳定发挥，避免因严重的考前焦虑导致发挥失常。</p>
            </div>
        </div>
        <script type="text/javascript">
             $(".du div").each(function () { 
             
                if($(this).attr("value")==<%=lvel %>){
                    $(this).show();
                }
             });
        </script>
        <h2>
            简述：</h2>
        <p>
            考试焦虑（test anxiety），是指因考试压力过大而引发的系列异常生理心理现象，包括考前焦虑，临场焦虑（晕考）及考后焦虑紧张。心理学认为，心理紧张水平与活动效果呈倒“U
            ”字曲线关系。紧张水平过低和过高，都会影响成绩。适度的心理紧张，可以使人对考试有种激励作用，产生良好的活动效果。但过度的考试紧张则导致考试焦虑，影响考场表现，并波及身心健康。考试焦虑是考生中常见的一种以担心、紧张或忧虑为特点的复杂而延续的情绪状态。在考试之前，当考生意识到考试对自己具有某种潜在威胁时，就会产生焦虑的心理体验，这是面临高考或中考的学生中普遍而突出的现象。2008年，国家心理健康机构中欧国际研究表明,
            61%的学生有不同程度的考试焦虑,其中26%为严重考试焦虑。考试焦虑严重影响了考生的成绩,尤其是数学和语言科目。女生患严重考试焦虑的数量是男生的二倍。2006年，美国教育部TestEdge研究表明,
            61%的美国学生有不同程度的考试焦虑,其中26% 为严重考试焦虑。考试焦虑严重影响了考生的成绩,尤其是数学和语言科目。女生患严重考试焦虑的数量是男生的二倍。
        </p>
        <h2>
            考试焦虑的症状：</h2>
        <p>
            考试焦虑是考生中常见的一种以担心、紧张或忧虑为特点的复杂而延续的情绪状态 。在考试之前，当考生意识到考试对自己具有某种潜在威胁时，就会产生焦虑的心理体验，这是面临高考或中考的学生中普遍而突出的现象。他们怀疑自己的能力，忧虑，紧张，不安，失望，行动刻板，记忆受阻，思维发呆，并伴随一系列的生理变化，血压升高，心率加快，面色变白，皮肤冒汗，呼吸加深加快，大小便增加。这种心理状态持续时间过长会出现坐立不安，食欲不振，睡眠失常，影响身心健康。
            这种心理是考生对考试具有自律性和责任心的表现。
        </p>
        <h2>
            考试焦虑症的症状表现主要有三种：</h2>
        <h3>
            1.认知障碍</h3>
        <p>
            它是以担忧为特征的，由消极的自我评价或他人评价所形成的意识体验，这是比较常见的考试焦虑症的症状表现。</p>
        <h3>
            2.生理表现</h3>
        <p>
            即同自主神经系统活动增强相联系的特定的情绪反应，如心率加快、呼吸加剧、胃肠不适、多汗、尿频、头痛、失眠等。</p>
        <h3>
            3.行为表现</h3>
        <p>
            它是通过防御或逃避所表现出来的一定的行为方式，如在考场上惶恐不安，多余动作增加，或胡乱答卷子，早早离开考场。</p>
        <h2>
            考试焦虑治疗方法</h2>
        <h3>
            认知调控</h3>
        <p>
            首先，坚决杜绝用“完了”、“我糟糕透了”等这种消极的语言暗示自己；其次，消除大脑中的错误信息，不要被一两次考试失败和一两科考试失误所吓倒，不要以偏概全，认为自己不行，而丧失信心；再次，适当减轻周围环境的压力，针对种种担忧，自己和自己辩论，用这种理性情绪疗法，纠正认知上的偏差。
        </p>
        <h3>
            行为矫正</h3>
        <p>
            行为矫正有两种方法。一种是放松训练，一种是系统脱敏训练。放松训练和系统脱敏训练的原理，是交互抑制原理，即人在放松状态下的情绪，与焦虑是相互抵抗的，比如放松状态出现了，必然会抑制焦虑和紧张状态的出现。</p>
        <h3>
            饮食疗法</h3>
        <p>
            饮食调节是重要的减压手段之一，如避免饮用含咖啡因的饮料，因为咖啡因可以刺激中枢神经系统；烟中的尼古丁也同样具有刺激性；酒精性饮料可能会使人某一深刻放松，但之后会产生反弹性的刺激性效应；避免食用人参，其含有刺激剂；刺五加有助于保持头脑的清醒，同时可缓解压力。压力会导致体内缺乏VC、VE、B族维生素和镁，因此适当补充这些维生素和矿物质是有益的；适度多饮水；避免含糖量很高的食品，如果汁，干果等。科学化的饮食方案应根据考生生命属性不同而制定。新出现的一些能量和信息医学仪器，如Tisconcord(滴丝)四元系统，可以根据不同个体的生命属性，制定针对性的饮食方案。</p>
        <h3>
            香纳疗法</h3>
        <p>
            芳香疗法在考试中的应用有着很久远的历史。在古希腊，学生在考场带着迷迭香编织的花环以增强记忆和提高反应性。目前，芳香疗法用于缓解考试紧张已经成为新的趋势。在精油领域，
            迷迭香被认为具有增强记忆的功能，薰衣草具有镇静和催眠的效果，但是一些精油可能有过度的舒缓可能影响考场发挥。一个理想的针对考试紧张的方案应能使考生身心达到 “心身和谐”，她是一种充满能量的状态，轻松愉悦的同时保持足够的清醒，从而有助于提高考场表现。“心身和谐态”下，HRV波形平滑有序。低频带（LF）会出现一个很高很窄的波峰（和谐峰），集中在0.1
            赫兹处。由于其被主要应用于缓解考试紧张（test anxiety）和比赛紧张，提升绩效，促进“心身和谐”态等领域，又被称为“考试香水”。</p>
        <h3>
            音乐疗法</h3>
        <p>
            音乐是一定频率的声波振动，携带有不同的物理能量。音乐对人体的作用应该包括心理和物理二大方面。考生应听些旋律优美，曲调悠扬的乐曲，可以转移和化解心理焦虑，产生愉悦的感觉。音乐还能通过神经内分泌系统，进一
            步对人体机能进行调节，比如，促进血液循环，促进胃肠蠕动及唾液分泌，加强新陈代谢等作用，从而使人精力充沛。最新出现的水晶钵疗法采用高纯度矽砂制成，并被用于缓解考试紧张。水晶钵使用时应根据不同个体的生命属性，选定不同频率的钵体，并编制配套的使用方法，对于考试紧张和减压具有良好的帮助作用。</p>
        <h2>
            考试焦虑自我调整</h2>
        <h3>
            自我暗示法</h3>
        <p>
            法国大作家大仲马说过：“人生是一串由无数的烦恼组成的念珠，达观的人总是笑着念完这串念珠的。”在我们的生活中到处充满着自我暗示法，例如，清晨你对着镜子梳洗打扮一下，如果看到自己的脸色很好，往往心情舒畅，这就是一种自我暗示。假如你是一位正处于“考试焦虑”的临考中学生，你恰恰听说你的同学通过自我保健，考试焦虑情绪很快消失，你就会想，我也一定会告别“考试焦虑情绪”，做一个真正健康人。
        </p>
        <h3>
            睡眠消除法</h3>
        <p>
            事实证明，很多临考学生的“考试焦虑”是由于学习过度疲劳、睡眠不足引起的。针对这种情况，广大临考中学生朋友一般不易“夜半挑灯”苦读，要养成中午小睡的习惯。因为良好的、充足的睡眠可以消除大脑疲劳，换取充沛的精力和清醒的头脑。充足的睡眠是从容应考的前提，也是克服考试焦虑情绪行之有效的方法。</p>
        <h3>
            运动消除法</h3>
        <p>
            学生以脑力活动为主，而适当的运动是消除大脑疲劳的有效方法。广大临考中学生可根据自己的实际情况，散散步、打打球、做做体操。因为运动可以消除一些紧张的化学物质，虽然使肌肉疲劳，但可以放松神经。</p>
        <h3>
            兴趣消除法</h3>
        <p>
            人们在从事自己感兴趣的事情的时候，整个身心都会投入进去，进入一种物我两忘的境界，什么忧愁烦恼都会抛到九霄云外。因此，广大临考中学生在紧张的学习之后，做一些感兴趣的事情，如，唱唱歌、看看报、听听音乐等等，都可以消除疲劳，化解烦恼，远离考试焦虑情绪。
        </p>
        <h3>
            情绪宣泄法</h3>
        <p>
            情绪宣泄是缓解压力、保持心理平衡的重要手段。众所周知，有些考试焦虑情绪是由于坏情绪的不断积压引起的，如：升学压力使你透不过气来，考试成绩不理想，家长的口罗嗦等等，都可能使心情变化，久而久之，就会出现“考试焦虑情绪”。针对这种情况，可采用以下方法：聊天法，即通过向亲人或朋友，述说自己的积怨，求得他人的理解和同情，让自己的内心得到调整；哭笑法，如果内心憋得难受，又无法与人倾诉，应当找一个适宜的地方，放声大哭或大笑，以宣泄自己内心的不平；书面释放法，可以用写日记或书信的方式，释放自己的苦恼；上网法，有条件、会上网的临考中学生朋友可通过电脑网络与网友交流思想，排遣烦恼。
        </p>
        <h3>
            游戏转移法</h3>
        <p>
            即通过开展游戏活动，让处于“考试焦虑情绪”的临考中学生参与其中，进入角色，忘记疲劳，转移注意力，释放体内积聚的能量，调整机体的平衡，摆脱内心的烦恼。
        </p>
        <h3>
            食疗法</h3>
        <p>
            食疗法就是增加身体营养的方法，临考中学生脑力劳动强度大，能量消耗大，需大量补充营养。因此，必须设法增加适量含蛋白质、脂肪、碳水化合物的食物，同时还要补充大脑所需的维生素、氨基酸以及钙、铁、锌等微量元素。
        </p>
        <h3>
            音乐疗法</h3>
        <p>
            音乐能影响人的情绪行为和生理机能，不同节奏的音乐能使人放松，使人的生理、心理节律发生良性的变化。如：圣洁、高贵的音乐，可使人净化灵魂、境界开阔；速度较缓的音乐给人以安全感、舒适感；清澈、高雅、透明的古典音乐，可以增进人们的记忆力、注意力；浪漫的音乐，可激起人们恻隐、怜悯之心；流行音乐，可使人感情投入；时尚音乐，可释放心声。
        </p>
        <h2>
            缓解考试焦虑方法
        </h2>
        <h3>
            自信训练
        </h3>
        <p>
            主要是通过考试焦虑患者自我表达正常情感和自信,是那些消极的自我意识得到扭转,借此消弱或消除其考试焦虑的一种自我训练的方法。
        </p>
        <h3>
            放松训练
        </h3>
        <p>
            放松训练就是通过一定的方法，如呼吸法、暗示法、表象法和音乐法等，使人体的肌肉一步步放松，使大脑逐渐入静，从而调节中枢神经系统的兴奋水平，缓解紧张情绪，增强大脑对全身控制支配能力的训练方法。放松训练的原理，即肌肉和大脑之间是双向传导的，大脑可以支配肌肉放松，而肌肉的放松，又可以反馈给大脑。
        </p>
        <h2>
            心理成因
        </h2>
        <p>
            考试焦虑是对考试的一种特殊心理反应，它受以下一系列因素的影响：</p>
        <h3>
            主观因素
        </h3>
        <p>
            1 自我期望过高，梦想自己一举成功，幻想自己考试能超水平发挥，当感觉自己力不从心时，紧张和焦虑的心态便油然而生。
        </p>
        <p>
            2 知识准备和应试技能不足，学生对所学知识掌握多少以及是否巩固，都会影响他们应试时的焦虑水平。如果准备不充分，知识上有欠缺，则会导致信心不足。本来就提心吊胆，一旦试题与自己准备的不相符合，就更加紧张，结果必然导致高焦虑。
        </p>
        <p>
            3 自信心不足，自尊心强的学生，总有一种害怕被淘汰的心理，其实自己已经很努力了，但一旦成绩不理想，就丧失信心，低估自己的能力和知识水平，遇到一点挫折失败就垂头丧气。
        </p>
        <p>
            4 考前身体状况不好。比如生病、失眠、过度疲劳等导致体能上竞技状态不佳容易产生高焦虑。
        </p>
        <h3>
            客观因素
        </h3>
        <p>
            1 父母的压力。父母普遍有一种补偿心理，期望通过子女来实现自己的理想。因此，按照自己的期望来设计孩子的未来，培养孩子的兴趣爱好，并在学习上不断地施压。致使子女感到肩上的担子很重，难以达到父母的目标和要求，容易出现郁闷，逆反心理，加重了心理压力。
        </p>
        <p>
            2 老师的压力。教师往往偏爱学习好的学生，而学生也十分珍惜教师的这种“关爱”，总希望自己能考出好成绩以谢师恩，既为自己也为老师脸上添光，这种期待心态，无疑会给学生增添几分压力。
        </p>
        <p>
            3 同学之间的竞争。同一班级的学生，由于彼此之间存在着竞争，大家争先恐后，害怕别人超过自己，尤其是成绩好的同学竞争更是激烈，彼此间有一种对抗心理，相互暗暗努力，加班加点学习，疲惫加劳累，久而久之，就会产生无形的心理压力。
        </p>
        <h3>
            学习方法不合理
        </h3>
        <p>
            有关调查表明，只有46%的高中生有适合自己的学习方法，有一半以上的学生没有自己的学习方法，或学习方法不当。而有学习计划的学生也仅占四分之一，缺乏计划和学习方法不当的人固然难以对学习树立起信心，心理有一种预期的紧张，对未知的考试结果过分担心、期望和关注。在这种心理支配下，自我调控能力下降，自信心不足，心理总处在一种恐惧和紧张焦虑之中。
        </p>
        <h3>
            缺乏意志力
        </h3>
        <p>
            不能有效地自我调节。有些考生在考前及考试过程中情绪处于极度兴奋和极度抑郁状态，情绪波动大，有时一点小事情也能引起他们的内心巨大震撼，情绪难以受理智控制，容易心烦意乱，喜怒无常，无精打采，稍遇不顺便怨天尤人，或认为自己一无是处。
        </p>
        <h3>
            应试技能差
        </h3>
        <p>
            首先要了解自己的知识水平，制定并完成好复习计划，而且要调整好竞技状态，把自己的心理调到最佳应试状态。有些考生平时不按计划学习，基本功不扎实，复习时间分配不合理，准备不充分，临考前拼命地临阵磨枪，夜以继日，加班加点，而真到考试时却已经疲惫不堪，怎能发挥出最佳水平呢？
        </p>
        <p>
            <strong>考试焦虑症一般表现在三方面：</strong></p>
        <p>
            躯体异常：失眠多梦、头晕头痛、恶心呕吐、面色苍白、四肢发凉、胸闷气短、食欲减退、肠胃不适，频繁小便等。</p>
        <p>
            心理异常：紧张、担心、恐惧、忧虑、注意力差、记忆力减退，学习效率下降，情绪抑郁、缺乏自信和学习热情，过度夸大失败后果，常有大难临头之感;</p>
        <p>
            行为异常：拖延时间、逃避考试、坐立不安、怕光怕声，考试时思维混乱，手抖出汗，视力模糊，常草草作答，匆匆离开考场;
        </p>
        <p>
            <strong>危害是多方面</strong></p>
        <p>
            严重的考试焦虑常使学生平时就忧心忡忡，忐忑不安，心中总惦记着考试，学习时注意力不能集中，情绪烦躁，降低了学习效率。</p>
        <p>
            考试焦虑影响了考生的考试成绩，而不良的考试成绩又会反馈强化，加剧考试焦虑，形成一种恶性循环。</p>
        <p>
            考试焦虑还会对学生的身体健康产生破坏性的影响，高焦虑常常会导致考生一系列的生理反应，如心慌、出汗、头昏、失眠、厌食，尿频等植物性神经功能紊乱现象。</p>
        <h2>
            与学习的关系
        </h2>
        <p>
            并非所有的焦虑对学习都是有害的。焦虑是一种复合性情绪状态，包括焦虑反应、过度焦虑和焦虑症等三个由轻到重的层次。焦虑反应是人们对一些即将来临的紧张事件进行适应时，在主观上产生的紧张、不安、着急等期待性情绪状态；焦虑症是神经症的一种，主要特点是紧张、不安等症状比较严重，但对产生这些不适的原因不很明确。考试焦虑介于两者之间，属于过度焦虑，其特点是焦虑已明显地影响正常学习和生活，但患者对引起焦虑的原因十分明确，考试一旦解除，多能迅速恢复。
        </p>
        <p>
            许多研究业已证明，绝大多数考生在临考前都有一定程度的紧张或焦虑，它属于焦虑反应，是正常现象。适度紧张可以维持考生的兴奋性，增强学习的积极性和自觉性，提高注意力和反应速度等，也就是说，在考试及其准备过程中，维持一定程度的紧张是有必要的。但是，考试焦虑与学习效率并非都是呈正相关的。有人发现，紧张的动机和学习成绩呈“倒u形曲线”，即焦虑水平过低、动机过弱不能激起学习的积极性，学习效率在一定范围内随着焦虑的增强而提高，但过强的动机表现为高度焦虑和紧张，反而引起学习效率的降低。这一规律被称之为“耶克斯——多德森定律”。
        </p>
        <h2>
            调控措施</h2>
        <h3>
            克服考试焦虑症的方法：
        </h3>
        <p>
            <strong>系统脱敏：</strong>在考试前，可反复想象一下以下场景：在家复习准备;教师宣布考试;我被第一道题难住了;时间几乎快到了，我根本做不完……有些同学会说：“我不敢想象!”但是，你必须这样做!如果想象后出现心慌头晕、手抖出汗，请立即做深呼吸20～30次，一般很快就能平息不安的情绪。如此反复多次(每2天进行1次，每次3～5分钟)，考试焦虑就会有所缓解。
        </p>
        <p>
            <strong>自我暗示：</strong>进入考场后，你可以暗示自已：“我能行”，“我紧张，别人也一样”，“我最棒”等等，放下包袱，减轻紧张感，增强自信。此外，可采用深呼吸法，一呼一吸，将呼吸放得很慢很慢。这样，可以调整身心，保持头脑冷静，避免胡思乱想，发挥出自己的正常水平。
        </p>
        <p>
            <strong>宣泄倾诉：</strong>当你感到压力过大，内心的焦虑自己无法排解时，不要闷在心里，找个值得你信任的人把苦恼说出来。在宣泄自己的负情绪的同时，你还会惊奇地发现，原来考试焦虑的不只自己一个人，很多同学都有，从而恢复心理平衡。
        </p>
        <h3>
            调整期望值，培养良好的个性
        </h3>
        <p>
            期望值是自我确立的结果能达到的预期值和目标，它是影响学生考试焦虑的重要因素。期望值是否适度，直接影响考生的动机程度，情绪状态和品质，也直接影响考生的动机程度，情绪状态和品质，也直接影响考生临场水平的发挥。研究表明：过高的期望值会给学生造成较强的心理压力。因为目标订得太高，超过了自身的实际能力，就会在活动中担心没有实现的把握而失去信心，同时，也会使考生在考前过分担忧而分散注意，因此，适当调整期望值，切合实际地提出目标和期望，这是非常重要的。
        </p>
        <h3>
            端正考试动机，正确评价考试成绩及意义</h3>
        <p>
            在目前升学，就业都需要通过考试成绩来选拔的社会中，考试成绩在学生心目中无疑占有很重要的位置，它不但会影响到考生的升学就业，而且会影响到家庭，学校，社会对考生的评价，把考试视为决定自己终身命运的“生死战”，认为考不好就没有前途的考生，肯定会背上过重的思想包袱，成天提心吊胆，害怕失败，而不能专注于学习本身。一旦考生改变了思维的刻板性，认识到成才道路的多渠道性，考试焦虑是会降低的。</p>
        <h3>
            作好充分的考试准备，形成良好的考试状态</h3>
        <p>
            <strong>要掌握应试的技巧</strong></p>
        <p>
            （1）、要稳定情绪，全身放松</p>
        <p>
            （2）、在答题前要浏览试卷，统观全局</p>
        <p>
            （3）、回答每道题前，一定要认真审题，理解题意</p>
        <p>
            （4）、排列好答题顺序，贯彻先易后难原则</p>
        <p>
            （5）、统筹兼顾各题，恰当分配答题时间</p>
        <p>
            （6）、不忽视任何细节</p>
        <p>
            （7）、注意克服定势的干扰</p>
        <p>
            （8）、先求正确，再求速度
        </p>
        <p>
            （9）、考试时能做一点就做一点，增加一分也好</p>
        <p>
            （10）、做选择题时只要不倒扣分，尽量给出猜测选择</p>
        <p>
            （11）、合理使用时间，不要提前交卷</p>
        <p>
            （12）、考完退场后，不要急于对答案</p>
        <p>
            <strong>体能和心理准备</strong></p>
        <p>
            有不少考生在考前拼命复习功课，作息时间颠倒，生理功能紊乱，睡眠不足，缺乏体育锻炼和文娱活动，一门心思想在考前多往脑中灌些东西，致使大脑过度疲劳，体能下降，精力不济，头晕，失眠，食欲不振。所以，考生要注意充足的睡眠和进行适当的体育锻炼，而且考生要适当多吃些富含蛋白质，维生素的食物，如肉，鱼，蛋，牛奶，新鲜蔬菜，水果等，以保证有充分的体力，同时也要避免高脂肪，高蛋白等营养品的过量摄入，造成消化不良和肠胃功能紊乱，体能不仅没有增强反而下降。</p>
        </p>
        <p>
            <strong>物质准备</strong></p>
        <p>
            在考试的前一天晚上，就应该准备好准考证，文具用品，交通工具，手表等，避免由于物质准备不足诱发考场上的焦虑。</p>
        <h3>
            怯场的控制</h3>
        <p>
            怯场是学生在考试过程中，在考试情境与考试本身的强烈刺激下，引起学生高度紧张焦虑，使心理活动暂时中断或失调的现象。怯场是考试焦虑最典型的一种，然而掌握必要的技巧，是可以顺利度过这一危机的。</p>
        <p>
            <strong>先易后难</strong> 考试焦虑容易发生在考试刚开始的时候，因此，考前要告戒考生，做题时先仔细审题，先易后难，逐步适应，遇到难题暂时放下，等其他会做的题目完成后，在回头做难的题目。</p>
        <p>
            <strong>自我调节</strong>当考生意识到自己出现怯场时，不要惊慌，可以采用以下几种方法：</p>
        <p>
            安静下来，暂停阅卷，答卷，静静伏在桌子上稍作休息，或把目光移向窗外的景色，转移注意力，停止有关考试活动的强制性回忆。
        </p>
        <p>
            可用“调整呼吸法”，即全身放松，多次做深而均匀的呼吸，呼吸时大脑最好排除其他杂念，双眼注视一个固定的目标或微闭，反复有节奏的呼吸，这样也会很快消除怯场。
        </p>
        <p>
            采取“积极心理暗示”方法，进行自我暗示。如：“我能行”、“我一定成功”、“我这次考试肯定会取得好成绩”、“这次试题很难，大家都一样”。
        </p>
        <p>
            总之，正确的人生观，价值观，坚定的信念，崇高的理想，明确的学习动机，积极的学习兴趣，开朗的性格，顽强的意志，良好的情绪等都有利与克服考试焦虑，而且考试焦虑并不可怕，只要对考试有正确的认识，考前做好充分准备，学会自我调节的方法，考试焦虑是可以调适的。
        </p>
        <h2>
            考试焦虑会给我们带来的坏处</h2>
        <p>
            面临强大的竞争压力，不少考生在考前出现了考试焦虑。焦虑是社会普遍存在的一种心理疾病，主要由外界环境的影响和内心的不良因素而引发，一般焦虑患者常常伴有失眠多梦、头晕腹泻、注意力分散、记忆力减退、忧心烦躁等等现象。那么，考试焦虑会带来哪些坏处呢？
        </p>
        <p>
            其中考试焦虑其表现为：上课心不在焉，十分焦急自己马上临考却仍然什么也记不住；烦躁不堪，见到任何事情都有发火的欲望；坐立不安，总觉得自己的每一个动作都是浪费时间；吃不好，睡不香，精神萎靡不振。具有以上任意一条的便是患上了考试焦虑症，并根据适用条数得多少而“病情”轻重。
        </p>
        <h3>
            生理上：</h3>
        <p>
            休息不足，身体过劳</p>
        <p>
            精力下降，注意力不集中</p>
        <p>
            嗜睡，头晕</p>
        <h3>
            心理上：</h3>
        <p>
            心里焦躁不安</p>
        <p>
            与他人沟通困难</p>
        <p>
            心理压抑、恐惧</p>
        <p>
            信心下降，产生自卑心理
        </p>
        <p>
            这些坏处会使我们在考试中不能正常发挥自己水平，生活中与他人冲突频繁，严重的可能危及生命健康。考试焦虑症的出现一般是由于学习压力过大而引起，作为学生应该及时的调整好心态，正确的对待考试，放松心情，要知道紧张是不会给自己带来好的成绩的，要学会用平常心应对各种事情。如症状严重需及时进行治疗，以免造成不必要的麻烦。
        </p>
        <h2>
            请正视孩子考试焦虑</h2>
        <p>
            大多数学生都不喜欢考试，期末考试最让人恐惧，月考和随堂考也不敢掉以轻心。在班级甚至学校的排位下降，家长捧着成绩单时失望的表情，同学的嘲笑，这些可能是谨小慎微的女孩子担心的事情；男同学也许更在意家长的种种美好许诺不能兑现，比如一个玩具，一次旅行等等。男生或是女生，成绩好的或成绩差的，刻苦用功者或“社会活动家”，老师的宠儿或弃儿，无一例外，处于那长长榜单的最上方是永远的梦想（不排除极少拓荒者，韩寒之流，有多少人能拒绝复旦大学的特别邀请呢！）。
        </p>
        <p>
            考试是这样一个充满众多可能性和不可预测性的东西，在考生对它没有充分了解和把握的情况下，深受其折磨便不可避免。我们熟悉的考前浩浩荡荡的复习场景是：窗外星斗满天，寂静无声，宿舍的走廊里大厅里以及午夜十二点后有光亮的地方，学生们像举行着某种宗教仪式，肃穆、念念有词、神经绷紧，眼睛、脑子、嘴巴高速运转，让人领会到与时间赛跑的含义。偏偏有些人本该加入到这朝圣的行列中来，他们却像战场上的逃兵，一边在对未来的惶恐中度日，一边憧憬着无限美好的未来。担心、不安、恐惧，食欲减退，睡眠质量不高等生理上的异常反应，发生在考试前的学生们身上，可视为考试焦虑的症状。
            事实上，绝大多数考生在临考前都有一定程度的紧张或焦虑，它属于焦虑反应，是正常现象。适度紧张可以维持考生的兴奋性，增强学习的积极性和自觉性，提高注意力和反应速度等。但过度焦虑会影响考试的进行，对身心是一种伤害。家长们要采取措施及时干预。应注意的是，这是一个心理问题，多沟通、多观察是解决问题的良好开端。
            学业困难是首要考虑的因素。有很多用功的学生，他们的学习成绩却不尽人意，他们把学习放在绝对的首位，却没有取得相应的回报。他们考前焦虑的外皮下，是巨大的压力，无形、无时无刻不在，终年不见天日。这些孩子的父母绝不应该在考前这样的关键时刻施加更多的压力，更高的期望、更热切的鼓励、更温暖的关怀，对于他们敏感的心灵都是沉重的负担。不妨把他们带离书本，在暖暖的余晖中手牵着手散散步，打打球，游游泳。
        </p>
        <h2>
            如何应对考试焦虑PPT(<a href="如何应对考试焦虑(中高考).ppt">点击下载</a>)
        </h2>
        <p>
            我相信这些方法一定可以降低你的焦虑程度，充分发挥个人的聪明才智。</p>
        <p>
            <strong>温馨提示：</strong>毕业生一旦出现考前焦虑症的表现，一定要及时采取方法进行调节，保持积极的心态，常用的减压的方式有跑步、听音乐、唱歌（主要是宣泄情绪）。另外是自己的爱好也可以。</p>
        <h3>
            结束语</h3>
        <p>
            再一次提醒您，焦虑感并非越轻越好，适度是最重要的。适度的焦虑会给人一定的紧张感，从而激发动力，促进学习和工作效率。凡事过犹不及，焦虑感过强和过轻都是不好的现象。</p>
        <p>
            最后，希望本测评能给您一定的帮助，祝您在考试中能够保持一个相对平静的心态，稳定的发挥实力，得到理想的成绩！</p>
    </div>
</body>
</html>