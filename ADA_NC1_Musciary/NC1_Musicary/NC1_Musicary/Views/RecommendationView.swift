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
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.bottom, -1)
                    .padding(.leading, 5)
                Spacer()
            }
            Spacer()
                .frame(height:10)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    NavigationLink(destination: {
                        ZStack {
                            Color.bgColor
                                .ignoresSafeArea()
                            VStack{
                                Image(systemName: "xmark.octagon.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(.white)
                                Text("Not Developed Yet!")
                                    .foregroundColor(.white)
                            }
                        }
                    }){
                        VStack {
                            ZStack {
                                LinearGradient(colors: [Color.gdColor1[0], Color.gdColor1[1], Color.gdColor1[2]], startPoint: .leading, endPoint: .trailing)
                                
                                VStack (alignment: .leading){
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
                    
                    NavigationLink(destination: {
                        ZStack {
                            Color.bgColor
                                .ignoresSafeArea()
                            VStack{
                                Image(systemName: "xmark.octagon.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(.white)
                                Text("Not Developed Yet!")
                                    .foregroundColor(.white)
                            }
                        }
                    }){
                        VStack {
                            ZStack {
                                LinearGradient(colors: [Color.gdColor2[0], Color.gdColor2[1]], startPoint: .leading, endPoint: .trailing)
                                VStack (alignment: .leading){
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
        .padding(.leading)
        
    }
}

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView()
    }
}
