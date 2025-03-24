import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = CommunityKitSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct CommunityKitSite: Site {    
    var name = "CommunityKit"
    var titleSuffix = " – My Awesome Site"
    var url = URL(static: "https://www.example.com")
    var builtInIconsEnabled = true

    var author = "John Appleseed"

    var homePage = Home()
    var layout = MainLayout()
}
