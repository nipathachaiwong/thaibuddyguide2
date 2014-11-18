//
//  DetailViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class DetailViewController2: UIViewController {

    @IBOutlet weak var myDetailedImageView: UIImageView!
   
    
    @IBOutlet weak var itemLabel: UILabel!
    
    var itemString: String?
    var myDetailedImageName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemLabel.text = itemString
        self.myDetailedImageView.image = UIImage(named: myDetailedImageName!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        self.dismissViewControllerAnimated(true,completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
