//
//  RecommendationView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/28.
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        ZStack {
            Color.bgColor
                .ignoresSafeArea()
            VStack(alignment: .leading){
                HStack {
                    Text("2022.05.07 Id를 위한 추천")
                        .font(.system(size: 24))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.bottom, -2)
                    Spacer()
                }
                ScrollView(.horizontal){
                    HStack {
                        NavigationLink(destination: MainView()){
                            VStack {
                                ZStack {
                                    LinearGradient(colors: [Color.gdColor1[0], Color.gdColor1[1], Color.gdColor1[2]], startPoint: .leading, endPoint: .trailing)
                                    
                                    VStack {
                                        ZStack {
                                            Image("recAlbumArt1-1")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .padding(.trailing, 110)
                                            Image("recAlbumArt1-3")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .padding(.leading, 110)
                                            Image("recAlbumArt1-2")
                                                .resizable()
                                                .frame(width: 70, height: 70)
                                        }
                                        .shadow(color: .black, radius: 2, x: 2, y: 2)
                                        
                                        VStack(alignment:.leading){
                                            Text("감정이 벅차오르는 노래")
                                                .foregroundColor(.white)
                                                .fontWeight(.heavy)
                                                .font(.system(size: 16))
                                        }
                                        .padding(.top, 5)
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
                                    VStack {
                                        ZStack {
                                            Image("recAlbumArt2-2")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .padding(.trailing, 110)
                                            Image("recAlbumArt2-3")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .padding(.leading, 110)
                                            Image("recAlbumArt2-1")
                                                .resizable()
                                                .frame(width: 70, height: 70)
                                        }
                                        .shadow(color: .black, radius: 2, x: 2, y: 2)
                                        
                                        VStack(alignment:.leading){
                                            Text("여유로운 아침을 위한 노래")
                                                .foregroundColor(.white)
                                                .fontWeight(.heavy)
                                                .font(.system(size: 16))
                                        }
                                        .padding(.top, 5)
                                    }
                                }
                                
                            }
                            .frame(width: 210, height: 124, alignment: .leading)
                            .cornerRadius(8)
                            
                        }
                    }
                }
            }
            .padding(.leading, 20)
        }
    }
}

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView()
    }
}
