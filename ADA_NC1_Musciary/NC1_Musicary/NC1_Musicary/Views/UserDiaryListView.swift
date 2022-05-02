//
//  UserDiaryListView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/30.
//

import SwiftUI

struct UserDiaryListView: View {
    
    let layout = [
        GridItem(.fixed(240)),
        GridItem(.fixed(240))
    ]
    
    var member:Member = member1
    
    var body: some View {
        ZStack {
            Color.bgColor
                .ignoresSafeArea()
            VStack(alignment:.leading){
                Text("Id의 노래일기")
                    .font(.system(size: 24))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.bottom, -1)
                ScrollView(.horizontal){
                    HStack {
                        ForEach(member.diaryContent){ date in
                            VStack(alignment:.leading){
                                Text("\(date.uploadedDate[0]).\(date.uploadedDate[1]).\(date.uploadedDate[2])")
                                    .foregroundColor(.white)
                                    .font(.system(size:18))
                                    .fontWeight(.semibold)
                                    .padding(.bottom, -8)
                                    .padding(.leading, 8)
                                LazyHGrid(rows: layout){
                                    ForEach(date.diaryDetail){ detail in
                                        VStack(alignment:.leading) {
                                            Image(detail.albumArtName)
                                                .resizable()
                                                .frame(width: 154, height: 154)
                                                .cornerRadius(5)
                                            VStack(alignment:.leading){
                                                Text(detail.music)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 16))
                                                .fontWeight(.bold)
                                                Text(detail.artist)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14))
                                                    .fontWeight(.semibold)
                                                Text(detail.content)
                                                    .foregroundColor(.white)
                                                    .font(.system(size:12))
                                                    .fontWeight(.medium)
                                            }
                                            .padding(.leading, 2)
                                        }
                                        .frame(width:154)
                                    }
                                }
                                .padding([.leading, .trailing], 5)
                            }
                        }
                    }
                }
            }
            .padding(.leading, 20)
        }
    }
}

struct UserDiaryListView_Previews: PreviewProvider {
    static var previews: some View {
        UserDiaryListView(member: member1)
    }
}
