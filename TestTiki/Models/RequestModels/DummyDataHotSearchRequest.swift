//
//  DummyDataHotSearchRequest.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

struct DummyDataHotSearchRequest: APIRequest {

    var method: RequestType
    
    var path: String

    var parameters: [String : Any]
    
    init(params: [String: Any] = [:]) {
        method = RequestType.GET
        path = "/v3/146a98f0-76ad-42bb-b093-65f2bd4fd767"
        parameters = params
    }
}
