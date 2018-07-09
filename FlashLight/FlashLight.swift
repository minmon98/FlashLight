//
//  FlashLight.swift
//  FlashLight
//
//  Created by Minh Mon on 7/9/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import UIKit

class FlashLight: UIViewController {
    
    // Controls
    
    @IBOutlet weak var imgBackground: UIView!
    var background: UIColor?
    
    // Main function
    
    override func viewDidLoad() {
        imgBackground.backgroundColor = background
    }
    
}
