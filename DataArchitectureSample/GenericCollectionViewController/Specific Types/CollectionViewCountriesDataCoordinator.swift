//
//  CollectionViewCountriesDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CollectionViewCountriesDataCoordinator : GenericCollectionViewDataCoordinator<CustomCollectionViewCell, CountriesDataProvider> {
  
  private let countriesDataProvider = CountriesDataProvider()
  
  init(collectionView: UICollectionView) {
    super.init(collectionView: collectionView, dataProvider: countriesDataProvider)
  }
  
}