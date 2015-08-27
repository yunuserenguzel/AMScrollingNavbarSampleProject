//
//  ViewController.swift
//  AMScrollingNavbarSampleProject
//
//  Created by Yunus Eren Guzel on 27/08/15.
//  Copyright (c) 2015 yeg. All rights reserved.
//

import UIKit

class ViewController: ScrollViewController, UITableViewDelegate, UITableViewDataSource {

  var tableView = UITableView(frame: CGRect.zeroRect, style: UITableViewStyle.Plain)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    var leftBarButtonItem = UIBarButtonItem(title: "|||",
      style: UIBarButtonItemStyle.Plain, target: self, action: "someAction")
    leftBarButtonItem
      .setTitleTextAttributes([
        NSFontAttributeName:UIFont.boldSystemFontOfSize(20),
        NSForegroundColorAttributeName:UIColor.blackColor()
        ], forState: UIControlState.Normal)
    navigationItem.leftBarButtonItem = leftBarButtonItem
    navigationItem.title = "Photo Stream"
    
    tableView.dataSource = self
    tableView.delegate = self
    tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    view.addSubview(tableView)
    scrollView = tableView
    
    tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
    view.addConstraints(NSLayoutConstraint
      .constraintsWithVisualFormat("H:|[table]|", options: nil, metrics: nil, views: ["table":tableView]))
    view.addConstraints(NSLayoutConstraint
      .constraintsWithVisualFormat("V:|[table]|", options: nil, metrics: nil, views: ["table":tableView]))
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func someAction() {
    
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
    return cell
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

