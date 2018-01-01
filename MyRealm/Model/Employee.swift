//
//  Employee.swift
//  MyRealm
//
//  Created by Metas Umsuwan on 31/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation
import RealmSwift

class Employee : Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var position = ""
    @objc dynamic var timestamp = Date().timeIntervalSince1970
}

