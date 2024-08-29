//
//  CustomImageCell.swift
//  CollectionViewImageUpload
//
//  Created by Mapple.pk on 28/08/2024.
//

import UIKit

class CustomImageCell: UICollectionViewCell {
    @IBOutlet weak var imageIcon : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func config(image: UIImage?) {
        self.imageIcon.image = image
    }
}
