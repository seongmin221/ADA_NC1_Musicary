//
//  DiaryDetailView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/01.
//

import SwiftUI

struct DiaryDetailView: View {
    var date: DiaryContentByDate
    var diaryDetail: DiaryDetail
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                GeometryReader{ geo in
                    VStack (alignment: .leading){
                        ZStack (alignment:.bottom){
                            Image(diaryDetail.albumArtName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .ignoresSafeArea()
                                .blur(radius: 3)
                                .overlay(
                                    RoundedRectangle(cornerSize: CGSize(width:50, height:50))
                                        .opacity(0.3)
                                        .ignoresSafeArea()
                                        .shadow(color: Color.black, radius: 5, x: 10, y: 10)
                                        .frame(width: geo.size.width, height: geo.size.width)
                                    
                                )
                            
                            HStack {
                                Image(diaryDetail.albumArtName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .background(
                                        Image(diaryDetail.albumArtName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:80, height: 80)
                                            .offset(x: 5, y: 5)
                                            .blur(radius:4)
                                            .opacity(0.7)
                                    )
                                    .padding(.leading)
                                
                                VStack(alignment: .leading){
                                    Text(diaryDetail.music)
                                        .foregroundColor(.white)
                                        .font(.system(size:24))
                                        .fontWeight(.black)
                                    Spacer()
                                        .frame(height:5)
                                    Text(diaryDetail.artist)
                                        .foregroundColor(.white)
                                        .font(.system(size:18))
                                        .fontWeight(.semibold)
                                        .opacity(0.8)
                                }
                                .padding(.leading, 10)
                                Spacer()
                            }
                            .padding(.bottom, 10)
                            .offset(x: 0, y: -96)
                        }
                        .frame(width: geo.size.width, height: geo.size.width)
                        
                        VStack(alignment: .leading){
                            Spacer()
                                .frame(height: 40)
                            
                            Text("\(date.uploadedDate[0]).\(date.uploadedDate[1]).\(date.uploadedDate[2])")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .opacity(0.8)
                            
                            Spacer()
                                .frame(height:20)
                            
                            Text(diaryDetail.content)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .opacity(0.7)
                                .font(.system(size: 15))
                            
                            Spacer()
                                .frame(height:20)
                            
                            HStack{
                                ForEach(diaryDetail.musicMood, id:\.self){ mood in
                                    Text(mood)
                                        .font(.system(size: 12))
                                        .padding(6)
                                        .foregroundColor(.white)
                                        .background(Color.moodColor)
                                        .clipShape(Capsule())
                                }
                                
                            }
                        }
                        .padding([.leading, .trailing])
                        .offset(x: 0, y: -96)
                    }
                }
            }
        }
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView(date: member1.diaryContent[0], diaryDetail: member1.diaryContent[0].diaryDetail[1])
    }
}
