//
//  VideoModel.swift
//  youtube
//
//  Created by Evgeny on 21/1/16.
//  Copyright © 2016 vohtaski. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    
    func getVideos() -> [Video] {
        var videos = [Video]()
        
        let video1 = Video()
        video1.id = "PlhFWT7vAEw"
        video1.title = "Deep Learning Lecture 1: Introduction"
        
        videos.append(video1)

        let video2 = Video()
        video2.id = "DHspIG64CVM"
        video2.title = "Deep Learning Lecture 2: linear models"
        
        videos.append(video2)

        let video3 = Video()
        video3.id = "kPrHqQzCkg0"
        video3.title = "Deep Learning Lecture 3: Maximum likelihood and information"
        
        videos.append(video3)
        
        let video4 = Video()
        video4.id = "VR0W_PNwLGw"
        video4.title = "Deep Learning Lecture 4: Regularization, model complexity and data complexity (part 1)"
        
        videos.append(video4)
        
        let video5 = Video()
        video5.id = "qz9bKfOqd0Y"
        video5.title = "Deep Learning Lecture 5: Regularization, model complexity and data complexity (part 2)"
        
        videos.append(video5)
        
        return videos
    }

}
