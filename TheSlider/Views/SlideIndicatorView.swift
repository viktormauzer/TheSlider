//
//  SlideIndicatorView.swift
//  TheSlider
//
//  Created by Viktor Mauzer on 02.08.2022..
//

import SwiftUI

struct SlideIndicatorView: View {
    
    var isSelected: Bool
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                if isSelected {
                    Circle()
                        .foregroundColor(.accentColor)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .position(x: geo.size.width / 2, y: geo.size.height / 2)
                    
                    Circle()
                        .foregroundColor(Color(UIColor.systemBackground))
                        .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.7)
                        .position(x: geo.size.width / 2, y: geo.size.height / 2)
                }
                
                
                Circle()
                    .foregroundColor(.accentColor)
                    .frame(
                        width: isSelected ? geo.size.width * 0.5 : geo.size.width * 0.4,
                        height: isSelected ? geo.size.height * 0.5 : geo.size.height * 0.4)
                    .position(x: geo.size.width / 2, y: geo.size.height / 2)
            }
        }
    }
}

struct SlideIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SlideIndicatorView(isSelected: false)
    }
}
