//
//  MyGirl.swift
//  MyRealm
//
//  Created by Metas Umsuwan on 31/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation
import RealmSwift

class MyGirl : Object {
    @objc dynamic var myGirlName = ""
    @objc dynamic var timestamp = Date().timeIntervalSince1970
}
