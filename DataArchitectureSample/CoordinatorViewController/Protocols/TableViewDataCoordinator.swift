//
//  TableViewDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

protocol TableViewDataCoordinator : UITableViewDataSource {
  
  init(tableView: UITableView)
}