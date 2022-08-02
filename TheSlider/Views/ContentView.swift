//
//  ContentView.swift
//  TheSlider
//
//  Created by Viktor Mauzer on 01.08.2022..
//

import SwiftUI

struct ContentView: View {
    
    let cars: [Car] = Car.mockData()
    
    @State private var selectedIndex = 0
    
    var body: some View {
        ZStack {
            backgroundImageView
            
            VStack {
                ScrollView {
                    VStack {
                        carTabView
                        carInfoView
                            .padding(.horizontal)
                    }
                    .animation(.easeInOut, value: selectedIndex)
                }
                pageIndicator
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
    
    //MARK: - Custom views
    
    var backgroundImageView: some View {
        Image(cars[selectedIndex].image)
            .resizable()
            .blur(radius: 30, opaque: true)
            .overlay {
                Color.primary.opacity(0.2)
            }
            .ignoresSafeArea()
    }
    
    var carTabView: some View {
        TabView(selection: $selectedIndex) {
            ForEach(cars) { car in
                let index = cars.firstIndex { $0.id == car.id }
                
                SlideView(car: car)
                    .shadow(color: .primary.opacity(0.2), radius: 15)
                    .padding(.horizontal)
                    .frame(height: 400)
                    .tag(index ?? 0)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .frame(height: 450)
    }
    
    var pageIndicator: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .foregroundColor(Color(UIColor.secondarySystemBackground))
            
            HStack {
                ForEach(cars) { car in
                    let index = cars.firstIndex { $0.id == car.id }
                    SlideIndicatorView(isSelected: index == selectedIndex)
                        .animation(.spring(response: 0.8, dampingFraction: 0.8), value: selectedIndex)
                }
            }
            .frame(width: 200, height: 20)
            .padding()
        }
        .frame(height: 70)
    }
    
    var carInfoView: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Price:")
                    .font(.headline)
                Text(cars[selectedIndex].price.formattedPrice())
                    .font(.title.bold())
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Description:")
                    .font(.headline)
                Text(cars[selectedIndex].description)
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(20)
        }
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

