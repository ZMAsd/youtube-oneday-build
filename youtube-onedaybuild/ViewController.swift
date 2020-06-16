//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by admin on 2020/6/16.
//  Copyright © 2020 Min zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }

}

