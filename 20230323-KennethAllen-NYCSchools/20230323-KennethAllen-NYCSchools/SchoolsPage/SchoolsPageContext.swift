//
//  SchoolsPageViewModel.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation
import UIKit
import Combine

class SchoolsPageContext: ObservableObject {
    
    @Published var schoolArray = [SchoolModel]()
    
    var scoresArray = [ScoreModel]()
    
    let networkManager: NetworkManaged
    let navigationShellViewController: NavigationShellViewController
    let schoolFormatter = SchoolFormatter()
    init(networkManager: NetworkManaged, navigationShellViewController: NavigationShellViewController) {
        self.networkManager = networkManager
        self.navigationShellViewController = navigationShellViewController
        fetchSchools()
        fetchScores()
    }
    
    var schoolsCancellable: AnyCancellable?
    func fetchSchools() {
        schoolsCancellable?.cancel()
        schoolsCancellable = networkManager.schools()
            .receive(on: OperationQueue.main)
            .sink(receiveCompletion: { status in
                switch status {
                case .failure(let error):
                    print(error.localizedDescription)
                    self.showErrorBox(title: "No Schools", body: "Sorry, we were unable to download the schools. Please close the app, connect to the network, and run it again.")
                case .finished:
                    break
                }
            }, receiveValue: { _schoolArray in
                self.schoolArray = _schoolArray
            })
    }
    
    var scoresCancellable: AnyCancellable?
    func fetchScores() {
        scoresCancellable?.cancel()
        scoresCancellable = networkManager.scores()
            .receive(on: OperationQueue.main)
            .replaceError(with: [])
            .assign(to: \.scoresArray, on: self)
    }
    
    func clickSchoolAction(school: SchoolModel) {
        
        print("Clicked: \(school.school_name ?? "")")
        
        let matchingScores = scoresArray.filter { $0.dbn == school.dbn }
        guard let score = matchingScores.first else {
            showErrorBox(title: "No Test Scores", body: "Sorry, we were unable to locate a matching record.")
            return
        }
        
        let detailsPageContext = DetailsPageContext(navigationShellViewController: navigationShellViewController,
                                                    school: school,
                                                    score: score)
        let detailsPageViewController = DetailsPageViewController(detailsPageContext: detailsPageContext)
        navigationShellViewController.pushViewController(detailsPageViewController, animated: true)
    }
    
    func showErrorBox(title: String, body: String) {
        let alert = UIAlertController(title: title, message: body, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        navigationShellViewController.present(alert, animated: true, completion: nil)
    }
    
}
