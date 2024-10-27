//
//  ResultViewController.swift
//  HunterTest
//
//  Created by 王宜婕 on 2024/10/22.
//

import UIKit

class ResultViewController: UIViewController {
    var result: String?
    var resultNUmber: Int?
    @IBOutlet weak var SkillImageView: UIImageView!
    
    @IBOutlet weak var PeopleImageView: UIImageView!
    @IBOutlet weak var PeopleLabel: UILabel!
    @IBOutlet weak var badLabel: UILabel!
    @IBOutlet weak var goodLabel: UILabel!
    @IBOutlet weak var IntroduceLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        ResultLabel.text = result
        // Do any additional setup after loading the view.
        updateUI()
    }
    func updateUI(){
        SkillImageView.image = UIImage(named: "\(result!)")
        PeopleImageView.image = UIImage(named: "\(introduces[resultNUmber!].people)")
        IntroduceLabel.text = "\(introduces[resultNUmber!].text)"
        goodLabel.text = "\(introduces[resultNUmber!].goodText)"
        badLabel.text = "\(introduces[resultNUmber!].badText)"
        PeopleLabel.text = "\(introduces[resultNUmber!].people)"
    }



}
#Preview{
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //withIdentifier內打入View名稱
    return storyboard.instantiateViewController(withIdentifier: "ResultViewController")
}

