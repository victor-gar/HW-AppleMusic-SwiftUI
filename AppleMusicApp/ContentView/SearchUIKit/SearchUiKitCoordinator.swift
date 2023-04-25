//
//  SearchUiKitCoordinator.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 25.04.2023.
//

import UIKit
import SwiftUI

class SearchUiKitCoordinator: NSObject, UICollectionViewDataSource {
    var parent: SearchUiKitRepresentable
    
    init(_ parent: SearchUiKitRepresentable) {
        self.parent = parent
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return parent.data1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! SearchUiKitCell
        
        cell.configure(data: parent.data1[indexPath.item], indexPath: indexPath)
        
        return cell
    }
}
