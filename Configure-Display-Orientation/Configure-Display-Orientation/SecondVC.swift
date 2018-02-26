//
//  SecondVC.swift
//  Configure-Display-Orientation
//
//  Created by Luis Genaro Arvizu Vega on 25/02/18.
//  Copyright © 2018 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width / 2,
                                          y: UIScreen.main.bounds.size.height / 2,
                                          width: 80,
                                          height: 50))
        label.text = "Bye bye bye bye"
        label.sizeToFit()
        self.view.addSubview(label)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let vc = self.navigationController?.visibleViewController{
            if vc is ViewController{
                UIDevice.current.setValue(Int(UIInterfaceOrientation.portrait.rawValue), forKey: "orientation")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
