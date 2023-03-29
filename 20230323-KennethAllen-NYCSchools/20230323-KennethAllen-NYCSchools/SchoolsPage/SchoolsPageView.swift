//
//  SchoolsPageView.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import SwiftUI

struct SchoolsPageView: View {
    
    @ObservedObject var schoolsPageContext: SchoolsPageContext
    var body: some View {
        ScrollView {
            VStack {
                ForEach(schoolsPageContext.schoolArray) { school in
                    Button {
                        schoolsPageContext.clickSchoolAction(school: school)
                    } label: {
                            HStack {
                                HStack {
                                    Text(schoolsPageContext.schoolFormatter.schoolName(school: school))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                                    
                                    Spacer()
                                    Image(systemName: "building.columns.fill")
                                        .font(.system(size: 28.0))
                                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                                }
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                
                            }
                            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94)))
                        }
                    .padding(.horizontal, 12)
                }
            }
        }
    }
}

struct SchoolsPageView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsPageView(schoolsPageContext: SchoolsPageContext.preview)
    }
}
