//
//  GenericCellViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class GenericCellViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var countriesDataCoordinator: SimpleCountriesDataCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    countriesDataCoordinator = SimpleCountriesDataCoordinator(tableView: tableView)
  }
  
}