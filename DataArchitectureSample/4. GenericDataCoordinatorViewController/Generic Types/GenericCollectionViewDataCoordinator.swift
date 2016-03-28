//
//  GenericCollectionViewDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

class GenericCollectionViewDataCoordinator<CellType: UICollectionViewCell, DataProviderType: DataProvider where CellType: ConfigurableCell, CellType.DataObject == DataProviderType.DataObject> : NSObject, UICollectionViewDataSource {
  
  private let dataProvider: DataProviderType
  
  init(collectionView: UICollectionView, dataProvider: DataProviderType) {
    self.dataProvider = dataProvider
    super.init()
    collectionView.dataSource = self
  }
  
  //MARK: UITableViewDataSource
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCellWithReuseIdentifier(CellType.reuseIdentifier(), forIndexPath: indexPath) as? CellType else {
      fatalError("Could not dequeue cell of type: \(CellType.self) with identifier: \(CellType.reuseIdentifier())")
    }
    
    if let object = dataProvider.objectAtIndexPath(indexPath) {
      cell.configureForObject(object)
    }
    
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     return dataProvider.numberOfItemsInSection(section)
  }
  
}