//
//  WebVideoViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/24/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class WebVideoViewController: UIViewController {
    
    var URLPath = "http://www.youtube.com/embed/Rva9ylPHi2w?rel=0&amp;controls=0&amp;showinfo=0"
    
  
   
    
    
    
    @IBOutlet weak var WebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
    

      

        loadAddressURL()
        // Do any additional setup after loading the view.
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadAddressURL() {
        let requestURL = NSURL(string:URLPath)
        let request = NSURLRequest(URL: requestURL);
        WebView.loadRequest(request)
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
