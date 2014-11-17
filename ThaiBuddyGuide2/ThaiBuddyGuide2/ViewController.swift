//
//  ViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var arrayOfItems : [Item] = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setUpItems()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpItems()
    {
        var item1 = Item(name: "temple1", imageName: "wat.jpeg")
        var item2 = Item(name: "temple2", imageName: "wat2.jpeg")
        
        arrayOfItems.append(item1)
        arrayOfItems.append(item2)
        
    }
    
    
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return arrayOfItems.count
    }
        
        // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
        // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("cell") as CustomCell
            
            if indexPath.row % 2 == 0
            {
                cell.backgroundColor = UIColor.purpleColor()
            }
            else
            {
                cell.backgroundColor = UIColor.orangeColor()
            }
            
            let item = arrayOfItems[indexPath.row]
            
            cell.setCell(item.name, imageName: item.imageName)
            
            return cell
            
        
            
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = arrayOfItems[indexPath.row]
        
        var detailedViewController: DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as DetailViewController
        
        detailedViewController.itemString = item.name
        detailedViewController.myDetailedImageName = item.imageName
       
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
    
    }
    
}


