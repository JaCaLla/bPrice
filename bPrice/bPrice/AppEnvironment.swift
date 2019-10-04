//
//  AppConfig.swift


import Foundation

enum Environment: String {
    case debug = "Debug"
    case staging = "Staging"
    case production = "Release"

    var toString: String {
        switch self {
        case .debug: return "dev"
        case .staging: return "staging"
        case .production: return "production"
        }
    }
}

// MARK: - Private
class AppEnvironment {

    static let shared =  AppEnvironment()

    private init() { /*This prevents others from using the default '()' initializer for this class. */ }

    lazy var environment: Environment = {

        guard let uwpInfoDictionary = Bundle.main.infoDictionary,
            let uwpConfiguration = uwpInfoDictionary["Configuration"] as? String,
            let uwpBuildConfiguration = Environment(rawValue: uwpConfiguration) else {
                print("❌❌❌ No Build configuration Found: Set Debug as default ❌❌❌")
                return Environment.debug
        }
        print("⚙️⚙️⚙️    Build configuration: \(uwpBuildConfiguration)   ⚙️⚙️⚙️")
        return uwpBuildConfiguration
    }()
}
