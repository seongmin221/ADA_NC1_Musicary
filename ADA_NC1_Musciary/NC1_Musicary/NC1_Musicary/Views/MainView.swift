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
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                NavigationView {
                    ScrollView {
                        RecommendationView()
                        Spacer()
                        UserDiaryListView(member:member1)
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
