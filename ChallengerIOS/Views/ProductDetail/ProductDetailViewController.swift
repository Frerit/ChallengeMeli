//
//  ProductDetailViewController.swift
//  ChallengerIOS
//
//  Created by Julian David Perez on 21/01/21.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
     
    var detail: ListProductsResult?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = detail?.title
        self.navigationController?.navigationBar.backItem?.title = "Atras"
        self.priceLabel.text = "$\(getCurrenciValue(detail?.price ?? 0)) \(detail?.currencyId ?? "")"
        self.titleLabel.text = detail?.title
        self.descriptionLabel.text = detail?.siteId
        self.imageView.sd_setImage(with: URL(string: detail?.thumbnail ?? ""), completed: nil)
    }
     

}
