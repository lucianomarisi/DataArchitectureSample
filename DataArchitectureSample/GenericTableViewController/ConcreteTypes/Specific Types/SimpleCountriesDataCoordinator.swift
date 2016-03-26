//
//  SimpleCountriesDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class SimpleCountriesDataCoordinator : GenericTableViewDataCoordinator<CustomTableViewCell, CountriesDataProvider> {
  
  init(tableView: UITableView, countriesDataProvider: CountriesDataProvider = CountriesDataProvider()) {
    super.init(tableView: tableView, dataProvider: countriesDataProvider)
  }
  
}
