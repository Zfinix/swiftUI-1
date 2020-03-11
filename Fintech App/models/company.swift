import Foundation

struct Company:Identifiable {
    let id = UUID().uuidString
    var name: String
    var points:Int
    var imageUrl: String
}
