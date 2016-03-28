//
//  DataProvider.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

protocol DataProvider {
  
  associatedtype DataObject
  
  func objectAtIndexPath(indexPath: NSIndexPath) -> DataObject?
  func numberOfItemsInSection(section: Int) -> Int
}