//
//  SchoolsPageViewModel+Preview.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation

extension SchoolsPageContext {
    
    static var preview: SchoolsPageContext = {
        let networkManager = NetworkManager()
        let navigationShellContext = NavigationShellContext()
        let navigationShellViewController = NavigationShellViewController(navigationShellContext: navigationShellContext)
        return SchoolsPageContext(networkManager: networkManager, navigationShellViewController: navigationShellViewController)
    }()
}


