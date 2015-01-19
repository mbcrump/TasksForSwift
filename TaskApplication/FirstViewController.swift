//
//  FirstViewController.swift
//  TaskApplication
//
//  Created by Michael Crump on 1/19/15.
//  Copyright (c) 2015 Michael Crump. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

{

    @IBOutlet var tblTasks : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblTasks.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default Tasks")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if (editingStyle == UITableViewCellEditingStyle.Delete){
        
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
        
        
        }
        
    }



