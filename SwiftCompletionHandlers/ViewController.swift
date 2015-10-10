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
  
  /**
  This method uses the AsyncManager singleton to load an image into theImageView
  
  The AsyncManager function asyncFetchImage simulates aysnch download of an image from the internet.
  
  It takes a completion block that's called once the image download is complete.
*/
  @IBAction func loadImage(sender: UIButton)
  {
    let theAsyncManager = AsyncManager.sharedAsyncManager
    print("about to call asyncFetchImage")
    theAsyncManager.asyncFetchImage(imageName: "wareto_blue_150x115")
      {
        (image, status) -> () in
        print("Beginning completion block")
        self.theImageView.image = image
        print("In completion block, status = \(status)")
    }
    print("After call to asyncFetchImage")
  }
}

