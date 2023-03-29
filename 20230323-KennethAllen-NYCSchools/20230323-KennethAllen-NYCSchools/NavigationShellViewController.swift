//
//  NavigationShellViewController.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import UIKit

class NavigationShellViewController: UINavigationController {
    
    lazy var networkManager: NetworkManager = {
       NetworkManager()
    }()
    
    lazy var schoolsPageContext: SchoolsPageContext = {
        SchoolsPageContext(networkManager: networkManager, navigationShellViewController: self)
    }()
    
    let navigationShellContext: NavigationShellContext
    required init(navigationShellContext: NavigationShellContext) {
        self.navigationShellContext = navigationShellContext
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("NavigationShellViewController init?(coder: NSCoder)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let schoolsPageViewController = SchoolsPageViewController(schoolsPageContext: schoolsPageContext)
        pushViewController(schoolsPageViewController, animated: true)
    }
}
