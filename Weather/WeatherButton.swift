//
//  WeatherButton.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/6.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var backgroundColor: Color = .white
    var foregroundColor: Color = .blue
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}
