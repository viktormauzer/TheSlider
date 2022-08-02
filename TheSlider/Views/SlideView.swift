//
//  Slide.swift
//  TheSlider
//
//  Created by Viktor Mauzer on 01.08.2022..
//

import SwiftUI

struct SlideView: View {
    
    var car: Car
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 15) {
                ZStack {
                    Image(car.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: geo.size.height)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(car.make)
                                .font(.title.bold())
                            
                            Text(car.model)
                                .font(.subheadline)
                            
                            Spacer()
                        }
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 20)
                        
                        Spacer()
                    }
                    .padding()
                }
                .cornerRadius(20)
            }
        }
    }
}

struct Slide_Previews: PreviewProvider {
    static var previews: some View {
        SlideView(car: Car.mockData()[0])
    }
}
