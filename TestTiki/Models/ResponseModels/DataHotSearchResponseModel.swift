//
//  DataHotSearchResponseModel.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

struct DataHotSearchResponseModel: Codable {
    let data: ItemHotSearch?
}

// MARK: - ItemHotSearch
struct ItemHotSearch: Codable {
    let items: [HotsearchModel]?
}


