//
//  App.swift
//  AppSource
//
//  Created by denis lavrov on 27/02/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

class App{
	var icon: UIImage = UIImage(named: "empty_icon.png")!
	var name: String
	var description: String = ""
	
	init(name: String){
		self.name = name
	}
}