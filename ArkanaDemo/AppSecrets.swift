//
//  AppSecrets.swift
//  ArkanaDemo
//
//  Created by Nishchal Visavadiya on 17/02/23.
//

import Foundation
import ArkanaDemoSecrets
import ArkanaDemoSecretsInterfaces

public struct AppSecrets {
    
    private static var infoDictoonary: [String: Any] {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Info plist not found")
        }
        return dict
    }

    private static var environment: SecretsEnvironmentProtocol {
        #if Development
        return Secrets.Development()
        #elseif Production
        return Secrets.Production()
        #elseif Staging
        return Secrets.Staging()
        #elseif UAT
        return Secrets.UAT()
        #else
        fatalError("Build environment not found!!")
        #endif
    }

    static let sentryKey = environment.sentryDNSKey
    static let globalKey = Secrets.Global().globalKey
    static let apiKey = infoDictoonary[PlistKeys.apiKey] as! String
    static let mySecret = "QeXUWFlCigBsKOHeqWEH"
    
    struct PlistKeys {
        static let apiKey = "APIKey"
    }
}
