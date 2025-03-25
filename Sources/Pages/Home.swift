import Foundation
import Ignite

struct Home: StaticPage {
    var title = "CommunityKit 1.0"
    
    var body: some HTML {
        let brandImage = Image("/images/horizontal-lockup@2x.png", description: "CommunityKit")
            .frame(width: 200)
        NavigationBar(logo: brandImage) {
            
        }
        .background(.lightGray)
        
        
        
        VStack(alignment: .center) {
            VStack {
                Text("Meet")
                    .font(.title1)
            }
            Image("/images/vertical-lockup@2x.png", description: "CommunityKit")
                .resizable()
                .frame(height: 400)
            VStack {
                Text("coming to")
                    .font(.title2)
                Text("WWDC2025")
                    .font(.title1)
                    .fontWeight(.bold)
            }
        }
        
        ZStack {
            Grid {
                Image(decorative: "/images/bluebg.jpg")
                    .resizable()
            }
            
            Grid {
                VStack {
                    Text("join the")
                        .font(.title2)
                    Text("Mailing List")
                        .font(.title1)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.black)
                
                Script(file: "https://communitykit.kit.com/28f3427844/index.js")
                    .data("uid", "28f3427844")
                
            }
        }
        
        VStack(alignment: .leading) {
            Text("Brought to you by:")
                .font(.title1)
                .fontWeight(.bold)
            
            Group {
                Text("• Tamia James")
                Text("• Adrian Eves")
                Text("• Mikaela Caron")
                Text("• Paul Hudson")
                Text("• Michie Ang")
                Text("• Chris Wu")
                Text("• Frank Foster")
            }
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.top, 60)
        }
        .padding(75)
    }
}
