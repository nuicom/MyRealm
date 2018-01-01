//
//  ViewController.swift
//  MyRealm
//
//  Created by Metas Umsuwan on 17/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        print(path)
        
        let realm = try! Realm()
        let employeeObject = Employee()
        employeeObject.name = "nui"
        employeeObject.position = "programmer"
        
        
        let hero = Hero()
        let girl = MyGirl()
        hero.heroName = "antman"
        hero.myGirl = girl
        girl.myGirlName = "batman"
        hero.powerUp.append(girl)
        hero.powerUp.append(girl)
        
        //insert
        try! realm.write {
            realm.add(employeeObject)
            realm.add(hero)
        }
        
        
        //update
//        let primaryKey = "E4BA3332-D73B-42CB-8C02-3D8B84D6D0EE"
//        let data = realm.object(ofType: Hero.self, forPrimaryKey: primaryKey)
//        for read in (data?.powerUp)! {
//            print(read.myGirlName)
//            try! realm.write {
//                read.myGirlName = "superman"
//            }
//        }
//
//        //delete
//        if(data?.powerUp.count)! > 0 {
//            for read in (data?.powerUp)! {
//                try! realm.write {
//                    realm.delete(read)
//                }
//            }
//        }
//        try! realm.write {
//            realm.delete(data!)
//        }
        
        //query
        let results = realm.objects(Hero.self).sorted(byKeyPath: "id", ascending: true)
        for read in results {
            print(read.heroName)
        }
        
        
        //predicate
        var queryPredicate = realm.objects(Hero.self).filter("heroName CONTAINS 'a'").sorted(byKeyPath: "timestamp", ascending: false)
        for read in queryPredicate {
            print(read.heroName)
        }
        
        //NSPredicate
        let predicate = NSPredicate(format: "heroName BEGINSWITH %@", "a")
        var queryNsPredicate = realm.objects(Hero.self).filter(predicate)
        for read in queryNsPredicate {
            print(read.heroName)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

