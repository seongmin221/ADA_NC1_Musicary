//
//  DiaryDetailView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/01.
//

import SwiftUI

struct DiaryDetailView: View {
    
    @State private var bottomSheetShown = false
    
    var date: DiaryContentByDate
    var diaryDetail: DiaryDetail
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                GeometryReader{ geo in
                    VStack (alignment: .leading){
                        ZStack (alignment:.center){
                            Image(diaryDetail.albumArtName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .ignoresSafeArea()
                                .overlay(
                                    Rectangle()
                                        .opacity(0.3)
                                        .ignoresSafeArea()
                                        .foregroundColor(Color.black)
                                        .frame(width: geo.size.width, height: geo.size.width)
                                )
                                .blur(radius:3)
                            MusicPlayer(musicFileName: diaryDetail.musicFileName)
                                .offset(x: 0, y: -128)
//                                .position(x: geo.size.width/2, y: geo.size.width/2)
                                
                        }
                        .frame(width: geo.size.width, height: geo.size.width)
                        
                        VStack(alignment: .leading){
                            
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
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Text("\(date.uploadedDate[0]).\(date.uploadedDate[1]).\(date.uploadedDate[2])")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .opacity(0.8)
                            
                            Spacer()
                                .frame(height:20)
                            
                            Text(diaryDetail.content)
                                .fontWeight(.light)
                                .foregroundColor(.white)
                                .opacity(0.7)
                                .font(.system(size: 15))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Spacer()
                                .frame(height:20)
                            
                            HStack{
                                ForEach(diaryDetail.musicMood, id:\.self){ mood in
                                    Text(mood)
                                        .font(.system(size: 14))
                                        .padding(6)
                                        .padding([.leading, .trailing], 3)
                                        .foregroundColor(.white)
                                        .background(Color.moodColor)
                                        .clipShape(Capsule())
                                }
                                
                            }
                        }
                        .padding([.leading, .trailing])
                        .offset(x: 0, y: -195.5)
                    }
                    .onTapGesture {
                        if bottomSheetShown == false {
                            return
                        } else {
                            bottomSheetShown = false
                        }
                        
                    }
                    BottomMenu(
                        isOpen: self.$bottomSheetShown,
                        maxHeight: geo.size.height * 0.7
                    ){
                        VStack(alignment: .leading) {
                            CommentView(diaryDetail: diaryDetail)
                        }
                    }
                }
                
            }
        }
        
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView(date: member1.diaryContent[0], diaryDetail: member1.diaryContent[0].diaryDetail[0])
    }
}
