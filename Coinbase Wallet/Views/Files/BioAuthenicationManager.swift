//
//  BioAuthenicationManager.swift
//  Coinbase Wallet
//
//  Created by GA on 04/03/2024.
//

//import Foundation
//import LocalAuthentication
//
//class BioAuthenicationManager: ObservableObject {
//  // This variable can only be set within this class
//  //You use an authentication context to evaluate the user’s identity, either with biometrics like Touch ID or Face ID, or by supplying the device passcode.
//  private (set) var context = LAContext()
//  @Published private(set) var biometryType: LABiometryType = .none
//  private(set) var canEvaluatePolicy = false
//
//  init() {
//    getBiometryType()
//  }
//
//  func getBiometryType() {
//    context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
//    biometryType = context.biometryType
//  }
//
//
//
//}
