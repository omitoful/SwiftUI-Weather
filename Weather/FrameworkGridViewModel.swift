//
//  FrameworkGridViewModel.swift
//  Weather
//
//  Created by 陳冠甫 on 2024/8/6.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
