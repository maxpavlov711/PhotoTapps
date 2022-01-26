//
//  PhotoViewController.swift
//  PhotoTaps
//
//  Created by Max Pavlov on 26.01.22.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    
    @IBAction func shareAction(_ sender: Any) {
    }
    
}
