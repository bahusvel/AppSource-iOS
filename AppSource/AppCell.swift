//
//  AppCellTableViewCell.swift
//  AppSource
//
//  Created by denis lavrov on 27/02/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

class AppCell: UITableViewCell {
	var app: App? = nil

	@IBOutlet weak var appImage: UIImage!
	@IBOutlet weak var appTitle: UILabel!
	@IBOutlet weak var appDescription: UILabel!
	@IBOutlet weak var installButton: UIButton!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func loadAppContent(app: App){
		self.app = app
		appImage = app.icon
		appTitle.text = app.name
		appDescription.text = app.description
	}
	
	@IBAction func installClicked() {
	}

}
