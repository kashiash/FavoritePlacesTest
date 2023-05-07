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
    
    func delete(_ object: NSManagedObject) {
        context.delete(object)
        saveContext()
    }
    
    private func delete(_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) {
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        batchDeleteRequest.resultType = .resultTypeObjectIDs
        
        if let delete = try? context.execute(batchDeleteRequest) as? NSBatchDeleteResult {
            let changes = [NSDeletedObjectsKey: delete.result as? [NSManagedObjectID] ?? []]
            NSManagedObjectContext.mergeChanges(fromRemoteContextSave: changes, into: [context])
        }
    }
    
    
    func deleteAll() {
        let request1: NSFetchRequest<NSFetchRequestResult> = Place.fetchRequest()
        delete(request1)
        
        
        saveContext()
    }
    
    func createSampleData() {
        
        for location in PlaceViewModel.sampleLocations {
            print("Adding  \(location.name)")
            try? {
                let place = AddPlaceVM()
                place.address = location.address
                place.notes = location.description
                place.flag = location.flagEmoji
                    // place.city = location.city
                place.country = location.country
                place.name = location.name
                
                
                print("Taking Image \(place.name)")
                await place.getImageFor(placeName: place.name + " " + place.address)
                print("Saving \(place.name)")
                await place.savePlace()
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
