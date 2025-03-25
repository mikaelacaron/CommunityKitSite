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
                    Text("• Gather with the community of developers and designers")
                    Text("• Network with new friends and old")
                    Text("• Get the cutting edge of WWDC 25")
                    Text("• Attend events with us and other community staples")
                    Text("• Join us for LIVE podcast recordings")
                }
                .font(.title1)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .padding(.top, 60)
            }
            .padding(75)
        }
        
        ZStack {
            Grid {
                Image(decorative: "/images/bluebg.jpg")
                        .resizable()
            }
            .columns(1)
            
            VStack(alignment: .center) {
                Image(decorative: "/images/mail.png")
                    .resizable()
                    .frame(height: 400)
                VStack {
                    Text("join the")
                        .font(.title2)
                    Text("Mailing List")
                        .font(.title1)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.black)
            }
        }
        
        ZStack(alignment: .topLeading) {
            Grid {
                Image(decorative: "/images/light-office.jpg")
                    .resizable()
            }
            .columns(1)
            
            VStack(alignment: .leading) {
                Image("/images/broughtheader.png", description: "Brought to you by")
                    .resizable()
                    .frame(width: 900)
                Group {
                    Text("• Tamia James")
                    Text("• Adrian Eves")
                    Text("• Mikaela Caron")
                    Text("• Paul Hudson")
                    Text("• Michie Ang")
                    Text("• Chris Wu")
                    Text("• Frank Foster")
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
