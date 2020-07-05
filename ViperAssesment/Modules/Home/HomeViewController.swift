//
//  HomeViewController.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController, HomeViewInterface {

    // MARK: Constants
    let listImageCellName        = R.nib.listImageCell.name
    let listImageCellIdentifier  = "ListImageCell"

    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!

    // MARK: - Properties
    var presenter: HomePresenterInterface?
    var dataImage: [String] = ["image_one", "image_two", "image_three"]

}

extension HomeViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.presenter?.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter?.viewDidLoad()

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        self.presenter?.viewDidDisappear(animated)
    }

    func setupUI() {
        title = R.string.localizable.homeTitle()
        
        collectionView.delegate   = self
        collectionView.dataSource = self
        collectionView.configureNibs(nibName: listImageCellName, identifier: listImageCellIdentifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataImage.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: listImageCellIdentifier, for: indexPath) as! ListImageCell
        cell.itemImageView.image = UIImage(named: dataImage[indexPath.row])

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cvRect = collectionView.frame
        return CGSize(width: cvRect.width, height: 200)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.didSelectItem()
    }
}
