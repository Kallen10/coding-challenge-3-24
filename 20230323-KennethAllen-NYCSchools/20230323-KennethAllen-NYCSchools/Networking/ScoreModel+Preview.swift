//
//  ScoreModel+Preview.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation

extension ScoreModel {
    
    static var preview: ScoreModel = {
        let jsonString = "{\"dbn\":\"01M448\",\"school_name\":\"UNIVERSITY NEIGHBORHOOD HIGH SCHOOL\",\"num_of_sat_test_takers\":\"91\",\"sat_critical_reading_avg_score\":\"383\",\"sat_math_avg_score\":\"423\",\"sat_writing_avg_score\":\"366\"}"
        let jsonData = jsonString.data(using: .utf8)!
        let result = try! JSONDecoder().decode(ScoreModel.self, from: jsonData)
        return result
    }()
}
