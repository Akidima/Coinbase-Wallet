//
//  Coinbase_WalletApp.swift
//  Coinbase Wallet
//
//  Created by GA on 09/02/2024.
//

import SwiftUI

@main
struct Coinbase_WalletApp: App {
    var body: some Scene {
        WindowGroup {
          NavigationStack{
            ProtectWallet()
          }
        }
    }
}
