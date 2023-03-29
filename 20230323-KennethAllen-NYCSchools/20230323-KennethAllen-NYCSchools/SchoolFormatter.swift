//
//  SchoolFormatter.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import Foundation

struct SchoolFormatter {
    
    func schoolName(school: SchoolModel) -> String {
        school.school_name ?? ""
    }
    
    func primaryAddressLine1(for school: SchoolModel) -> String {
        school.primary_address_line_1 ?? ""
    }
    
    func cityStateZip(for school: SchoolModel) -> String {
        if let city = school.city, let state = school.state_code, let zip = school.zip {
            return "\(city), \(state), \(zip)"
        } else {
            return ""
        }
    }
    
    func overviewParagraph(school: SchoolModel) -> String {
        school.overview_paragraph ?? ""
    }
    
    func buildingCode(school: SchoolModel) -> String {
        school.building_code ?? ""
    }
    
    func phoneNumber(school: SchoolModel) -> String {
        school.phone_number
    }
}
