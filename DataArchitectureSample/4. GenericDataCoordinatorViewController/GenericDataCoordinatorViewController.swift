//
//  GenericDataDataCoordinatorViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class GenericDataDataCoordinatorViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var collectionView: UICollectionView!
  
  var tableViewDataCoordinator: CountriesTableViewDataCoordinator?
  var collectionViewDataCoordinator: CollectionViewCountriesDataCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
    let countriesDataProvider = CountriesDataProvider()
    // Example of how the CountriesDataProvider can be reuse for different coordinators
    tableViewDataCoordinator = CountriesTableViewDataCoordinator(tableView: tableView, countriesDataProvider: countriesDataProvider)
    collectionViewDataCoordinator = CollectionViewCountriesDataCoordinator(collectionView: collectionView, countriesDataProvider: countriesDataProvider)
  }
}
