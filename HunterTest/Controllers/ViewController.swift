//
//  ViewController.swift
//  HunterTest
//
//  Created by 王宜婕 on 2024/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Start(_ sender: Any) {
        performSegue(withIdentifier: "TestShow", sender: nil)
    }

    @IBSegueAction func TestShow(_ coder: NSCoder) -> TestViewController? {
        let testViewController = TestViewController(coder: coder)
        
        return testViewController
    }
    
    @IBAction func unwindToStart(_ unwindSegue: UIStoryboardSegue) {
    }

    
}

#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}

