//
//  PhotoCell.swift
//  Angie
//
//  Created by Suhendra Ahmad on 7/6/17.
//  Copyright © 2017 Suhendra Ahmad. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    func setupUI() {
        // We want the image to fill the boundary so it will look nice and balance in the photo card
        self.photoImageView.contentMode = .scaleAspectFill
        
        // Mask the image to bound, so it will not fill over the boundary
        self.photoImageView.layer.masksToBounds = true
        
        // Give shadow to the content, so it will look nicer
        self.applyShadow(view: self.contentView)
    }
    
    func applyShadow(view: UIView) {
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowRadius = 1.0
        view.layer.shadowOpacity = 0.7
    }
}
