//
//  NavigationShellRepresentable.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import SwiftUI

struct NavigationShellRepresentable: UIViewControllerRepresentable {
    
    let navigationShellContext: NavigationShellContext
    init(navigationShellContext: NavigationShellContext) {
        self.navigationShellContext = navigationShellContext
    }
    
    func makeUIViewController(context: Context) -> NavigationShellViewController {
        NavigationShellViewController(navigationShellContext: navigationShellContext)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}
