//
//  FrameworkGridView.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/6.
//

import SwiftUI

struct FrameworkGridView: View {
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: colums) {
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

// MARK: - Subviews
struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
