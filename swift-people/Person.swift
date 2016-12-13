//
//  Person.swift
//  swift-people
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
        return false
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        
        if self.ageInYears == nil {
            return "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        } else {
            self.ageInYears! += 1
            return "HAPPY \(self.ageInYears?.ordinal().uppercased()) BIRTHDAY, \(self.name.uppercased())!!!"
        }
        
    }
    
}
