//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Matthew McCarthy on 10/23/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    var color: Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorNameLabel.text=color?.name
        self.view.backgroundColor = color?.uiColor
        self.title = color?.name
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
