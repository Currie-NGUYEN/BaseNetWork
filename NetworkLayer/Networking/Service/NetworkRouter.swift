//
//  NetworkRouter.swift
//  NetworkLayer
//
//  Created by Currie on 5/29/20.
//  Copyright © 2020 Currie. All rights reserved.
//

import Foundation

public typealias NetworkRouterComplition = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterComplition)
    func cancel()
}
