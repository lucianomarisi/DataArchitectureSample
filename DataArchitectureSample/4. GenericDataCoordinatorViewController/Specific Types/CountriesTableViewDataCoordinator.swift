//
//  CountriesTableViewDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CountriesTableViewDataCoordinator : GenericTableViewDataCoordinator<CountriesDataProvider, CountryTableViewCell> {
  
  init(tableView: UITableView, countriesDataProvider: CountriesDataProvider = CountriesDataProvider()) {
    let customCellNib = UINib(nibName: "\(CountryTableViewCell.self)", bundle: nil)
    tableView.registerNib(customCellNib, forCellReuseIdentifier: CountryTableViewCell.reuseIdentifier())
    super.init(tableView: tableView, dataProvider: countriesDataProvider)
  }
  
}
