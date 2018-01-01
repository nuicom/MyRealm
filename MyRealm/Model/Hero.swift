//
//  Hero.swift
//  MyRealm
//
//  Created by Metas Umsuwan on 31/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation
import RealmSwift

class Hero : Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var heroName = ""
    @objc dynamic var myGirl : MyGirl?
    let powerUp = List<MyGirl>()
    @objc dynamic var timestamp = Date().timeIntervalSince1970
    
    override static func primaryKey()->String?{
        return "id"
    }
}
