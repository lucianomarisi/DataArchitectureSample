//
//  CountriesDataSource.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CountriesDataSource: NSObject, UITableViewDataSource {
  
  private let countries: [Country] = Country.allCountries()
  private let reuseIdentifier: String
  
  init(reuseIdentifier: String) {
    self.reuseIdentifier = reuseIdentifier
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as? CountryTableViewCell else {
      fatalError("Could not dequeue cell with identifier: \(reuseIdentifier)")
    }
    let country = countries[indexPath.row]
    cell.countryNameLabel?.text = country.name
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countries.count
  }
  
} 