//
//  ContentView.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/5.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temprature: 74)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temprature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temprature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temprature: 74)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

// MARK: - Subviews
struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temprature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
//        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("appLightBlue")],
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
//                .renderingMode(.original)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.red, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temprature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
    }
}
