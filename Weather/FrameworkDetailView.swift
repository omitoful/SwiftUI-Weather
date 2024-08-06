//
//  FrameworkDetailView.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/6.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        FrameworkTitleView(framework: framework)
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
