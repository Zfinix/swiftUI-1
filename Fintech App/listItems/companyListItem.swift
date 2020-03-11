//
//  companyListItem.swift
//  Fintech App
//
//  Created by Chiziaruhoma Ogbonda on 11/03/2020.
//  Copyright © 2020 Chiziaruhoma Ogbonda. All rights reserved.
//

import Foundation
import SwiftUI
import URLImage

struct CompanyListItem : View {
    var company: Company
    
    var body: some View {
        HStack {
            URLImage(URL(string: "\(company.imageUrl)")!, delay: 0.15) { proxy in
                proxy.image.resizable()
                    .frame(width: 50, height: 50)
                
            }.padding(5)
            
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text(company.name)
                            .foregroundColor(.black).fontWeight(Font.Weight.medium)
                            .lineLimit(nil)
                        Spacer().frame(height: 4)
                        Text("Visa • 4839")
                            .font(.system(size: 14))
                            .foregroundColor(.gray).fontWeight(Font.Weight.medium)
                            .lineLimit(nil)
                    }
                    Spacer()
                    Text("+\(company.points) PTS")
                                               .font(.system(size: 14))
                                               .foregroundColor(.gray).fontWeight(Font.Weight.medium)
                                               .lineLimit(nil)
                    Spacer().frame(width:20)
                }
                
                Spacer()
            }
        }.frame(height: 100)
    }
}

struct CompanyListItem_Previews: PreviewProvider {
    static var previews: some View {
        CompanyListItem(company: companyList[0])
    }
}
