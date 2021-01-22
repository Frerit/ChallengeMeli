//
//  ProductCollectionViewCell.swift
//  ChallengerIOS
//
//  Created by Julian David Perez on 21/01/21.
//

import UIKit
import SDWebImage

class ProductCollectionViewCell: UICollectionViewCell {
 
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    static let identifier = "ProductCollectionViewCell"
    override var reuseIdentifier: String? { return ProductCollectionViewCell.identifier }
     
    var data: ListProductsResult? {
        didSet {
            setupCell()
            self.sizeToFit()
        }
    }
    
    func setupCell() {
        self.priceLabel.text = "$\(getCurrenciValue(data?.price ?? 0)) \(data?.currencyId ?? "")"
        self.descriptionLabel.text = data?.title
        self.imageView.sd_setImage(with: URL(string: data?.thumbnail ?? ""), completed: nil)
        self.sizeToFit()
    }
    
   
}
