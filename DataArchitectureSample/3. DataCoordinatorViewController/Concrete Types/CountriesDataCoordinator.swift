//
//  ComplexCountriesDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CountryTableViewCell"

final class CountriesDataCoordinator : NSObject, UITableViewDataSource {
  
  let countriesDataProvider = CountriesDataProvider()
  
  init(tableView: UITableView) {
    super.init()
    let customCellNib = UINib(nibName: "\(CountryTableViewCell.self)", bundle: nil)
    tableView.registerNib(customCellNib, forCellReuseIdentifier: reuseIdentifier)
    tableView.dataSource = self
  }
  
  //MARK: UITableViewDataSource
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as? CountryTableViewCell else {
      fatalError("Could not dequeue CountryTableViewCell with identifier: \(reuseIdentifier)")
    }
    
    if let country = countriesDataProvider.objectAtIndexPath(indexPath) {
      cell.countryNameLabel?.text = country.name
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countriesDataProvider.numberOfItemsInSection(section)
  }
}