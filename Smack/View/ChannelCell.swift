//
//  ChannelCell.swift
//  Smack
//
//  Created by Virgil Nilson on 9/1/17.
//  Copyright © 2017 Virgil Nilson. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    func configureCell(channel: Channel) {
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
    }

}
