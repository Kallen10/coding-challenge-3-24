//
//  DetailsPageView.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/24/23.
//

import SwiftUI

struct DetailsPageView: View {
    @ObservedObject var detailsPageContext: DetailsPageContext
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    headerView()
                    testScoreView()
                }
            }
        }
        .navigationTitle(schoolFormatter.schoolName(school: school))
    }
    
    func headerView() -> some View {
        VStack {
            HStack {
                HStack {
                    Text(schoolFormatter.schoolName(school: school))
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
            
            HStack {
                HStack {
                    
                    VStack {
                        HStack {
                            Text(schoolFormatter.primaryAddressLine1(for: school))
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                            Spacer()
                        }
                        HStack {
                            Text(schoolFormatter.cityStateZip(for: school))
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                            Spacer()
                        }
                    }
                    
                   
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 28.0))
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94)))
            
            HStack {
                HStack {
                    Text("Building Code: \(schoolFormatter.buildingCode(school: school))")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94)))
            
            HStack {
                HStack {
                    HStack {
                        Text("Phone Number: \(schoolFormatter.phoneNumber(school: school))")
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.85))
                        Spacer()
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94)))
        }
        .padding(.horizontal, 12)
    }
    
    func testScoreView() -> some View {
        VStack {
            HStack {
                HStack {
                    Text("Math Average: \(scoreFormatter.satAverageMath(score: score))")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.65, green: 0.25, blue: 0.76))
                    
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.94)))
            
            HStack {
                HStack {
                    Text("Reading Average: \(scoreFormatter.satAverageReading(score: score))")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.65, green: 0.25, blue: 0.76))
                    
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.94)))
            
            
            HStack {
                HStack {
                    Text("Writing Average: \(scoreFormatter.satAverageWriting(score: score))")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.65, green: 0.25, blue: 0.76))
                    
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
                
                
            }
            .background(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)).foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.94)))
            
            
        }
        .padding(.horizontal, 12)
        
    }
    
    private var school: SchoolModel { detailsPageContext.school }
    private var score: ScoreModel { detailsPageContext.score }
    
    private var schoolFormatter: SchoolFormatter { detailsPageContext.schoolFormatter }
    private var scoreFormatter: ScoreFormatter { detailsPageContext.scoreFormatter }
}

struct DetailsPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPageView(detailsPageContext: DetailsPageContext.preview)
    }
}
