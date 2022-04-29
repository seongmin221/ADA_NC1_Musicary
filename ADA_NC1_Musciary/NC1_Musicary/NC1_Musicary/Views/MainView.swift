//
//  ContentView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/28.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            VStack{
                NavigationView {
                    RecommendationView()
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
