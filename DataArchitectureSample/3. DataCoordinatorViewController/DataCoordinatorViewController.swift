//
//  DataCoordinatorViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class DataCoordinatorViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var countriesDataCoordinator: CountriesDataCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    countriesDataCoordinator = CountriesDataCoordinator(tableView: tableView)
  }
  
}