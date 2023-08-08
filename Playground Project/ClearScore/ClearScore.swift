//
//  ClearScore.swift
//  Playground Project
//
//  Created by Manenga Mungandi on 2023/07/01.
//

import UIKit
import SwiftUI

struct ClearScore: View {

    private var backgroundImage: some View {
        Image(uiImage: UIImage(named: "mountain")!)
            .resizable()
            .overlay(Color.gray.opacity(0.5))
    }

    private var navigationBar: some View {
        HStack(alignment: .center) {
            nameStack
            Spacer()
            iconStack
        }.padding(.horizontal, 20)
    }

    private var nameStack: some View {
        VStack(alignment: .leading) {
            Text("Welcome")
                .modifier(PrimaryFont(
                    size: 21,
                    color: .white,
                    weight: .light))
            Text("Manenga")
                .modifier(PrimaryFont(
                    size: 21,
                    color: .white,
                    weight: .bold))
        }
    }

    private var iconStack: some View {
        HStack(spacing: 10) {
            Image(systemName: "person")
                .modifier(PrimaryFont(
                    size: 28,
                    color: .white,
                    weight: .light))
            Image(systemName: "bell.badge")
                .modifier(PrimaryFont(
                    size: 28,
                    color: .white,
                    weight: .light))
        }
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            backgroundImage
            VStack {
                navigationBar
                ScrollView {
                    CreditScore().padding(25)
                    VStack(alignment: .leading, spacing: 12) {
                        Text("What's new")
                            .modifier(PrimaryFont(
                                size: 16,
                                color: .black,
                                weight: .bold))
                        CreditReportCard()
                        Text("Your offers")
                            .modifier(PrimaryFont(
                                size: 16,
                                color: .black,
                                weight: .bold))
                        CreditReportCard(
                            type: .offer,
                            title: "New personalised offers",
                            subtitle: "Find a credit card or loan in our marketplace",
                            imageUrl: "https://images.pexels.com/photos/578853/pexels-photo-578853.jpeg?cs=srgb&dl=pexels-gaurav-verma-578853.jpg&fm=jpg")
                    }
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.white.opacity(0.001), .white]), startPoint: .top, endPoint: .bottom))
                    .padding(.vertical, 24)
                }
            }.padding(.top, 50)
        }
    }
}

struct ClearScoreHome_Previews: PreviewProvider {
    static var previews: some View {
        ClearScore().edgesIgnoringSafeArea(.all)
    }
}
