//
//  GesturesTabController.swift
//  UIKit-Gestures
//
//  Created by Yuliia Engman on 2/3/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var tapGestureVC: TabGestureController = {
        // we need the storyboard insatnce
        let storyboard = UIStoryboard(name: "TabGesture", bundle: nil) // name of Storyboard file
        
        guard let viewController = storyboard.instantiateViewController(identifier: "TabGestureController") as? TabGestureController else {
            fatalError("coudl not downcast to TabGestureController")
        }
        return viewController
    }()
    
//    private lazy var swipeGestureVC: SwipeGestureController = {
//        // we need the storyboard insatnce
//        let storyboard = UIStoryboard(name: "SwipeGesture", bundle: nil) // name of Storyboard file
//        
//        guard let viewController = storyboard.instantiateViewController(identifier: "SwipeGestureController") as? SwipeGestureController else {
//            fatalError("coudl not downcast to SwipeGestureController")
//        }
//        return viewController
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [tapGestureVC, SwipeGestureController()]

    }
    

}
