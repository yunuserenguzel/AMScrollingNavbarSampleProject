//
//  NavigationController.swift
//  AMScrollingNavbarSampleProject
//
//  Created by Yunus Eren Guzel on 27/08/15.
//  Copyright (c) 2015 yeg. All rights reserved.
//
import UIKit
import AMScrollingNavbar

class NavigationController: ScrollingNavigationController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  override func prefersStatusBarHidden() -> Bool {
    return false
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
