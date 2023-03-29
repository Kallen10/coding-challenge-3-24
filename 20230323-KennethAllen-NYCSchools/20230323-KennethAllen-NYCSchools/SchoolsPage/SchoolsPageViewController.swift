//
//  SchoolsPageViewController.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import UIKit
import SwiftUI

class SchoolsPageViewController: UIViewController {
    
    let schoolsPageContext: SchoolsPageContext
    required init(schoolsPageContext: SchoolsPageContext) {
        self.schoolsPageContext = schoolsPageContext
        super.init(nibName: nil, bundle: nil)
    }
    
    lazy var hostingController: UIHostingController = {
        UIHostingController(rootView: SchoolsPageView(schoolsPageContext: schoolsPageContext))
    }()
    
    required init?(coder: NSCoder) {
        fatalError("SchoolsPageViewController init?(coder: NSCoder)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(hostingController.view)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
