//
//  ScoreFormatter.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import Foundation

struct ScoreFormatter {
    
    func satAverageMath(score: ScoreModel) -> String {
        score.sat_math_avg_score ?? ""
    }
    
    func satAverageReading(score: ScoreModel) -> String {
        score.sat_critical_reading_avg_score ?? ""
    }
    
    func satAverageWriting(score: ScoreModel) -> String {
        score.sat_writing_avg_score ?? ""
    }
}
