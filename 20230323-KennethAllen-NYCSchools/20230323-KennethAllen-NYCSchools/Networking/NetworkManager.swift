//
//  NetworkManager.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation
import Combine

enum ServiceError: Error {
    case badURL
    case wrapped(Error)
}

protocol NetworkManaged {
    func schools() -> AnyPublisher<[SchoolModel], ServiceError>
    func scores() -> AnyPublisher<[ScoreModel], ServiceError>
}

class NetworkManager: NetworkManaged {
    
    private let decoder = JSONDecoder()
    
    func schools() -> AnyPublisher<[SchoolModel], ServiceError> {
        let urlString = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
        guard let url = URL(string: urlString) else {
            return Fail(error: ServiceError.badURL).eraseToAnyPublisher()
        }
        let result = URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { $0.data }
            .decode(type: [SchoolModel].self, decoder: decoder)
            .mapError { ServiceError.wrapped($0) }
            .eraseToAnyPublisher()
        return result
    }
    
    func scores() -> AnyPublisher<[ScoreModel], ServiceError> {
        let urlString = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
        guard let url = URL(string: urlString) else {
            return Fail(error: ServiceError.badURL).eraseToAnyPublisher()
        }
        let result = URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { $0.data }
            .decode(type: [ScoreModel].self, decoder: decoder)
            .mapError { ServiceError.wrapped($0) }
            .eraseToAnyPublisher()
        return result
    }
}
