import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("CommunityKit")
            .font(.title1)
    }
}
