//
//  TapCheckoutApiManager.swift
//  TapCheckoutApiKIT
//
//  Created by Osama Rabie on 22/03/2022.
//

import Foundation
import CommonDataModelsKit_iOS



/// Represents the api shared manager
public class TapCheckoutApiManager {
    
    /// Represents the api shared manager
    static let sharedApiManager = TapCheckoutApiManager()
    
    /**
     - Parameter sdkMode: Represents the mode of the sdk . Whether sandbox or production
     - Parameter localeIdentifier: The ISO 639-1 Code language identefier, please note if the passed locale is wrong or not found in the localisation files, we will show the keys instead of the values
     - Parameter secretKey: The secret keys providede to your business from TAP.
     - Parameter enableSavedCard: Defines if the customer can save his card for upcoming payments. Default is `true`.
     - Parameter encryptionKey:Encryption key.
     - Parameter version: SDK version
     - Parameter sessionToken: Session token.
     - Parameter allowedCardTypes: allowed Card Types, if not set all will be accepeted.
     - Parameter transactionTotalAmountValue: The total amount of the charge request if any
     */
    
    public init(sdkMode: SDKMode = .sandbox, localeIdentifier: String = "en", secretKey: SecretKey = .init(sandbox: "", production: ""), enableSaveCard: Bool = true, encryptionKey: String? = nil, version: String? = nil, sessionToken: String? = nil, allowedCardTypes: [CardType] = [CardType(cardType: .Debit), CardType(cardType: .Credit)], transactionTotalAmountValue: Double = 0) {
        self.sdkMode = sdkMode
        self.localeIdentifier = localeIdentifier
        self.secretKey = secretKey
        self.enableSaveCard = enableSaveCard
        self.encryptionKey = encryptionKey
        self.version = version
        self.sessionToken = sessionToken
        self.allowedCardTypes = allowedCardTypes
        self.transactionTotalAmountValue = transactionTotalAmountValue
    }
    
    
    /// Represents the mode of the sdk . Whether sandbox or production
    public var sdkMode:SDKMode = .sandbox
    /// The ISO 639-1 Code language identefier, please note if the passed locale is wrong or not found in the localisation files, we will show the keys instead of the values
    public var localeIdentifier:String = "en"
    /// The secret keys providede to your business from TAP.
    public var secretKey:SecretKey = .init(sandbox: "", production: "")
    /// Defines if the customer can save his card for upcoming payments. Default is `true`.
    public var enableSaveCard:Bool = true
    /// Encryption key.
    public var encryptionKey: String?
    /// SDK version
    public var version:String?
    /// Session token.
    public var sessionToken: String?
    /// allowed Card Types, if not set all will be accepeted.
    public var allowedCardTypes:[CardType] = [CardType(cardType: .Debit), CardType(cardType: .Credit)]
    /// The total amount of the charge request if any
    public var transactionTotalAmountValue: Double = 0
    
    
    
    
    
    
}
