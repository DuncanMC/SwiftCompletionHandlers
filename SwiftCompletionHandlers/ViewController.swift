//
//  ViewController.swift
//  CompletionHandlers
//
//  Created by Duncan Champney on 5/14/15.
//  Copyright (c) 2015 Duncan Champney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var theImageView: UIImageView!
    
  @IBAction func loadImage(sender: UIButton)
  {
    let theAsyncManager = AsyncManager.sharedAsyncManager
    println("about to call asyncFetchImage")
    theAsyncManager.asyncFetchImage(imageName: "wareto_blue_150x115")
      {
        (image, status) -> () in
        println("Beginning completion block")
        self.theImageView.image = image
        println("In completion block, status = \(status)")
    }
    println("After call to asyncFetchImage")
  }
}

