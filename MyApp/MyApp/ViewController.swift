//
//  ViewController.swift
//  MyApp
//
//  Created by ZeroJian on 2019/5/16.
//  Copyright © 2019 ZeroJian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
    }

    
    @IBAction func pushFlutterPage() {
        
        let flutterController = FlutterRouterViewController(page: .myFlutterPage, title: "Flutter Page")
        flutterController.becomingPush(root: self, animated: true)
        
    }

}

