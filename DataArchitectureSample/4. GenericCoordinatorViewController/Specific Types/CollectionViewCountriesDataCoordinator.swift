//
//  CollectionViewCountriesDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CollectionViewCountriesDataCoordinator : GenericCollectionViewDataCoordinator<CountryCollectionViewCell, CountriesDataProvider> {
  
 init(collectionView: UICollectionView, countriesDataProvider: CountriesDataProvider = CountriesDataProvider()) {
    super.init(collectionView: collectionView, dataProvider: countriesDataProvider)
  }
  
}