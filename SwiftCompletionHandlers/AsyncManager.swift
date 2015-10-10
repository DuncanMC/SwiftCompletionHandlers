//
//  AsyncManager.swift
//  CompletionHandlers
//
//  Created by Duncan Champney on 5/14/15.
//  Copyright (c) 2015 Duncan Champney. All rights reserved.
//

import Foundation
import UIKit

/**
This class is a singleton that simulates providing async download services for an app.
Use the public contsant sharedAsyncManager to get a pointer to the singleton.

*/

class AsyncManager
{
  static let sharedAsyncManager = AsyncManager()
  
  /**
  This function simulates an async download of a file from the internet. 
  (It actually just asynchronously loads an image from the local image catalog after a delay)
  
  :param: **imageName**: the filename of the image to load.
  
  :param: **completion**: a closure to execute once the download is comlete.
  
  :returns: No return value
  
  The completion block takes 2 parameters, the UIImage that was downloaded, and a status message string.
  */
  
  func asyncFetchImage(imageName imageName: String,
    completion: (
      image: UIImage?,
      status: String) -> ())
  {
    print("Entering \(__FUNCTION__)")
    
    //Simulate a network operation by waiting a few seconds before loading an image
    let nSecDispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3.0 * Double(NSEC_PER_SEC)))
    let queue = dispatch_get_main_queue()
    dispatch_after(nSecDispatchTime, queue)
      {
        () -> Void in
        let result = UIImage(named: imageName)
        print("Loading image in background")
        let status = result != nil ? "image loaded" : "Error loading image"
        print("About to call completion handler")
        completion(image: result, status: status)
    }
    print("Leaving \(__FUNCTION__)")
  }
}
