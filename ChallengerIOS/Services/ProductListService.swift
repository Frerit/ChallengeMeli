//
//  ProductListService.swift
//  ChallengerIOS
//
//  Created by Julian David Perez on 22/01/21.
//

import Foundation
import Alamofire

struct ProductListService {
    
    // MARK: - Singleton
    static let shared = ProductListService()
    
    // MARK: - URL
    private var base = "https://api.mercadolibre.com/sites"
    
    
    func get(url: String, completion: @escaping (Data?, Error?) -> ()) {
        AF.request(url)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                switch response.result {
                    case .success:
                        let result = response.data
                        print(result)
                        completion(result, nil)
                        return
                    case let .failure(error):
                        completion(nil, error)
                        return
                }
        }
    }
    
    // MARK: - Services
    func requestCategory(by name: String, completion: @escaping (ListProducts?, Error?) -> ()) {
        let url = "\(base)/MLA/search?q=\(name)"
        
        get(url: url) { (data, error) in
            do {
                let products = try JSONDecoder().decode(ListProducts.self, from: data! as Data)
                completion(products, nil)
            } catch let e as NSError {
                completion(nil, e)
            }
        }  
    }
}
