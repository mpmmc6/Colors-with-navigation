//
//  ColorsViewController.swift
//  Colors
//
//  Created by Matthew McCarthy on 10/16/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
// @IBOutlet weak var colorsTableView: UITableView!
   // var colors = ["red" , "orange" , "yellow", "green", "blue" , "purple", "brown"]
    var colors =    [Color (name:"red", uiColor: UIColor.red),
                    Color (name:"orange", uiColor: UIColor.orange),
                    Color (name:"green", uiColor: UIColor.green),
                    Color (name:"blue", uiColor: UIColor.blue),
                    Color (name:"purple", uiColor: UIColor.purple),
                    Color (name:"brown", uiColor: UIColor.brown)
        ]
  
    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        self.title="Colors"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        colorsTableView.dataSource = self
//        colorsTableView.delegate = self
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell" , for: indexPath)
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
      
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected=false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row
            {
         destination.color = colors[row]
        }
    }
}
