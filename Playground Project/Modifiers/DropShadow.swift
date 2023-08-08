//
//  DropShadow.swift
//  Playground Project
//
//  Created by Manenga Mungandi on 2023/07/01.
//

import SwiftUI

struct DropShadow: ViewModifier {
    let cornerRadius: CGFloat = 10
    var color: Color = Color.gray.opacity(0.5)
    func body(content: Content) -> some View {
         content
            .cornerRadius(cornerRadius)
            .shadow(
                color: color,
                radius: 4,
                x: 0,
                y: 0
            )

    }
}

struct DropShadow_Previews: PreviewProvider {
    static var previews: some View {
        CreditReportCard().modifier(DropShadow())
    }
}
