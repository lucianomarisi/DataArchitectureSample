//
//  ConfigurableCell.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import Foundation

protocol ConfigurableCell {
  
  associatedtype DataObject
  
  func configureForObject(object: DataObject)
  
  static func reuseIdentifier() -> String
  
}