//
//  CommentView.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/04.
//

import SwiftUI

struct CommentView: View {
    
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
                
            if (diaryDetail.comments != nil) {
                ForEach(diaryDetail.comments!, id:\.self) { comment in
                    Text(comment)
                        .padding(.bottom, 10)
                        .padding([.leading, .trailing], 15)
                        .foregroundColor(.white)
                }
            } else {
                Text("댓글을 달아보세요!")
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(diaryDetail: member1.diaryContent[0].diaryDetail[1])
    }
}
