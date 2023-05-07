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
    
    func saveContext(){
        if context.hasChanges {
            do {
                try context.save()
            } catch let err {
                let error = err as NSError
                fatalError("Error saving context \(error)")
            }
        }
    }
    
    
    func getAll() -> [Place]{
        var places = [Place]()
        let placeRequest: NSFetchRequest<Place> = Place.fetchRequest()
        
        do {
            places = try context.fetch(placeRequest)
        } catch let err as NSError {
            print(err.localizedDescription)
        }
        return places
    }
    
    func savePlace(name: String , notes: String, city: String, country: String, imageData: Data){
        let place = Place(context: context)
        place.id = UUID()
        place.name = name
        place.city = city
        place.country = country
        place.notes = notes
        place.image = imageData
        
        
        saveContext()
    }
    
    func savePlace(name: String , notes: String, city: String, country: String, imageData: Data,flag: String, address: String ){
        let place = Place(context: context)
        place.id = UUID()
        place.name = name
        place.city = city
        place.country = country
        place.notes = notes
        place.image = imageData
        place.flag = flag
        place.address = address
        saveContext()
    }
    
    func delete(id: UUID) {
        let fetchRequest: NSFetchRequest<Place> = Place.fetchRequest()
        
        fetchRequest.predicate = NSPredicate.init(format: "id=%@", id.uuidString)
        
        do {
            let fetchedPlaces = try context.fetch(fetchRequest)
            for pl in fetchedPlaces {
                context.delete(pl)
            }
            saveContext()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}
