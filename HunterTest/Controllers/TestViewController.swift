//
//  TestViewController.swift
//  HunterTest
//
//  Created by 王宜婕 on 2024/10/22.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var QtextLabel: UILabel!
    
    @IBOutlet var OptionButtons: [UIButton]!
    
    var Qnum:Int = 0
    var multiple:Int = 1
    
    var answer:String = ""
    var LastNum:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
//        questions.shuffle()
        
        Qnum = 0
        for i in 0..<ScoreList.count {
            ScoreList[i].score = 0
        }
        setTest()
        

        // Do any additional setup after loading the view.
    }
    
    func setOptions(count:Int){
        for i in 0..<count{
            OptionButtons[i].isHidden = false
        }
        for j in count..<OptionButtons.count{
            OptionButtons[j].isHidden = true
        }
    }
    
    
    func setTest(){
        //Qnumber
        navigationItem.title = "Q\(Qnum+1)"
        //question text
        QtextLabel.text = questions[Qnum].question
        
        //options set // 隨機
        var options = questions[Qnum].options
        if Qnum != 3{
            options.shuffle()
        }
        
        setOptions(count: options.count)
        for j in 0..<options.count{
            OptionButtons[j].setTitle(options[j].text, for: .normal)
            OptionButtons[j].tag = options[j].num
        }

        
    }
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        
        //取得對應位置
        let optionNum = sender.tag
        //問題選項
        let optionList = questions[Qnum].options
        //skillType
        let optionScoreSkillList = optionList[optionNum].skillTypes
//        print(optionScoreSkillList)
        
        for skill in optionScoreSkillList{
            if Qnum > 13 && optionNum == 0{
                multiple = 5
            }
            switch skill {
            case .強化系:
                ScoreList[0].score += questions[Qnum].score*multiple
            case .操作系:
                ScoreList[1].score += questions[Qnum].score*multiple
            case .具現化系:
                ScoreList[2].score += questions[Qnum].score*multiple
            case .變化系:
                ScoreList[3].score += questions[Qnum].score*multiple
            case .放出系:
                ScoreList[4].score += questions[Qnum].score*multiple
            case .特質系:
                ScoreList[5].score += questions[Qnum].score*multiple
            case .全加5:
                for i in 0..<6{
                    ScoreList[i].score += 5
                }
            default:
                break
            }
        }
        if Qnum < 19 {
            Qnum += 1
            setTest()
        }else {
            total()
            performSegue(withIdentifier: "ResultShow", sender: nil)
        }
    }
    func total(){
        var max = ScoreList[0].score
        var maxString = [ScoreList[0].skilltext]
        for i in 0..<6{
            if ScoreList[i].score > max{
                max = ScoreList[i].score
                maxString.removeAll()
                LastNum.removeAll()
                maxString.append(ScoreList[i].skilltext)
                LastNum.append(i)
            }else if ScoreList[i].score == max{
                maxString.append(ScoreList[i].skilltext)
                LastNum.append(i)
            }
        }
        print(maxString)
        if maxString.count > 1{
            let finalnum = Int.random(in: 0...maxString.count)
            answer = maxString[finalnum]
            LastNum.remove(at: finalnum)
        }else {
            answer = maxString[0]
        }
    }
    
    
    @IBSegueAction func ResultShow(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.result = answer
        controller?.resultNUmber = LastNum[0]
        return controller
    }
    

}

#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}

