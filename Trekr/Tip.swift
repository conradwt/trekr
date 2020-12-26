//
//  Tip.swift
//  Trekr
//
//  Created by Conrad Taylor on 12/25/20.
//

import Foundation

struct Tip: Decodable {
  let text: String
  let children: [Tip]?
}
