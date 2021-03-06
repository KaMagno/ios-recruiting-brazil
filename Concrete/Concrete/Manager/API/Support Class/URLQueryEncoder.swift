//
//  URLQueryEncoder.swift
//  Concrete
//
//  Created by Kaique Magno Dos Santos on 11/11/18.
//  Copyright © 2018 Kaique Magno Dos Santos. All rights reserved.
//

import Foundation

enum URLQueryEncoder {
    static func encode<T: Encodable>(_ encodable: T) throws -> String {
        let parametersData = try JSONEncoder().encode(encodable)
        let parameters = try JSONDecoder().decode([String: HTTPParameter].self, from: parametersData)
        let parametersString = parameters.map({ (value) -> String in
            return "\(value.key)=\(value.value)"
        })
        let parametersSequence = parametersString.joined(separator: "&")
        let parametersEncoded = parametersSequence.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        return parametersEncoded
    }
}
