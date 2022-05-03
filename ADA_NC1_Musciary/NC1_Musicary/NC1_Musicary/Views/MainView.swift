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
                        Text("Musicary")
                            .foregroundColor(Color.titleColor)
                            .font(.system(.title))
                            .fontWeight(.black)
                            .padding(.leading, 20)
                            .padding(.bottom, 10)
                        RecommendationView()
                            .padding(.bottom, 20)
                        UserDiaryListView(member:member1)
                    }
                    
                }
                HStack {
                    Spacer()
                    Button(action:{
                        
                    }){
                        Circle()
                            .fill(
                                LinearGradient(colors: [Color.btnColor1, Color.btnColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: 60, height: 60)
                            .overlay(
                                Circle()
                                    .stroke(Color.white.opacity(0.37), lineWidth:5)
                                    .offset(x: 2, y: 1)
                                    .blur(radius: 3)
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.black.opacity(0.37), lineWidth:5)
                                    .offset(x: -2, y: -1)
                                    .blur(radius: 3)
                            )
                            .overlay(
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25).bold())
                                    
                            )
                            .clipShape(Circle())
                            .offset(x: -25, y: -10)
                    }
                }
                
            }
            .navigationBarHidden(true)
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
