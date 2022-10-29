//
//  CoreDataBootCamp.swift
//  StepOutProject
//
//  Created by Fabio Barbato on 26/10/22.
//

import SwiftUI
import CoreData

class CoreDataViewModel: ObservableObject{
    let container: NSPersistentContainer
    @Published var savedEntities: [UserEntity] = []
    
    init(){
        container = NSPersistentContainer(name: "UserContainer")
        container.loadPersistentStores { (description, error) in
            if let error = error{
                print("EEROR LOADING CORE DATA. \(error)")
            }
            else{
                print("Successfully loaded core data!")
            }
        }
        fetchUser()
    }
    
    func fetchUser(){
        let request = NSFetchRequest<UserEntity>(entityName: "UserEntity")
        
        do{
            savedEntities = try container.viewContext.fetch(request)
        }catch let error{
            print("Error fetching. \(error)")
        }
    }
    
    func addUser(text: String){
        let newUser = UserEntity(context: container.viewContext)
        newUser.username = text
        saveData()
    }
    
    
    /*
    func updatePoints(entity: UserEntity, challengeDone: Challenge){
        entity.audacityPoints = entity.audacityPoints + challengeDone.audacity
        entity.sociabilityPoints = entity.sociabilityPoints + challengeDone.sociability
        entity.psPoints = entity.psPoints + challengeDone.psPoints
        entity.xpPoints = entity.xpPoints + challengeDone.xpPoints
     
     
        if entity.xpLvl == 100 {
            entity.xpLvl += 1
        }
     
        saveData()
    }*/
    
    func saveData(){
        do{
            try container.viewContext.save()
            fetchUser()
        } catch let error{
            print("Error saving. \(error)")
        }
    }
    
    
}

struct CoreDataBootCamp: View {
    
    @StateObject var vm = CoreDataViewModel()
    @State var textFieldText: String = ""
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 20){
                TextField("Add user here...", text: $textFieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height:55)
                    .background(Color(.green))
                    .cornerRadius(10)
                    .padding(.horizontal)
                Spacer()
            }
            .navigationTitle("Users")
            
        }
    }
}

struct CoreDataBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataBootCamp()
    }
}
