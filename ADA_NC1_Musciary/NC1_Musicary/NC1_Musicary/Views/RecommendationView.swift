//
//  RecommendationView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/28.
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            HStack {
                
                Text("2022.05.07 Id를 위한 추천")
                    .font(.system(size: 24))
                    .foregroundColor(Color.white)
                Spacer()
                
            }.padding(.leading, 20)
            
            ScrollView(.horizontal){
                
                HStack {
                    
                    NavigationLink(destination: MainView()){
                        VStack {
                            ZStack {
                                LinearGradient(colors: [Color.gdColor1[0], Color.gdColor1[1], Color.gdColor1[2]], startPoint: .leading, endPoint: .trailing)
                                
                                HStack {
                                    Image("recAlbumArt1-1")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    Image("recAlbumArt1-2")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    Image("recAlbumArt1-3")
                                        .resizable()
                                    .frame(width: 60, height: 60)
                                }
                            }
                            
                        }
                        .frame(width: 210, height: 124, alignment: .leading)
                        .cornerRadius(8)
                        
                    }
                    
                    NavigationLink(destination: MainView()){
                        VStack {
                            ZStack {
                                LinearGradient(colors: [Color.gdColor2[0], Color.gdColor2[1]], startPoint: .leading, endPoint: .trailing)
                            }
                            
                        }
                        .frame(width: 210, height: 124, alignment: .leading)
                        .cornerRadius(8)
                        
                    }
                }
            }
        }
    }
}

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView()
    }
}
