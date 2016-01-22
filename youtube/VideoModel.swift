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
        video1.id = "rivWOtyi1Lo"
        video1.title = "Capture the Crown: Cardinals vs. Panthers"
        
        videos.append(video1)

        let video2 = Video()
        video2.id = "MD6yTEGhLWk"
        video2.title = "ЧЕЛСИ - ЭВЕРТОН 3:3 ОБЗОР МАТЧА 16.01.2016 [HD]"
        
        videos.append(video2)

        let video3 = Video()
        video3.id = "q4XDXHifc_o"
        video3.title = "Челси - Арсенал 6-0 22.03.14."
        
        videos.append(video3)
        
        let video4 = Video()
        video4.id = "TjuOaKoRG8o"
        video4.title = "17: Patriots vs. Broncos Playoff Trailer"
        
        videos.append(video4)
        
        let video5 = Video()
        video5.id = "DKwgo9Sp-p4"
        video5.title = "Top 10 Russell Wilson Highlights of 2015 | NFL"
        
        videos.append(video5)

        let video6 = Video()
        video6.id = "q3vGoIxIqhg"
        video6.title = "10 great goals from the 2014/15 UEFA Champions League"
        
        videos.append(video6)

        return videos
    }

}
