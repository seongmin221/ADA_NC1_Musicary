//
//  CommentView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/04.
//

import SwiftUI

struct CommentView: View {
    
    @State private var content: String = ""
    
    var diaryDetail: DiaryDetail
    
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Spacer()
                Text("댓글 보기")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.bottom, 25)
                
            if (diaryDetail.comments != nil) {
                VStack (alignment: .leading){
                    ForEach(diaryDetail.comments!, id:\.self) { comment in
                        VStack (alignment: .leading) {
                            Divider()
                            HStack {
                                Image(systemName: "person.circle")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .opacity(0.5)
                                Text(comment)
                                    .padding([.trailing], 15)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .opacity(0.6)
                            }
                            .padding([.top, .bottom], 5)
                        }
                        
                    }
                }
                .padding(.leading, 10)
            } else {
                VStack {
                    Text("댓글을 달아보세요!")
                        .padding([.leading], 15)
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
            }
            Spacer()
            HStack (alignment: .center){
                TextField("댓글 달기", text: $content)
                    .textFieldStyle(.roundedBorder)
                Button(action: {}){
                    Image(systemName: "paperplane")
                        .font(.system(size: 20))
                }
            }
            .padding([.leading, .trailing, .bottom], 15)
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(diaryDetail: member1.diaryContent[0].diaryDetail[0])
    }
}
