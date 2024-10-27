//
//  Quesrions.swift
//  HunterTest
//
//  Created by 王宜婕 on 2024/10/22.
//
enum SkillType: String {
    case 強化系
    case 操作系
    case 具現化系
    case 變化系
    case 放出系
    case 特質系
    case 其他
    case 全加5
}

struct Scores{
    let SkillType:SkillType
    var score:Int = 0
    let skilltext:String
}

var ScoreList:[Scores] = [Scores(SkillType: .強化系, score: 0 ,skilltext : "強化系") ,Scores(SkillType: .操作系, score: 0 ,skilltext :"操作系") ,Scores(SkillType: .具現化系, score: 0 ,skilltext : "具現化系") ,Scores(SkillType: .變化系, score: 0 , skilltext : "變化系") ,Scores(SkillType: .放出系, score: 0, skilltext : "放出系") , Scores(SkillType: .特質系, score: 0 ,skilltext : "特質系") ]

struct Option{
    let text:String
    let num : Int
    let skillTypes : [SkillType]
    
}


struct Questions {
    let question: String
    let options: [Option]
    let score : Int
//    var buttons: Int
}

var questions:[Questions] = [Questions(question: "有一天你走在路上看到兩隻被拋棄的黑貓，你會怎麼做？",
                            options: [Option(text: "帶回去", num: 0, skillTypes: [.強化系,.放出系,.操作系]),
                                      Option(text: "不帶回去", num: 1, skillTypes: [.變化系,.具現化系,.特質系])],score: 10),
                             Questions(question: "請選出你「帶回去」或「不帶回去」的理由？",
                            options: [Option(text: "不管怎樣都一定要養！", num: 0, skillTypes: [.強化系]),
                                      Option(text: "雖然養的，不過被反對了於是去找別人養", num: 1, skillTypes: [.操作系]),
                                      Option(text: "不想自己養，會找別人來養", num: 2, skillTypes: [.放出系]),
                                      Option(text: "因為家裡不能養寵物", num: 3, skillTypes: [.特質系]),
                                      Option(text: "因為黑貓不吉利", num: 4, skillTypes: [.具現化系]),
                                      Option(text: "雖然很可愛，但總有一天會感到厭煩", num: 5, skillTypes: [.變化系]),
                                      Option(text: "其他理由", num: 6, skillTypes: [.其他])],score: 30),
                             Questions(question: "早上起來，天空昏暗，天氣預報說有40%的機率會下雨，那麼你出門時會帶傘嗎？",
                                       options: [Option(text: "覺得一定會下雨，因此帶傘(正統的傘)出門", num: 0, skillTypes: [.具現化系,.操作系]),
                                                 Option(text: "似乎會下雨，帶傘(折傘)出門", num: 1, skillTypes: [.放出系,.特質系]),
                                                 Option(text: "不帶傘", num: 2, skillTypes: [.強化系,.變化系])],score: 15),
                             Questions(question: "你和朋友約好出去玩，你在約定的地點等待，但是時間到了朋友沒出現，那麼你大約會忍耐多久？",
                                       options: [Option(text: "無法忍耐", num: 0, skillTypes: [.放出系]),
                                                 Option(text: "5分左右", num: 1, skillTypes: [.具現化系]),
                                                 Option(text: "10分左右", num: 2, skillTypes: [.強化系]),
                                                 Option(text: "15分左右", num: 3, skillTypes: [.特質系]),
                                                 Option(text: "20分左右", num: 4, skillTypes: [.變化系]),
                                                 Option(text: "一直等下去", num: 5, skillTypes: [.操作系]),],score: 30),
                             Questions(question: "情況相反，你在約定的地方遲遲未出現，朋友似乎很生氣，你會怎麼道歉（解釋）？",
                                       options: [Option(text: "道歉，3天內向對方解釋清楚", num: 0, skillTypes: [.具現化系]),
                                                 Option(text: "道歉，拼命取悅朋友", num: 1, skillTypes: [.放出系]),
                                                 Option(text: "道歉，從今以後提早20分到達", num: 2, skillTypes: [.特質系]),
                                                 Option(text: "解釋，但不認錯", num: 3, skillTypes: [.變化系]),
                                                 Option(text: "解釋，並取悅朋友", num: 4, skillTypes: [.操作系]),
                                                 Option(text: "不會有這種事發生", num: 5, skillTypes: [.強化系]),],score: 30),
                             Questions(question: "早上起來後發現自己變成某種動物，是哪一種？",
                                       options: [Option(text: "羊", num: 0, skillTypes: [.放出系]),
                                                 Option(text: "黑豹", num: 1, skillTypes: [.操作系]),
                                                 Option(text: "猴子", num: 2, skillTypes: [.具現化系]),
                                                 Option(text: "老虎", num: 3, skillTypes: [.強化系]),
                                                 Option(text: "狼", num: 4, skillTypes: [.變化系]),
                                                 Option(text: "飛馬", num: 5, skillTypes: [.放出系]),
                                                 Option(text: "獅子", num: 6, skillTypes: [.特質系])],score: 30),
                             Questions(question: "為何想變成Q6的動物？",
                                       options: [Option(text: "因為我用動物占卜出來的就是那種動物", num: 0, skillTypes: [.具現化系,.操作系]),
                                                 Option(text: "喜歡這種動物", num: 1, skillTypes: [.強化系,.放出系]),
                                                 Option(text: "想很久後的結果", num: 2, skillTypes: [.變化系,.特質系]),
                                                 Option(text: "直覺", num: 3, skillTypes: [.全加5])],score: 30),
                             Questions(question: "你最得意的科目是什麼？",
                                       options: [Option(text: "數理化", num: 0, skillTypes: [.具現化系]),
                                                 Option(text: "語文", num: 1, skillTypes: [.操作系]),
                                                 Option(text: "音樂美術", num: 2, skillTypes: [.放出系]),
                                                 Option(text: "政治社會歷史", num: 3, skillTypes: [.特質系]),
                                                 Option(text: "體育", num: 4, skillTypes: [.強化系]),
                                                 Option(text: "沒有特別喜歡的科目", num: 5, skillTypes: [.變化系]),],score: 30),
                             Questions(question: "反之，你最討厭的科目是什麼？",
                                       options: [Option(text: "數理化", num: 0, skillTypes: [.強化系]),
                                                 Option(text: "語文", num: 1, skillTypes: [.特質系]),
                                                 Option(text: "音樂美術", num: 2, skillTypes: [.變化系]),
                                                 Option(text: "政治社會歷史", num: 3, skillTypes: [.操作系]),
                                                 Option(text: "體育", num: 4, skillTypes: [.具現化系]),
                                                 Option(text: "沒有特別討厭的科目", num: 5, skillTypes: [.放出系]),],score: 30),
                             Questions(question: "假如你是賊的話，第一次要偷什麼？",
                                       options: [Option(text: "人命", num: 0, skillTypes: [.變化系]),
                                                 Option(text: "錢", num: 1, skillTypes: [.強化系]),
                                                 Option(text: "鑽石、寶石", num: 2, skillTypes: [.放出系]),
                                                 Option(text: "美術品", num: 3, skillTypes: [.特質系]),
                                                 Option(text: "古書", num: 4, skillTypes: [.具現化系]),
                                                 Option(text: "不會成為賊", num: 5, skillTypes: [.操作系]),],score: 30),
                             Questions(question: "選出你認為屬於自己的優點。",
                                       options: [Option(text: "規規矩矩", num: 0, skillTypes: [.具現化系]),
                                                 Option(text: "有責任感", num: 1, skillTypes: [.強化系]),
                                                 Option(text: "可以信賴", num: 2, skillTypes: [.操作系]),
                                                 Option(text: "會厲害的技巧", num: 3, skillTypes: [.特質系]),
                                                 Option(text: "對自己嚴格", num: 4, skillTypes: [.放出系]),
                                                 Option(text: "有行動力", num: 5, skillTypes: [.強化系]),
                                                 Option(text: "有很多朋友", num: 6, skillTypes: [.放出系]),
                                                 Option(text: "善變", num: 7, skillTypes: [.變化系]),
                                                 Option(text: "唱歌畫畫俱佳", num: 8, skillTypes: [.特質系]),
                                                 Option(text: "利己主義", num: 9, skillTypes: [.變化系]),
                                                 Option(text: "對精細作業很在行", num: 10, skillTypes: [.具現化系]),
                                                 Option(text: "隨自我的步調行事", num: 11, skillTypes: [.操作系])],score: 30),
                             Questions(question: "選出你認為屬於自己的缺點。",
                                       options: [Option(text: "協調性差", num: 0, skillTypes: [.強化系]),
                                                 Option(text: "粗心", num: 1, skillTypes: [.放出系]),
                                                 Option(text: "說謊", num: 2, skillTypes: [.變化系]),
                                                 Option(text: "討厭的人有10人以上", num: 3, skillTypes: [.具現化系]),
                                                 Option(text: "小氣,看重金錢", num: 4, skillTypes: [.變化系]),
                                                 Option(text: "不了解道理就無法同意", num: 5, skillTypes: [.操作系]),
                                                 Option(text: "自大", num: 6, skillTypes: [.特質系]),
                                                 Option(text: "為達目的不擇手段", num: 7, skillTypes: [.具現化系]),
                                                 Option(text: "容易焦躁", num: 8, skillTypes: [.放出系]),
                                                 Option(text: "心軟、愛哭", num: 9, skillTypes: [.特質系]),
                                                 Option(text: "慢半拍", num: 10, skillTypes: [.操作系]),
                                                 Option(text: "意志不堅、發呆", num: 11, skillTypes: [.強化系])],score: 30),
                             Questions(question: "要殺人的話會想殺那種人？",
                                       options: [Option(text: "自己的家人", num: 0, skillTypes: [.放出系]),
                                                 Option(text: "喜歡的人", num: 1, skillTypes: [.強化系]),
                                                 Option(text: "給自己大恥辱的人", num: 2, skillTypes: [.具現化系]),
                                                 Option(text: "自己", num: 3, skillTypes: [.操作系]),
                                                 Option(text: "無差別千人斬、看到人就殺", num: 4, skillTypes: [.變化系]),
                                                 Option(text: "背叛自己的人", num: 5, skillTypes: [.特質系]),],score: 30),
                             Questions(question: "你在什麼時候會想哭？",
                                       options: [Option(text: "最重要的人死時", num: 0, skillTypes: [.強化系]),
                                                 Option(text: "悲傷時", num: 1, skillTypes: [.具現化系]),
                                                 Option(text: "被甩時", num: 2, skillTypes: [.具現化系]),
                                                 Option(text: "結婚時", num: 3, skillTypes: [.放出系]),
                                                 Option(text: "覺得感動時", num: 4, skillTypes: [.操作系]),
                                                 Option(text: "達成大目標的時候", num: 5, skillTypes: [.強化系]),
                                                 Option(text: "工作上遇到大失敗的時候", num: 6, skillTypes: [.變化系]),
                                                 Option(text: "很長時間四周都沒有人的時候", num: 7, skillTypes: [.變化系]),
                                                 Option(text: "痛的時候", num: 8, skillTypes: [.放出系]),
                                                 Option(text: "自尊受到傷害的時候", num: 9, skillTypes: [.特質系]),
                                                 Option(text: "朋友背叛的時候", num: 10, skillTypes: [.特質系]),
                                                 Option(text: "通常不太會哭", num: 11, skillTypes: [.操作系])],score: 30),
                             Questions(question: "覺得魔術師很厲害？",
                                       options: [Option(text: "很厲害", num: 0, skillTypes: [.變化系]),
                                                 Option(text: "不厲害", num: 1, skillTypes: [.具現化系,.強化系,.操作系,.放出系,.特質系])],score: 6),
                             Questions(question: "靠行動力抓住犯人的警官是錯誤的。",
                                       options: [Option(text: "是錯誤的", num: 0, skillTypes: [.操作系]),
                                                 Option(text: "不是錯誤的", num: 1, skillTypes: [.具現化系,.強化系,.變化系,.放出系,.特質系])],score: 6),
                             Questions(question: "書架上的書，卷數（集數）零零落落的感覺很討厭？",
                                       options: [Option(text: "會", num: 0, skillTypes: [.具現化系]),
                                                 Option(text: "不會", num: 1, skillTypes: [.操作系,.強化系,.變化系,.放出系,.特質系])],score: 6),
                             Questions(question: "會不會見異思遷？",
                                       options: [Option(text: "會", num: 0, skillTypes: [.具現化系,.操作系,.變化系,.放出系,.特質系]),
                                                 Option(text: "不會", num: 1, skillTypes: [.強化系,])],score: 6),
                             Questions(question: "只要自己高興做什麼都可以？",
                                       options: [Option(text: "對", num: 0, skillTypes: [.特質系]),
                                                 Option(text: "不對", num: 1, skillTypes: [.操作系,.強化系,.變化系,.放出系,.具現化系])],score: 6),
                             Questions(question: "討厭整理東西？",
                                       options: [Option(text: "討厭", num: 0, skillTypes: [.放出系]),
                                                 Option(text: "不討厭", num: 1, skillTypes: [.操作系,.強化系,.變化系,.特質系,.具現化系])],score: 6)]
