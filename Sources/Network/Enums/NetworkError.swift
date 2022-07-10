//
//  File.swift
//  
//
//  Created by Emrah Akgül on 10/07/2022.
//

import Foundation

public enum NetworkError: Swift.Error {

    public enum Reason: Swift.Error {
        case missing
        case read(underlying: DecodingError)
    }
    case corruptedURL
    case connection(reason: Swift.Error)
    case http(code: Int)
    case data(reason: Reason)
    case other
}
