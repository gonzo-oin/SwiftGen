//: #### Other pages
//:
//: * Demo for swiftgen-l10n
//: * [Demo for swiftgen-assets](Assets-Demo)
//: * [Demo for swiftgen-storyboard](Storyboard-Demo)
//: * [Demo for swiftgen-colors](Colors-Demo)

import Foundation

//: #### Example of code generated by swiftgen-l10n

// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

enum L10n {
    case AlertTitle
    case AlertMessage
    case Greetings(String, Int)
    case ApplesCount(Int)
    case BananasOwner(Int, String)
    case ObjectOwnership(Int, String, String)
}

extension L10n : CustomStringConvertible {
    var description : String { return self.string }
    
    var string : String {
        switch self {
        case .AlertTitle:
            return L10n.tr("alert_title")
        case .AlertMessage:
            return L10n.tr("alert_message")
        case .Greetings(let p0, let p1):
            return L10n.tr("greetings", p0, p1)
        case .ApplesCount(let p0):
            return L10n.tr("apples.count", p0)
        case .BananasOwner(let p0, let p1):
            return L10n.tr("bananas.owner", p0, p1)
        case .ObjectOwnership(let p0, let p1, let p2):
            return L10n.tr("object.ownership", p0, p1, p2)
        }
    }
    
    private static func tr(key: String, _ args: CVarArgType...) -> String {
        let format = NSLocalizedString(key, comment: "")
        return String(format: format, arguments: args)
    }
}

func tr(key: L10n) -> String {
    return key.string
}



//: #### Usage example

let alertTitle = tr(.AlertTitle)
let hello1 = tr(.Greetings("David", 29))
let hello2 = L10n.Greetings("Olivier", 32) // Prints as a string in the console because it's CustomStringConvertible

// note the inversion of parameters' order due to usage of %1$d, %2$@ and %1$@ in Localizable.strings
tr(.ObjectOwnership(3, "Apples", "John"))

