//
//  GroupData.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-13.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import Foundation

class GroupData {
    
    var location : String = ""
    var name : String = ""
    var description : String = ""
    var numberOfMembers : Int = 0
    
    func GroupData(_ location : String, name : String, description : String, numberOfMembers : Int) -> GroupData {
        self.location = location
        self.name = name
        self.description = description
        self.numberOfMembers = numberOfMembers
        return self
    }
    
    
    
    func create(_ location : String, name : String, description : String, numberOfMembers : Int) -> GroupData {
        var newGroup : GroupData = GroupData(location, name : name, description : description, numberOfMembers: numberOfMembers)
        newGroup.location = location
        newGroup.name = name
        newGroup.description = description
        newGroup.numberOfMembers = numberOfMembers
        return newGroup
    }
    
   
    
    
}
