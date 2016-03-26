//
//  GenericCollectionViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class GenericCollectionViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  
  var countriesDataCoordinator: CollectionViewCountriesDataCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    countriesDataCoordinator = CollectionViewCountriesDataCoordinator(collectionView: collectionView)
  }
}
