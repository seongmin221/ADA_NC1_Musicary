//
//  ContentView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/28.
//

import SwiftUI

struct MainView: View {
    var member: Member = member1
    var body: some View {
        NavigationView {
            ZStack(alignment:.bottom){
                Color.bgColor
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Musicary")
                                .foregroundColor(Color.titleColor)
                                .font(.system(.title))
                                .fontWeight(.black)
                                .padding(.bottom, 10)
                            Spacer()
                            Button(action: {}){
                                Image(systemName: "person.circle")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color.titleColor)
//                                    .background(
//                                        Circle()
//                                            .stroke(lineWidth: 2)
//                                            .foregroundColor(Color.titleColor)
//                                            .frame(width: 32, height: 32)
//                                    )
                            }
                        }
                        .padding([.leading, .trailing], 20)
                        .padding(.top, 15)
            
                        RecommendationView()
                        Spacer()
                            .frame(height: 40)
                        UserDiaryListView(member:member1)
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
        }
        .accentColor(Color.white)
        .preferredColorScheme(.dark)
    }
        
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
