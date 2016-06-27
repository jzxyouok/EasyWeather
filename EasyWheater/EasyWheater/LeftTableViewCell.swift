//
//  LeftTableViewCell.swift
//  EasyWheater
//
//  Created by zly.private on 16/6/15.
//  Copyright © 2016年 private. All rights reserved.
//

import UIKit

class LeftTableViewCell: UITableViewCell {
    
    // 位置
    var locationText = Tools.getUserDefaults("city") as! String {
        didSet{
            locationLabel.text = locationText
        }
    }
    
    //温度
    var weatherText:String = Tools.getUserDefaults("temperature") as! String
//    {
//        didSet{
//            weatherButton.setTitle(weatherText, forState: .Normal)
//        }
//    }

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        locationLabel.text = locationText
        weatherButton.setTitle(weatherText, forState: .Normal)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}