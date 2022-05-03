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
            ZStack(alignment:.top){
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
