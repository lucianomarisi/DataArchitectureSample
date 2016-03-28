//
//  CustomTableViewCellDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CustomTableViewCellDataCoordinator : NSObject, UITableViewDataSource {
  
  let countriesDataProvider = CountriesDataProvider()
  
  init(tableView: UITableView) {
    super.init()
    tableView.dataSource = self
  }
  
  //MARK: UITableViewDataSource
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(CustomTableViewCell.reuseIdentifier()) as? CustomTableViewCell else {
      fatalError("Could not dequeue CustomTableViewCell with identifier: \(CustomTableViewCell.reuseIdentifier())")
    }
    
    if let country = countriesDataProvider.objectAtIndexPath(indexPath) {
      cell.configureForObject(country)
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countriesDataProvider.numberOfItemsInSection(section)
  }
}