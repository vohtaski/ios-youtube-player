//
//  VideoViewController.swift
//  youtube
//
//  Created by Evgeny on 21/1/16.
//  Copyright © 2016 vohtaski. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var webViewHeightConstraint: NSLayoutConstraint!
    
    var selectedVideo:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        if let video = self.selectedVideo {
            self.label.text = video.title
            
            let width = self.view.frame.size.width
            let height = width * 180 / 320
            
            self.webViewHeightConstraint.constant = height
            
            let videoEmbedStr = "<html> <head> <style type=\"text/css\"> body {background-color: transparenti; color: white} </style> </head> <body style=\"margin:0\"> <iframe width=\"" + String(width) + "\" height=\"" + String(height) + "\" src=\"https://www.youtube.com/embed/" + video.id + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe> </body> </html>"
            
            self.webView.loadHTMLString(videoEmbedStr, baseURL: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
