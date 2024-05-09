//
//  ButtonBackUp.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI

struct ButtonBackUp: View {
  let text: String
    var body: some View {
      Button {

      } label: {
          Text(text)
          .font(.system(size: 24))
          .fontDesign(.rounded)
          .fontWeight(.medium)
      }.frame(width: 340, height: 60)
        .background(Color("Backbt"))
        .foregroundStyle(Color("Colorbd"))
        .clipShape(RoundedRectangle(cornerRadius: 50))
    }
}

#Preview {
  ButtonBackUp(text: "Back up on Google Drive")
}
