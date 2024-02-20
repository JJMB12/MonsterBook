//
//  MonsterModel.swift
//  MonsterBook
//
//  Created by JJ on 18/2/2567 BE.
//

import SwiftUI

struct Monster: Identifiable{
    var id = UUID()
    var name: String
    var headline: String
    var image: String
    var color: [Color]
    var description: String
}
