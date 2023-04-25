//
//  SearchUiKit.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 24.04.2023.
//
 

import UIKit
import SnapKit
import SwiftUI

struct SearchUiKitRepresentable: UIViewRepresentable {
    
    let data1: [SearchViewModelCategory] = SearchViewModelCategory.categoryList
    
    func makeUIView(context: Context) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
                let width = (UIScreen.main.bounds.width - 30) / 2
                let height = CGFloat(110)
                layout.itemSize = CGSize(width: width, height: height)
                layout.minimumInteritemSpacing = 10
                layout.minimumLineSpacing = 10 
                layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
                let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
                collectionView.dataSource = context.coordinator
                collectionView.register(SearchUiKitCell.self, forCellWithReuseIdentifier: "MyCell")
                collectionView.backgroundColor = .white
           
           return collectionView
       }
    
    func updateUIView(_ uiView: UICollectionView, context: Context) {
        
    }
    
    func makeCoordinator() -> SearchUiKitCoordinator {
        Coordinator(self)
    }
    
}




