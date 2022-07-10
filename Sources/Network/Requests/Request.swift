//
//  File.swift
//  
//
//  Created by Emrah Akgül on 11/06/2022.
//

import Foundation

public enum HTTPMethod: String {

    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

public protocol Request {

    var scheme: String { get }
    var baseURL: String { get }
    var path: String { get }
    var parameters: [URLQueryItem]? { get }
    var headers: [String: String] { get }
    var method: HTTPMethod { get }
    var body: Encodable? { get }
}
