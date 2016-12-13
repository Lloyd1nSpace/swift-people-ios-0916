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
    var skills = Set<String>()
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
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
        if self.ageInYears != nil {
            self.ageInYears! += 1
            return "HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal().uppercased()) BIRTHDAY, \(self.name.uppercased())!!!"
        } else {
            return "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        }
    }
    
    func learnSkillBash() {
        self.skills.insert("bash")
    }
    
    func learnSkillXcode() {
        self.skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        self.skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        self.skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        self.skills.insert("Interface Builder")
    }
    
}
