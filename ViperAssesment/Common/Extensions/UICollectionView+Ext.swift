//
//  UICollectionView+Ext.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

extension UICollectionView {

    func configureNibs(nibName: String, identifier: String) {
        let cellNib = UINib(nibName: nibName, bundle: nil)

        register(cellNib, forCellWithReuseIdentifier: identifier)
        reloadData()
    }
}
