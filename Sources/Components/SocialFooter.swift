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
        Image(systemName: "twitter"),
        Image(systemName: "bluesky"),
        Image(systemName: "mastodon")
    ]

    let urlStrings = [
        "https://twitter.com/twostraws",
        "https://youtube.com/@twostraws",
        "https://mastodon.social/@twostraws"
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
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
    }
}
