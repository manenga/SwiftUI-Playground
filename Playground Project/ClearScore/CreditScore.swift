//
//  CreditScore.swift
//  Playground Project
//
//  Created by Manenga Mungandi on 2023/07/01.
//

import SwiftUI

struct CreditScore: View {

    @State var progressValue: Float = 0.3
    @State private var degress: Double = -110


    private var background: some View {
        Color.black.opacity(0.85)
            .clipShape(Circle())
            .padding(25)
    }

    private var information: some View {
        VStack(spacing: 14) {
            Text("Credit Score")
                .modifier(PrimaryFont(
                    size: 16,
                    color: .white,
                    weight: .bold))
            HStack {
                Text("663")
                    .modifier(PrimaryFont(
                        size: 48,
                        color: .white,
                        weight: .bold))
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Image(systemName: "arrow.down.right")
                            .modifier(PrimaryFont(
                                size: 18,
                                color: .purple,
                                weight: .light))
                        Text("9")
                            .modifier(PrimaryFont(
                                size: 16,
                                color: .purple,
                                weight: .bold))
                    }
                    Text("out of 740")
                        .modifier(PrimaryFont(
                            size: 14,
                            color: .white,
                            weight: .light))
                }
            }
            Text("Soaring high")
                .modifier(PrimaryFont(
                    size: 16,
                    color: .white,
                    weight: .light))
        }
    }

    var body: some View {
        ZStack {
            background
            information
            Circle()
                .trim(from: 0, to: 0.87)
                .stroke(
                    Color.white,
                    lineWidth: 3)
                .rotationEffect(.degrees(270))
                .padding(40)
        }
    }
}

struct CreditScore_Previews: PreviewProvider {
    static var previews: some View {
        CreditScore()
    }
}
