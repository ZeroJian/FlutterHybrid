//
//  FlutterRouterViewController.swift
//  MyApp
//
//  Created by ZeroJianMBP on 2019/4/16.
//  Copyright © 2019 ZeroJian. All rights reserved.
//

import UIKit

protocol FlutterRouterPort {
    
    var name: String { get }
    var params: [String:Any] { get }
}



enum FlutterPage: FlutterRouterPort {
    case myFlutterPage
    
    var name: String {
        switch self {
        case .myFlutterPage:
            return "MyFlutterPage"
        }
    }
    
    var params: [String:Any] {
        switch self {
        case .myFlutterPage:
            return [:]
        }
    }    
}


class FlutterRouterViewController: FLBFlutterViewContainer {
    
    convenience init(name: String, params: [String:Any]) {
        self.init()
        self.setName(name, params: params)
    }
    
    /// push
    func becomingPush(root: UIViewController?, animated: Bool) {
        FlutterRouter.shared.navigation = root?.navigationController
        FlutterRouter.shared.openPage(self.name, params: self.params, animated: true) { (_) in
            
        }
        root?.navigationController?.pushViewController(self, animated: animated)
    }
    
    /// present
    func becomingPresent(root: UIViewController?, animated: Bool, completion: (() -> Void)?) {
        FlutterRouter.shared.openPage(self.name, params: self.params, animated: true) { (_) in
            
        }
        root?.present(self, animated: animated, completion: completion)
    }
    
    /// presentNavigation
    func becomingPresentNavigation(root: UIViewController, animated: Bool, completion: (() -> Void)?) {
        let navigation = UINavigationController(rootViewController: self)
        FlutterRouter.shared.navigation = navigation
        becomingPresent(root: navigation, animated: animated, completion: completion)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension FlutterRouterViewController {
    
    convenience init(page: FlutterPage, title: String?) {
        self.init(name: page.name, params: page.params)
        self.title = title
    }
    
}

