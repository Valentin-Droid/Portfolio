//
//  HttpClient.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation

final class HttpClient {
        
    private let session = URLSession.shared
    private lazy var decoder = JSONDecoder()
        
    func resource<T>(from url: URL) async throws -> T where T: Decodable {
        let result: (data: Data, response: URLResponse)
        
        do {
            result = try await session.data(from: url)
        } catch {
            throw HttpError.connectionFailure
        }
        
        try checkErrors(from: result.response)
        let resource: T = try parse(from: result.data)
        
        return resource
    }
        
    // TODO: Inform the errors.
    func checkErrors(from response: URLResponse) throws {
        guard let httpResponse = response as? HTTPURLResponse else {
            throw HttpError.unknownFailure
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw HttpError.requestFailed(statusCode: httpResponse.statusCode)
        }
    }
    
    func parse<T>(from data: Data) throws -> T where T: Decodable {
        try decoder.decode(T.self, from: data)
    }
}

enum HttpError: Error, Equatable {
    case connectionFailure
    case unknownFailure
    case requestFailed(statusCode: Int)
}
