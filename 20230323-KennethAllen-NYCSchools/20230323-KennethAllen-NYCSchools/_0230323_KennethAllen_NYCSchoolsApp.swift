//
//  _0230323_KennethAllen_NYCSchoolsApp.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import SwiftUI

@main
struct _0230323_KennethAllen_NYCSchoolsApp: App {
    
    let navigationShellContext = NavigationShellContext()
    var body: some Scene {
        WindowGroup {
            NavigationShellRepresentable(navigationShellContext: navigationShellContext)
        }
    }
}
