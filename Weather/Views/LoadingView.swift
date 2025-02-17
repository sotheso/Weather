//
//  LoadingView.swift
//  Weather
//
//  Created by Sothesom on 29/11/1403.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    }
}

#Preview {
    LoadingView()
}
