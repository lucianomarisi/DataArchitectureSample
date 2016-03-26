//
//  CustomTableViewCellViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CustomTableViewCellViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var countriesDataCoordinator: CustomTableViewCellDataCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    countriesDataCoordinator = CustomTableViewCellDataCoordinator(tableView: tableView)
  }
  
}