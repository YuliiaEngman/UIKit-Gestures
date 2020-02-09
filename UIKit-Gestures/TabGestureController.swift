//
//  TabGestureController.swift
//  UIKit-Gestures
//
//  Created by Yuliia Engman on 2/3/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

/*
 6 types of gestures:
 1. Handling Tap Gestures
 2. Handling Long-Press Gestures
 3. Handling Pan Gestures
 4. Handling Swipe Gestures
 5. Handling Pinch Gestures
 6. Handling Rotation Gestures
 */

class TabGestureController: UIViewController {

    @IBOutlet weak var heartImageView: UIImageView!
    
    // 1. configure a tap gesture
    private lazy var tabGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        // gesture.numberOfTapsRequired = 1
        //gesture.numberOfTouchesRequired = 1
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        // 2. add gerure to the image view
        heartImageView.addGestureRecognizer(tabGesture)
        heartImageView.isUserInteractionEnabled = true
    }

// 3. we need a selector method that gets called when the gesture is triggered
    @objc
    private func didTap(_ gesture: UITapGestureRecognizer) {
        // TODO: complete
        heartImageView.image = UIImage(systemName: "heart.fill")
    }
}
