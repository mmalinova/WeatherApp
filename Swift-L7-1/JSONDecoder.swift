//
//  JSONDecoder.swift
//

import Foundation

extension JSONDecoder {
    class var snakeCaseDecoder: JSONDecoder {
        let snakeCaseDecoder = JSONDecoder()
        snakeCaseDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return snakeCaseDecoder
    }
}
