//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by 狩野 恭平 on 2016/04/21.
//  Copyright © 2016年 狩野 恭平. All rights reserved.
//
import Foundation
import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let text: [String] = ["oneoneoneoneoneoneoneoneoneoneoneoneoneoneoneoneoneoneoneone", "twotwotwotwotwotwotwotwotwotwotwotwotwotwotwotwotwotwo", "threethreethreethreethreethreethreethreethreethreethreethree", "fourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfourfour", "fivefivefivefivefivefivefivefivefivefivefivefive", "sixsixsixsixsixsixsixsixsixsixsixsixsixsixsixsixsixsixsixsix", "sevensevensevensevensevensevensevensevensevenseven", "eigtheigtheigtheigtheigtheigtheigtheigtheigtheigtheigth", "nineninenineninenineninenineninenineninenineninenine", "tentententententententententententententententententen"]
    let contentTitle: [String] = ["title one", "title two", "title three", "title four", "title five", "title six", "title seven", "title eigth", "title nine", "title ten"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.tableView.registerNib(CustomTableViewCell.getNib(), forCellReuseIdentifier: CustomTableViewCell.identifer)
        self.tableView.estimatedRowHeight = 20
        self.tableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
// UITableViewDelegate
extension MainViewController : UITableViewDelegate {
    // Nothing.
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
extension MainViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("tableview numberOfRowsInSection")
        return self.text.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("tableview CellForRowAtIndexPath")
        let cell = self.tableView.dequeueReusableCellWithIdentifier(CustomTableViewCell.identifer) as! CustomTableViewCell
        cell.setup(self.text[indexPath.row], title: self.contentTitle[indexPath.row])
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        print("tableview numberOfSectionsInTableViewSAI")
        return 1
    }
}