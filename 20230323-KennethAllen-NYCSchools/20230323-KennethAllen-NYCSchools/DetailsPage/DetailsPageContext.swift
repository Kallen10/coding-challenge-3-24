//
//  DetailsPageContext.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import Foundation
import Combine

class DetailsPageContext: ObservableObject {
    
    let navigationShellViewController: NavigationShellViewController
    let school: SchoolModel
    let score: ScoreModel
    let scoreFormatter = ScoreFormatter()
    let schoolFormatter = SchoolFormatter()
    
    init(navigationShellViewController: NavigationShellViewController, school: SchoolModel, score: ScoreModel) {
        self.navigationShellViewController = navigationShellViewController
        self.school = school
        self.score = score
        
        print("init() DetailsPageContext")
    }
    
    deinit {
        print("deinit() DetailsPageContext")
    }
    
    
}
