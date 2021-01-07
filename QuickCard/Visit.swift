//
//  Visit.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import Foundation


struct Visit: Identifiable {
    let id = UUID()
    let views: Int
    let events: Int
    let badges: Int
    let actions: Int
    let duration: Int
}
