//
//  CountriesDataProvider.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import Foundation

struct CountriesDataProvider : DataProvider {
  
  private let allCountries = Country.allCountries()
  
  func objectAtIndexPath(indexPath: NSIndexPath) -> Country? {
    return allCountries[indexPath.row]
  }
  
  func numberOfItemsInSection(section: Int) -> Int {
    return allCountries.count
  }
}