//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by medetdonmez on 12/06/2022.
//  Copyright (c) 2022 medetdonmez. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let log = Logger()
        log.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.png", in: resourcesBundle, compatibleWith: nil)
        print(image)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

