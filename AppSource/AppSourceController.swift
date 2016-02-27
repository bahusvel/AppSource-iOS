//
//  AppSourceController.swift
//  AppSource
//
//  Created by denis lavrov on 27/02/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

class AppSourceController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITabBarDelegate {
	
	@IBOutlet weak var globalTab: UITabBarItem!
	@IBOutlet weak var localTab: UITabBarItem!
	@IBOutlet weak var addButton: UIBarButtonItem!
	
	
	static let cellIdentifier = "appCell"
	static var appsInView = [App]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		for i in 0..<5{
			AppSourceController.appsInView.append(App(name: "App Number " + String(i)))
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return AppSourceController.appsInView.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier(AppSourceController.cellIdentifier, forIndexPath: indexPath) as! AppCell
		let app = AppSourceController.appsInView[indexPath.row]
		cell.loadAppContent(app)
		return cell
	}
	
	func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
		switch item{
		case globalTab:
			print("Global")
			addButton.enabled = false
		case localTab:
			print("Local")
			addButton.enabled = true
		default:
			print("Invalid Tab")
		}
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
