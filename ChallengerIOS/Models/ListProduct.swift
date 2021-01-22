// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let listProduct = try? newJSONDecoder().decode(ListProduct.self, from: jsonData)

import Foundation

struct ListProducts: Codable {

    let paging : ListProductsPaging?
    let query : String?
    let results : [ListProductsResult]?
    let siteId : String?

    enum CodingKeys: String, CodingKey {
        case paging = "paging"
        case query = "query"
        case results = "results"
        case siteId = "site_id"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        paging = try values.decodeIfPresent(ListProductsPaging.self, forKey: .paging)
        query = try values.decodeIfPresent(String.self, forKey: .query)
        results = try values.decodeIfPresent([ListProductsResult].self, forKey: .results)
        siteId = try values.decodeIfPresent(String.self, forKey: .siteId)
    }
}

struct ListProductsPaging: Codable {
    let limit : Int?
    let offset : Int?
    let primaryResults : Int?
    let total : Int?

    enum CodingKeys: String, CodingKey {
       case limit = "limit"
       case offset = "offset"
       case primaryResults = "primary_results"
       case total = "total"
    }
   
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        limit = try values.decodeIfPresent(Int.self, forKey: .limit)
        offset = try values.decodeIfPresent(Int.self, forKey: .offset)
        primaryResults = try values.decodeIfPresent(Int.self, forKey: .primaryResults)
        total = try values.decodeIfPresent(Int.self, forKey: .total)
    }

}

struct ListProductsResult : Codable {
    let acceptsMercadopago : Bool?
    let availableQuantity : Int?
    let condition : String?
    let currencyId : String?
    let id : String?
    let price : Double?
    let siteId : String?
    let soldQuantity : Int?
    let thumbnail : String?
    let title : String?

    enum CodingKeys: String, CodingKey {
         case acceptsMercadopago = "accepts_mercadopago"
         case availableQuantity = "available_quantity"
         case condition = "condition"
         case currencyId = "currency_id"
         case id = "id"
         case price = "price"
         case siteId = "site_id"
         case soldQuantity = "sold_quantity"
         case thumbnail = "thumbnail"
         case title = "title"
    }

    init(from decoder: Decoder) throws {
         let values = try decoder.container(keyedBy: CodingKeys.self)
         acceptsMercadopago = try values.decodeIfPresent(Bool.self, forKey: .acceptsMercadopago)
         availableQuantity = try values.decodeIfPresent(Int.self, forKey: .availableQuantity)
         condition = try values.decodeIfPresent(String.self, forKey: .condition)
         currencyId = try values.decodeIfPresent(String.self, forKey: .currencyId)
         id = try values.decodeIfPresent(String.self, forKey: .id)
         price = try values.decodeIfPresent(Double.self, forKey: .price)
         siteId = try values.decodeIfPresent(String.self, forKey: .siteId)
         soldQuantity = try values.decodeIfPresent(Int.self, forKey: .soldQuantity)
         thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
         title = try values.decodeIfPresent(String.self, forKey: .title)
    }

}

