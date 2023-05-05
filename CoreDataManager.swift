//
//  CoreDataManager.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 05/05/2023.
//

import Foundation
import CoreData


class CoreDataManager{
    
    static let shared = CoreDataManager()
    
    private init() {}
    
    lazy var persisterntContainer :NSPersistentContainer = {
       let container = NSPersistentContainer(name: "FavoritePlacesTest")
        container.loadPersistentStores { _, error in
            if let error = error as? NSError {
                fatalError("Error: \(error), \(error.userInfo) , \(error.localizedDescription)" )
            }
        }
        return container
    }()
    
    var context: NSManagedObjectContext {
        persisterntContainer.viewContext
    }
}
