//
//  SecondViewController.swift
//  MapPractice
//
//  Created by Miguel Sanchez on 2/22/15.
//  Copyright (c) 2015 Miguel Sanchez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView! //adds a new TableView
    var items: [String] = ["Trail Info", "Safety", "Nearby Attractions", "About"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell") //sets up TableViewCell
        tableView.delegate = self //added the TableView delegate and datasource to this ViewController
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count //returns the number of rows in section
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell //create new UITableViewCell var
        cell.textLabel?.text = self.items[indexPath.row] //set each row as array of text created
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!") //prints out the cell you selected
        
    }

}

