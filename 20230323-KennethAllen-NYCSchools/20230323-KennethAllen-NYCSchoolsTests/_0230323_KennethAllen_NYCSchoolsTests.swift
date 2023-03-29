//
//  _0230323_KennethAllen_NYCSchoolsTests.swift
//  20230323-KennethAllen-NYCSchoolsTests
//
//  Created by Kenny Allen on 3/24/23.
//

import XCTest
import Combine
@testable import _0230323_KennethAllen_NYCSchools

final class _0230323_KennethAllen_NYCSchoolsTests: XCTestCase {
    
    func testSchoolsFetch() {
        let expectation = XCTestExpectation(description: "schools.expectation")
        let networkManager = NetworkManager()
        var schoolArray = [SchoolModel]()
        var schoolsCancellable: AnyCancellable?
            schoolsCancellable = networkManager.schools()
                .receive(on: OperationQueue.main)
                .sink(receiveCompletion: { status in
                    switch status {
                    case .failure:
                        XCTFail("Could not fetch schools.")
                        expectation.fulfill()
                        return
                    case .finished:
                        expectation.fulfill()
                    }
                }, receiveValue: { _schoolArray in
                    schoolArray = _schoolArray
                })
        wait(for: [expectation], timeout: 10.0)
        XCTAssertGreaterThan(schoolArray.count, 0)
    }
    
    func testScoresFetch() {
        let expectation = XCTestExpectation(description: "scores.expectation")
        let networkManager = NetworkManager()
        var scoresArray = [ScoreModel]()
        var scoresCancellable: AnyCancellable?
        scoresCancellable = networkManager.scores()
                .receive(on: OperationQueue.main)
                .sink(receiveCompletion: { status in
                    switch status {
                    case .failure:
                        XCTFail("Could not fetch scores.")
                        expectation.fulfill()
                        return
                    case .finished:
                        expectation.fulfill()
                    }
                }, receiveValue: { _scoresArray in
                    scoresArray = _scoresArray
                })
        wait(for: [expectation], timeout: 10.0)
        XCTAssertGreaterThan(scoresArray.count, 0)
    }

}
