//
//  SkeletonContentView.swift
//  SkeletonAnimation
//
//  Created by Monu Rathor on 23/05/23.
//

import SwiftUI

struct SkeletonContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                SkeletonView(cornerRadius: 27.5)
                    .frame(width: 55, height: 55)
                VStack(alignment: .leading, spacing: 12) {
                    SkeletonView()
                        .frame(width: 81, height: 16)
                    SkeletonView()
                        .frame(width: 251, height: 12)
                    
                }
            }
            SkeletonView()
                .frame(width: 209, height: 16)
                .padding(.top, 28)
            VStack(spacing: 12) {
                CardItemShimmer()
                CardItemShimmer()
                CardItemShimmer()
            }
            .padding(.top, 12)
            Spacer()
            VStack {
                SkeletonView(cornerRadius: 8)
                    .frame(height: 44)
                SkeletonView(cornerRadius: 8)
                    .frame(height: 44)
            }
        }
        .padding()
    }
}

struct SkeletonContentView_Previews: PreviewProvider {
    static var previews: some View {
        SkeletonContentView()
    }
}

struct CardItemShimmer: View {
    var body: some View {
        HStack(spacing: 12) {
            SkeletonView()
                .frame(width: 49, height: 62)
            VStack(alignment: .leading) {
                SkeletonView()
                    .frame(width: 145, height: 16)
                    .padding(.bottom, 14)
                SkeletonView()
                    .frame(height: 8)
                SkeletonView()
                    .frame(height: 8)
            }
        }
        .padding(12)
        .background(.blue.opacity(0.1))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.blue.opacity(0.1), lineWidth: 1))
    }
}
