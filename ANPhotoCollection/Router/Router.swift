//
//  Router.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 11/11/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit

typealias CompletionBlock = (() -> ())

enum SceneTransitionType {
    case changeRootView
    case push(navigationController: UINavigationController, animated: Bool)
    case present(viewController: UIViewController, animated: Bool, completion: CompletionBlock?)
}

protocol Router {
    
    var window: UIWindow? { get }
    
    func navigate(to vc: UIViewController, transitionType: SceneTransitionType)
}

extension Router {
    
    func navigate(to vc: UIViewController, transitionType: SceneTransitionType) {
        switch transitionType {
        case .changeRootView:
            window?.rootViewController = vc
            
        case .push(let navigationController, let animated):
            navigationController.pushViewController(vc, animated: animated)
            
        case .present(let fromVC, let animated, let completion):
            fromVC.present(vc, animated: animated, completion: completion)
        }
    }
}

class MainRouter: Router {
    
    let window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
}
