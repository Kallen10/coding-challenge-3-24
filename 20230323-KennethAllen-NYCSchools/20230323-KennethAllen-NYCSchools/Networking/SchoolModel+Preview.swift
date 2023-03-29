//
//  SchoolModel+Preview.swift
//  20230323-KennethAllen-NYCSchools
//
//  Created by Kenny Allen on 3/23/23.
//

import Foundation

extension SchoolModel {
    
    static var preview: SchoolModel = {
        let jsonString = "{\n\t\"dbn\": \"08X282\",\n\t\"school_name\": \"Women\'s Academy of Excellence\",\n\t\"boro\": \"X\",\n\t\"overview_paragraph\": \"The WomenÂ’s Academy of Excellence is an all-girls public high school, serving grades 9-12. Our mission is to create a community of lifelong learners, to nurture the intellectual curiosity and creativity of young women and to address their developmental needs. The school community cultivates dynamic, participatory learning, enabling students to achieve academic success at many levels, especially in the fields of math, science, and civic responsibility. Our scholars are exposed to a challenging curriculum that encourages them to achieve their goals while being empowered to become young women and leaders. Our Philosophy is GIRLS MATTER!\",\n\t\"academicopportunities1\": \"Genetic Research Seminar, Touro College Partnership, L\'Oreal Roll Model Program, Town Halls, Laptop carts, SMART Boards in every room, Regents Prep.\",\n\t\"academicopportunities2\": \"WAE Bucks Incentive Program, Monroe College JumpStart, National Hispanic Honor Society, National Honor Society,Lehman College Now, Castle Learning.\",\n\t\"academicopportunities3\": \"Pupilpath, Saturday school, Leadership class, College Trips, Teen Empowerment Series, College Fairs, Anti-bullying Day, Respect for All, Career Day.\",\n\t\"academicopportunities4\": \"PEARLS Awards, Academy Awards, Rose Ceremony/Parent Daughter Breakfast, Ice Cream Social.\",\n\t\"academicopportunities5\": \"Health and Wellness Program\",\n\t\"ell_programs\": \"English as a New Language\",\n\t\"language_classes\": \"Spanish\",\n\t\"diplomaendorsements\": \"Science\",\n\t\"neighborhood\": \"Castle Hill-Clason Point\",\n\t\"shared_space\": \"Yes\",\n\t\"building_code\": \"X174\",\n\t\"location\": \"456 White Plains Road, Bronx NY 10473 (40.815043, -73.85607)\",\n\t\"phone_number\": \"718-542-0740\",\n\t\"fax_number\": \"718-542-0841\",\n\t\"school_email\": \"sburns@schools.nyc.gov\",\n\t\"website\": \"schools.nyc.gov/SchoolPortals/08/X282\",\n\t\"subway\": \"N/A\",\n\t\"bus\": \"Bx22, Bx27, Bx36, Bx39, Bx5\",\n\t\"grades2018\": \"9-12\",\n\t\"finalgrades\": \"9-12\",\n\t\"total_students\": \"338\",\n\t\"start_time\": \"8:20am\",\n\t\"end_time\": \"2:45pm\",\n\t\"addtl_info1\": \"Community Service Expected; Online Grading System; Saturday Programs; Student/Parent Orientation; Uniform\",\n\t\"extracurricular_activities\": \"Academy of Health, Advisory, Annual Breast Cancer Walk, Purses for Life, Ambassadors, Conflict Resolution Program-Effective Alternatives in Reconciliation Services (EARS), Peer Tutoring, Student Government, Step Team, Cheerleading, Big Sister/Little Sister Program, Chorus\",\n\t\"psal_sports_boys\": \"Baseball, Basketball, Cross Country, Fencing\",\n\t\"psal_sports_girls\": \"Basketball, Cross Country, Indoor Track, Outdoor Track, Softball, Volleyball\",\n\t\"psal_sports_coed\": \"Stunt\",\n\t\"graduation_rate\": \"0.612999976\",\n\t\"attendance_rate\": \"0.790000021\",\n\t\"pct_stu_enough_variety\": \"0.330000013\",\n\t\"college_career_rate\": \"0.486000001\",\n\t\"pct_stu_safe\": \"0.629999995\",\n\t\"girls\": \"1\",\n\t\"school_accessibility_description\": \"1\",\n\t\"offer_rate1\": \"Â—89% of offers went to this group\",\n\t\"program1\": \"WomenÂ’s Academy of Excellence\",\n\t\"code1\": \"Y01T\",\n\t\"interest1\": \"Science & Math\",\n\t\"method1\": \"Limited Unscreened\",\n\t\"seats9ge1\": \"86\",\n\t\"grade9gefilledflag1\": \"N\",\n\t\"grade9geapplicants1\": \"330\",\n\t\"seats9swd1\": \"22\",\n\t\"grade9swdfilledflag1\": \"N\",\n\t\"grade9swdapplicants1\": \"52\",\n\t\"seats101\": \"No\",\n\t\"admissionspriority11\": \"Priority to New York City residents who attend an information session\",\n\t\"admissionspriority21\": \"Then to New York City residents\",\n\t\"eligibility1\": \"Open only to female students\",\n\t\"grade9geapplicantsperseat1\": \"4\",\n\t\"grade9swdapplicantsperseat1\": \"2\",\n\t\"primary_address_line_1\": \"456 White Plains Road\",\n\t\"city\": \"Bronx\",\n\t\"zip\": \"10473\",\n\t\"state_code\": \"NY\",\n\t\"latitude\": \"40.81504\",\n\t\"longitude\": \"-73.8561\",\n\t\"community_board\": \"9\",\n\t\"council_district\": \"18\",\n\t\"census_tract\": \"4\",\n\t\"bin\": \"2020580\",\n\t\"bbl\": \"2034780018\",\n\t\"nta\": \"Soundview-Castle Hill-Clason Point-Harding Park                            \",\n\t\"borough\": \"BRONX    \"\n}"
        let jsonData = jsonString.data(using: .utf8)!
        let result = try! JSONDecoder().decode(SchoolModel.self, from: jsonData)
        return result
    }()
}



