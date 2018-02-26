//
//  ViewController.swift
//  Configure-Display-Orientation
//
//  Created by Luis Genaro Arvizu Vega on 24/02/18.
//  Copyright © 2018 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
//        return .landscape
//    }
//    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
//        return .landscapeRight
//    }
//    
//    override var shouldAutorotate: Bool{
//        return true
//    }
//    
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
//    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width / 2,
                                          y: UIScreen.main.bounds.size.height / 2,
                                          width: 80,
                                          height: 50))
        label.text = "Hi hi hi hi hi hi hi hi hi hi hi"
        label.sizeToFit()
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.size.width / 2, y: label.frame.origin.y + label.frame.height + 10, width: 70, height: 40))
        button.setTitle("Next Next Next Next Next Next Next Next Next Next Next Next", for: UIControlState.normal)
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(actNewView(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let vc = self.navigationController?.visibleViewController{
            if vc is SecondVC{
                UIDevice.current.setValue(Int(UIInterfaceOrientation.landscapeRight.rawValue), forKey: "orientation")
            }
        }
    }
    
    //    MARK:- ACTIONS
    @objc func actNewView(_ sender: UIButton){
        self.performSegue(withIdentifier: "seeView", sender: nil)
    }
    


}

