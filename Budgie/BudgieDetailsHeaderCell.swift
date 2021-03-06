//
//  BudgieDetailsHeaderCell.swift
//  Budgie
//
//  Created by Francisco de la Pena on 5/19/15.
//  Copyright (c) 2015 Twister Labs, LLC. All rights reserved.
//

import UIKit

class BudgieDetailsHeaderCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var screenNameLabel: UILabel!
    @IBOutlet var tweetTextLabel: UILabel!
    @IBOutlet var createdAtLabel: UILabel!

    
    
    var tweet: Tweet! {
        didSet {
            profileImageView.setImageWithURL(NSURL(string: tweet.user!.profileImageUrl!))
            nameLabel.text = tweet.user?.name
            screenNameLabel.text = "@\(tweet.user!.screenName!)"
            tweetTextLabel.text = tweet.text
            createdAtLabel.text = tweet.text
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = UITableViewCellSelectionStyle.None
        self.accessoryType = UITableViewCellAccessoryType.None
        
        profileImageView.layer.cornerRadius = 5
        profileImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        screenNameLabel.preferredMaxLayoutWidth = screenNameLabel.frame.size.width
        tweetTextLabel.preferredMaxLayoutWidth = tweetTextLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layoutIfNeeded()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        screenNameLabel.preferredMaxLayoutWidth = screenNameLabel.frame.size.width
        tweetTextLabel.preferredMaxLayoutWidth = tweetTextLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
