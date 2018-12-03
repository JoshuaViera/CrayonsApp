//
//  CrayonDetailViewController.swift
//  CrayonApp
//
//  Created by Jane Zhu on 12/3/18.
//  Copyright © 2018 Jane Zhu. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    var crayon: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = crayon.color()
        
    }
    

}
