//
//  ErrorDefine.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

import Foundation

enum ErrorCode: Int {
    case parse = 1000
    case unknow = 2000
    case tokenInvalid = 401
}

enum ErrorMessage: String {
    case parse = "ParseError"
    case network = "NetworkError"
    case tokenInvalid = "TokenInvalid"
}
