//
//  ContentView.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                
                HStack {
                    VStack {
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("76°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundStyle(.white)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
