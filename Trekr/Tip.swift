//
//  Tip.swift
//  Trekr
//
//  Created by Jack on 8/10/23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
