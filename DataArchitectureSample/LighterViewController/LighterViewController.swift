//
//  LighterViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "reuseIdentifier"

final class LighterViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let countriesDataSource = CountriesDataSource(reuseIdentifier: reuseIdentifier)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = countriesDataSource
    let customCellNib = UINib(nibName: "\(CustomTableViewCell.self)", bundle: nil)
    tableView.registerNib(customCellNib, forCellReuseIdentifier: reuseIdentifier)
  }
  
}

