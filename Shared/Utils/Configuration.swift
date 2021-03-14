//
//  Configuration.swift
//  GameNet (iOS)
//
//  Created by Alliston Aleixo on 14/03/21.
//

import Foundation

enum Config {
    enum Error: Swift.Error {
        case missingKey, invalidValue
    }

    static func value<T>(for key: String) throws -> T where T: LosslessStringConvertible {
        guard let object = Bundle.main.object(forInfoDictionaryKey:key) else {
            throw Error.missingKey
        }

        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
    
    static var oauthURL: URL {
        return try! URL(string: "http://" + Config.value(for: "OAUTH_URL"))!
    }
}

//enum API {
//    static var baseURL: URL {
//        return try! URL(string: "https://" + Configuration.value(for: "API_BASE_URL"))!
//    }
//}
