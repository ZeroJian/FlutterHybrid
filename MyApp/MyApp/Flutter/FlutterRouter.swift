//
//  FlutterRouter.swift
//  MyApp
//
//  Created by ZeroJianMBP on 2019/4/16.
//  Copyright © 2019 ZeroJian. All rights reserved.
//

import Foundation
import Flutter

class FlutterRouter: NSObject {
    
    static let shared = FlutterRouter()
    
    var navigation: UINavigationController?
    
    var flutterViewController: FlutterViewController {
        return FlutterBoostPlugin.sharedInstance()?.currentViewController() ?? FlutterViewController()
    }
    
    override init() {
        super.init()
        FlutterBoostPlugin.sharedInstance()?.startFlutter(with: self, onStart: { (fvc) in
            
        })
    }
    
}

extension FlutterRouter: FLBPlatform {
    func openPage(_ name: String, params: [AnyHashable : Any], animated: Bool, completion: @escaping (Bool) -> Void) {
        
    }
    
    func closePage(_ uid: String, animated: Bool, params: [AnyHashable : Any], completion: @escaping (Bool) -> Void) {
        
    }
}
