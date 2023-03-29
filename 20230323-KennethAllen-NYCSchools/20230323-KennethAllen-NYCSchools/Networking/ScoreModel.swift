//
//  ScoreModel.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation

struct ScoreModel: Decodable {
    let dbn: String
    let num_of_sat_test_takers: String?
    let sat_critical_reading_avg_score: String?
    let sat_math_avg_score: String?
    let sat_writing_avg_score: String?
}

extension ScoreModel: Identifiable {
    var id: String {
        return dbn
    }
}

extension ScoreModel: Hashable {
    static func == (lhs: ScoreModel, rhs: ScoreModel) -> Bool {
        lhs.dbn == rhs.dbn
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(dbn)
    }
}
