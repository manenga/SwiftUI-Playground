//
//  CreditReportCard.swift
//  Playground Project
//
//  Created by Manenga Mungandi on 2023/07/01.
//

import SwiftUI

enum CardType {
    case report
    case offer
}

struct CreditReportCard: View {

    private var chip: String {
        if type == .report {
            return "Credit"
        } else {
            return "Offers"
        }
    }
    var type: CardType = .report
    var title: String = "Your report is stable"
    var subtitle: String = "Still doing well on 5 insights. Potential to improve 1."
    var imageUrl: String = "https://images.pexels.com/photos/578853/pexels-photo-578853.jpeg?cs=srgb&dl=pexels-gaurav-verma-578853.jpg&fm=jpg"

    private var topCard: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(chip)
                .modifier(PrimaryFont(
                    size: 12,
                    color: .black,
                    weight: .bold))
                .foregroundStyle(.black)
                .padding(.horizontal, 7)
                .padding(.vertical, 3)
                .border(.black, width: 1.5)
                .cornerRadius(4)
            Text(title)
                .modifier(PrimaryFont(
                    size: 14,
                    color: .black,
                    weight: .bold))
                .padding(.top, 30)
            HStack {
                Image(systemName: "circle.fill")
                    .modifier(PrimaryFont(
                        size: 18,
                        color: .black,
                        weight: .light))
                Text("No changes")
                    .modifier(PrimaryFont(
                        size: 14,
                        color: .black,
                        weight: .light))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(Color.green.opacity(0.2))
    }

    private var bottomCard: some View {
        Text(subtitle)
            .modifier(PrimaryFont(
                size: 13,
                color: .black,
                weight: .light))
            .padding(.horizontal, 15)
            .padding(.vertical, 20)

    }

    private var offerCard: some View {
        ZStack(alignment: .bottomLeading ) {
            AsyncImage(url: URL(string: imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray
            }
            .frame(width: 250, height: 250)

            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .modifier(PrimaryFont(
                        size: 13,
                        color: .white,
                        weight: .bold))
                    .padding(.horizontal, 15)
                Text(subtitle)
                    .modifier(PrimaryFont(
                        size: 13,
                        color: .white,
                        weight: .light))
                    .padding(.horizontal, 15)
            }.padding(.vertical, 20)
        }.frame(width: 300, height: 225)
    }

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                if type == .report {
                    topCard
                    bottomCard
                } else {
                    offerCard
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding(5)
            .modifier(DropShadow())
        }
        .frame(maxWidth: 275)
    }
}

struct CreditReportCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditReportCard(type: .offer)
    }
}
