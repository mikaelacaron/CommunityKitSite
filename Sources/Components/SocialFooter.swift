//
//  SocialFooter.swift
//  IgniteStarter
//
//  Created by Mikaela Caron on 3/25/25.
//

import Foundation
import Ignite

struct SocialFooter: HTML {
    let icons = [
        Image(systemName: "mastodon")
    ]

    let urlStrings = [
        "https://mastodon.social/@communitykit"
    ]

    var body: some HTML {
        Text {
            ForEach(zip(icons, urlStrings)) { (icon, urlString) in
                Link(icon, target: urlString)
                    .role(.secondary)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .margin(.trailing, 20)
            }
            
            Link(
                Image("/images/bluesky.svg", description: "bluesky logo")
                    .resizable()
                    .frame(width: 36)
                 , target: "https://bsky.app/profile/communitykit.bsky.social")
                .role(.secondary)
                .target(.blank)
                .relationship(.noOpener, .noReferrer)
                .margin(.trailing, 20)
            
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
    }
}
