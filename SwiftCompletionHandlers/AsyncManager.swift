//
//  AsyncManager.swift
//  CompletionHandlers
//
//  Created by Duncan Champney on 5/14/15.
//  Copyright (c) 2015 Duncan Champney. All rights reserved.
//

import Foundation
import UIKit

class AsyncManager
{
  static let sharedAsyncManager = AsyncManager()
  
  func asyncFetchImage(#imageName: String, completion: (image: UIImage?, status: String) -> ())
  {
    println("Entering \(__FUNCTION__)")
    
    //Simulate a network operation by waiting 1 second before loading an image
    let nSecDispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3.0 * Double(NSEC_PER_SEC)))
    let queue = dispatch_get_main_queue()
    dispatch_after(nSecDispatchTime, queue)
      {
        () -> Void in
        let result = UIImage(named: imageName)
        println("Loading image in background")
        let status = result != nil ? "image loaded" : "Error loading image"
        println("About to call completion handler")
        completion(image: result, status: status)
    }
    println("Leaving \(__FUNCTION__)")
  }
  
}
