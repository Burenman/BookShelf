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


    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
    init(){
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
