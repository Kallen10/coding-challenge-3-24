//
//  SchoolModel.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation

struct SchoolModel: Decodable {
    let dbn: String
    let school_name: String?
    let overview_paragraph: String?
    let building_code: String?
    let phone_number: String
    let primary_address_line_1: String?
    let city: String?
    let zip: String?
    let state_code: String?
}

extension SchoolModel: Identifiable {
    var id: String {
        return dbn
    }
}

extension SchoolModel: Hashable {
    static func == (lhs: SchoolModel, rhs: SchoolModel) -> Bool {
        lhs.dbn == rhs.dbn
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(dbn)
    }
}

