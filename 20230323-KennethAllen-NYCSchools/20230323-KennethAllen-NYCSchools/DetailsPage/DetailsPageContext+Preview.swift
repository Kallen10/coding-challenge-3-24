//
//  DetailsPageContext+Preview.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import Foundation

extension DetailsPageContext {
    
    static var preview: DetailsPageContext = {
        let navigationShellContext = NavigationShellContext()
        let navigationShellViewController = NavigationShellViewController(navigationShellContext: navigationShellContext)
        return DetailsPageContext(navigationShellViewController: navigationShellViewController,
                                  school: SchoolModel.preview,
                                  score: ScoreModel.preview)
    }()
}
