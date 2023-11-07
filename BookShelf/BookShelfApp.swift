//
//  BookShelfApp.swift
//  BookShelf
//
//  Created by Viktor on 2023-10-30.
//

import SwiftUI
import SwiftData

@main
struct BookShelfApp: App {

    let container: ModelContainer
    var body: some Scene {
    
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
    init(){
        
        let schema = Schema([Book.self])
        let config = ModelConfiguration("BookShelf", schema: schema)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Could not configure the container")
        }
        
//        let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "BookShelf.store"))
//        do {
//            container = try ModelContainer(for: Book.self, configurations: config)
//        } catch {
//            fatalError("Could not configure the container")
//        }
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
        //print(URL.documentsDirectory.path())
    }
}
