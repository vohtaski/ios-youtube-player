//
//  ViewController.swift
//  youtube
//
//  Created by Evgeny on 20/1/16.
//  Copyright © 2016 vohtaski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var videos:[Video] = [Video]()
    var selectedVideo:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model = VideoModel()
        self.videos = model.getVideos()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return (self.view.frame.size.width / 320) * 180
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BasicCell")!
                
        let video = videos[indexPath.row]
        let label = cell.viewWithTag(2) as! UILabel
        label.text = video.title
        
        let thumbUrlStr = "https://i1.ytimg.com/vi/\(video.id)/maxresdefault.jpg"
        let thumbUrl = NSURL(string: thumbUrlStr)
        let request = NSURLRequest(URL: thumbUrl!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data: NSData?, response:NSURLResponse?, err:NSError?) -> Void in
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                let imageView = cell.viewWithTag(1) as! UIImageView
                imageView.image = UIImage(data: data!)
            })
        })
        dataTask.resume()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedVideo = self.videos[indexPath.row]
        
        // call the segue manually
        self.performSegueWithIdentifier("goToVideo", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let videoViewController = segue.destinationViewController as! VideoViewController
        
        videoViewController.selectedVideo = self.selectedVideo
    }

}

