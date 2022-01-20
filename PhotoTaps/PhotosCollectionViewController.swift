//
//  PhotosCollectionViewController.swift
//  PhotoTaps
//
//  Created by Max Pavlov on 20.01.22.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        cell.backgroundColor = .blue
    
        return cell
    }
}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
//    Размер ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRows: CGFloat = 2 // объекты на ряд
        let paddingWith = 20 * (itemsPerRows + 1) // Сколько отступов на ряду будет
        let availableWidth = collectionView.frame.width - paddingWith // Какая ширина доступна для ячеек
        let widthPerItem = availableWidth / itemsPerRows // точно доступна ширина для 1 объекта
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
//    Создание отступов (границы) ячеек
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
//    Растояние по линиям
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
