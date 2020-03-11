//
//  ContentView.swift
//  Fintech App
//
//  Created by Chiziaruhoma Ogbonda on 10/03/2020.
//  Copyright © 2020 Chiziaruhoma Ogbonda. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment: .center) {
            Spacer().frame(height: 50)
            
            buttonView
            
            Spacer().frame(height: 30)
            
            pointsView
            
            withdrawView
            
            Spacer().frame(height: 20)
            companyListView
            
            
        }.background(SwiftUI.Color.green.edgesIgnoringSafeArea(.top))
        
    }
    
    
    
    var buttonView: some View {
        
        HStack{
            
            Spacer().frame(width: 30)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
                    .foregroundColor(.white)
                    .padding(.all, 15)
                
            }
            .background(Color.white.opacity(0.3))
            .cornerRadius(100)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "gift")
                    .resizable()
                    .frame(width: 20.0, height:20.0)
                    .foregroundColor(.white)
                    .padding(.all, 15)
                
            }.background(Color.white.opacity(0.3))
                .cornerRadius(100)
            
            Spacer().frame(width: 30)
        }
        
        
    }
    
    
    var pointsView: some View {
        
        
        VStack(alignment: .center) {
            
            Spacer().frame(height: 30)
            
            Text("POINTS EARNED")
                .foregroundColor(Color.white)
                .padding(.bottom, 0.0)
            
            Text("2109")
                .foregroundColor(Color.white)
                .font(.system(size: 60))
                .fontWeight(Font.Weight.medium)
            
            Spacer().frame(height: 30)
            
            Divider()
                .frame(height: 1)
                .background(Color.white.opacity(0.3))
                .padding(.horizontal, 40.0)
            
            Spacer().frame(height: 30)
            
        }
    }
    
    
    var withdrawView: some View {
        
        
        VStack(alignment: .center) {
            
            
            HStack {
                Spacer()
                Text("mBTC")
                    .foregroundColor(Color.white.opacity(0.5))
                    .padding(.bottom, 0.0)
                Spacer().frame(width: 20)
                Text("0.063")
                    .foregroundColor(Color.white)
                    .padding(.bottom, 0.0)
                
                Spacer()
                
                Text("mBTC")
                    .foregroundColor(Color.white.opacity(0.5))
                    .padding(.bottom, 0.0)
                Spacer().frame(width: 20)
                Text("$611")
                    .foregroundColor(Color.white)
                    .padding(.bottom, 0.0)
                Spacer()
            }
            
            Spacer().frame(height: 30)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Withdraw")
                    .fontWeight(.regular).frame(width: UIScreen.main.bounds.width * 0.7)
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.white.opacity(0.4), lineWidth: 1)
                )
                
            }
            
            
        }
    }
    
    
    
    var companyListView: some View{
        
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Spacer().frame(height: 30)
                HStack {
                    
                    Spacer().frame(width: 30)
                    Text("Today, \(currentDate())")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding(.bottom, 0.0)
                }
                
                List(companyList) { company in
                    CompanyListItem(company: company)
                    
                }
                
                
            }.frame(width: UIScreen.main.bounds.width,  alignment: .top)
            
            
            
        }.cornerRadius(40, corners: [.topLeft, .topRight])
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

func currentDate()-> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM d"
    
    return formatter.string(from: date)
    
}

