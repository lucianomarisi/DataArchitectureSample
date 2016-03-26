//
//  MixedViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class MixedViewController: UIViewController {
  
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var tableView: UITableView!

  var collectionViewDataCoordinator: CollectionViewCountriesDataCoordinator?
  var tableViewDataCoordinator: SimpleCountriesDataCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
    let countriesDataProvider = CountriesDataProvider()
    collectionViewDataCoordinator = CollectionViewCountriesDataCoordinator(collectionView: collectionView, countriesDataProvider: countriesDataProvider)
    tableViewDataCoordinator = SimpleCountriesDataCoordinator(tableView: tableView, countriesDataProvider: countriesDataProvider)
  }
}
