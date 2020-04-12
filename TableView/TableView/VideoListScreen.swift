//
//  VideoListScreen.swift
//  TableView
//
//  Created by Apple on 4/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    
    
    @IBOutlet weak var tableVide: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
        tableVide.delegate = self
        tableVide.dataSource = self
    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        let video1 = Video(title: "James Smith")
        let video2 = Video(title: "Chris Willams")
        let video3 = Video(title: "Mike Jones")
        let video4 = Video(title: "Chris Miller")
        let video5 = Video(title: "Mike Wilson")
        
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        
        return tempVideos
    }


}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView , numberOfRowsInSection section: Int) -> Int{
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
        
    }
    
}
