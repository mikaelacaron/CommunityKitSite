import Foundation
import Ignite
import SwiftUI

struct Home: StaticPage {
    var title = "CommunityKit 1.0"
    
    var body: some HTML {
            let brandImage = Image("/images/horizontal-lockup@2x.png", description: "CommunityKit")
                .frame(width: 200)
            NavigationBar(logo: brandImage) {
                
            }
            .background(.lightGray)
        
        ZStack {
            Grid {
                Image(decorative: "/images/blackbg.jpg")
                        .resizable()
            }
            .columns(1)
            
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
                    Text("WWDC 2025")
                        .font(.title1)
                        .fontWeight(.bold)
                }
            }
        }
        
        ZStack(alignment: .topLeading) {
            Grid {
                Image(decorative: "/images/light-office.jpg")
                    .resizable()
            }
            .columns(1)
            
            VStack(alignment: .leading) {
                Image("/images/whatis.png", description: "What is CommunityKit?")
                    .resizable()
                    .frame(width: 900)
                Group {
                    Text("• Bullet point 1")
                    Text("• Bullet point 2")
                    Text("• Bullet point 3")
                }
                .font(.title1)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .padding(.top, 60)
            }
            .padding(75)
        }
    }
}
