//
//  ProductListViewModel.swift
//  ChallengerIOS
//
//  Created by Julian David Perez on 22/01/21.
//

import Foundation

class ProductListViewModel {
    
    private var dataService: ProductListService?
    weak var binding: ProductListViewModelToViewBinding?
    
    var product: ListProducts?
    
    var succes: (() -> ())?
    
    init(service: ProductListService? = nil, bingind: ProductListViewModelToViewBinding? = nil) {
        self.dataService = service
    }
     
    func fetchCategory(by name: String) {
        self.dataService?.requestCategory(by: name, completion: { [self] (model, error) in
            if let error = error {
                binding?.productViewModel(didGetProducts: model, error: error.localizedDescription)
                return
            }
            product = model
            succes?()
        })
    }
}
 
// MARK: - Protocols
protocol ProductListViewModelToViewBinding: class {
    func productViewModel(didGetProducts products: ListProducts?, error: String?)
}
