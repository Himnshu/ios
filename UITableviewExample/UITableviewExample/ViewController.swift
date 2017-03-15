//
//  ViewController.swift
//  UITableviewExample
//
//  Created by osx on 15/03/17.
//  Copyright © 2017 com.domain.UITableviewExample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mTableView: UITableView!
    
    let mSimpleTableIdentifier = "Cell"
    
    var mListArray = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mTableView.contentInset = UIEdgeInsetsMake(-60,0,0,0);
        mListArray = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg", "Noodle with BBQ Pork", "Japanese Noodle with Pork", "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mListArray.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 44;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier(mSimpleTableIdentifier)
        if (cell == nil)
        {
            var nib = NSBundle.mainBundle().loadNibNamed("Cell", owner: self, options: nil)
            cell = nib?[0] as! Cell
        }
        var cell1 = cell as! Cell
        
        var name = mListArray[indexPath.row] as! String
        
        cell1.mName.text = name
        
        return cell!
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }


}

