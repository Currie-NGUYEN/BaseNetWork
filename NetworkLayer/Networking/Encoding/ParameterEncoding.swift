//
//  ParameterEncoding.swift
//  NetworkLayer
//
//  Created by Currie on 5/29/20.
//  Copyright © 2020 Currie. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public enum NetworkError : String, Error {
    case parametersNil = "Parameters were nil"
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}
