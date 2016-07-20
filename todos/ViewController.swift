//
//  ViewController.swift
//  todos
//
//  Created by 李帅 on 7/20/16.
//  Copyright © 2016 shuaili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet var tblTasks: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.setupUI()
    }

//    func setupUI()
//    {
//        tableview.delegate = self
//        tableview.dataSource = self
//        
//    }

    //Datasource delegation
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskMgr.tasks.count
    }
    

    //returning to viewtable
    
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
//        let identifer: String = "myCell"
//        var cell = tableview.dequeueReusableCellWithIdentifier(identifer) //recycling the cell
//        
//        if cell == nil {
//            cell = UITableViewCell(style: .Default, reuseIdentifier: identifer)
//        }
//        
//        cell?.textLabel?.text = "Row \(indexPath.row) "
//        cell?.detailTextLabel?.text = "\(NSDate())"
//        
//        return cell!
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)//staying dark selected
    {
        print("selected row at \(indexPath.row)")
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 100
    }
    
    
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? // custom view for header. will be adjusted to default or specified header height
//    {
//        let myHeader = UIView(frame: CGRectMake(0,0, tableView.frame.width, 80))
//        myHeader.backgroundColor = UIColor.blackColor()
//        return myHeader
//    }
//    
//    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? // custom view for footer. will be adjusted to default or specified footer height
//    {
//        let myHeader = UIView(frame: CGRectMake(0,0, tableView.frame.width, 80))
//        myHeader.backgroundColor = UIColor.blackColor()
//        return myHeader
//    }

    
    
    
    
    
    
    
    
    @IBAction func actionGoToEntryVC(sender: AnyObject) {
        performSegueWithIdentifier("goToEntryVC", sender: nil)
    }
    
    
    
    
}

