//
//  CountriesDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "reuseIdentifier"

final class CountriesDataCoordinator : NSObject, TableViewDataCoordinator {
  
  let countriesDataProvider = CountriesDataProvider()
  
  init(tableView: UITableView) {
    super.init()
    tableView.dataSource = self
    tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
  }
  
  //MARK: UITableViewDataSource
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) else {
      fatalError("Could not dequeue cell with identifier: \(reuseIdentifier)")
    }
    
    if let country = countriesDataProvider.objectAtIndexPath(indexPath) {
      cell.textLabel?.text = country.name
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countriesDataProvider.numberOfItemsInSection(section)
  }
}