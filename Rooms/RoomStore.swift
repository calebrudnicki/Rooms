//
//  RoomStore.swift
//  Rooms
//
//  Created by Caleb Rudnicki on 6/28/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    var rooms: [Room] {
        didSet { objectWillChange.send() }
    }
    
    init(rooms: [Room] = testData) {
        self.rooms = rooms
    }
    
    var objectWillChange = PassthroughSubject<Void, Never>()
}
