//
//  EndPointType.swift
//  NetworkLayer
//
//  Created by Currie on 5/29/20.
//  Copyright © 2020 Currie. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
