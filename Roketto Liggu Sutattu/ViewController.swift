//
//  ViewController.swift
//  Roketto Liggu Sutattu
//
//  Created by François Juteau on 07/01/2018.
//  Copyright © 2018 Momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Datamanager.request()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

