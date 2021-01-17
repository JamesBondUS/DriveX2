//
//  ToDoListItem.swift
//  SwiftUIToDoList2
//
//  Created by Anish Gupta on 1/17/21.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request: NSFetchRequest<ToDoListItem> = ToDoListItem.fetchRequest() as!
            NSFetchRequest<ToDoListItem>
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
