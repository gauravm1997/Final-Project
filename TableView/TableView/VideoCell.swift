//
//  VideoCell.swift
//  TableView
//
//  Created by Apple on 4/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLable: UILabel!
    
    func setVideo(video: Video) {
        videoTitleLable.text = video.title
        
    }
    
}
