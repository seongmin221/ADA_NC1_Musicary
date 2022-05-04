//
//  BottomMenu.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/03.
//

import SwiftUI

fileprivate enum Constants {
    static let radius: CGFloat = 16
    static let indicatorHeight: CGFloat = 3
    static let indicatorWidth: CGFloat = 60
    static let snapRatio: CGFloat = 0.25
    static let minHeightRatio: CGFloat = 0.12
}

struct BottomMenu<Content: View>: View {
    
    @Binding var isOpen: Bool
    @GestureState private var translation: CGFloat = 0
    
    let maxHeight: CGFloat
    let minHeight: CGFloat
    let Content: Content
    
    private var offset: CGFloat {
        isOpen ? 0 : maxHeight - minHeight
        // if isOpen is true, offset = 0
        // else offset = maxHeight - minHeight
    }
    
    private var indicator: some View {
        RoundedRectangle(cornerRadius: Constants.radius)
            .fill(Color.menuBarColor)
            .frame(width: Constants.indicatorWidth,
                   height: Constants.indicatorHeight)
    }
    
    init(isOpen: Binding<Bool>, maxHeight:CGFloat, @ViewBuilder content: () -> Content){
        self.minHeight = maxHeight * Constants.minHeightRatio
        self.maxHeight = maxHeight
        self.Content = content()
        self._isOpen = isOpen
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                RoundedRectangle(cornerRadius: 2.5)
                    .foregroundColor(.white.opacity(0.5))
                    .frame(width: 100, height: 5)
                    .padding(.top, 10)
                self.indicator.padding()
                self.Content
            }
            .frame(width: geo.size.width, height: self.maxHeight, alignment: .top)
            .background(Color.menuBarColor)
            .cornerRadius(Constants.radius)
            .frame(height: geo.size.height, alignment: .bottom)
            .offset(y: max(self.offset + self.translation, 0))
            .animation(.interactiveSpring(), value: isOpen)
            .animation(.interactiveSpring(), value: translation)
            .gesture(
                DragGesture()
                    .updating(self.$translation) {
                        value, state, _ in
                        state = value.translation.height
                    }
                    .onEnded { value in
                        let snapDistance = self.maxHeight * Constants.snapRatio
                        guard abs(value.translation.height) > snapDistance else {
                            return
                        }
                        self.isOpen = value.translation.height < 0
                    }
            )
        }
    }
}
