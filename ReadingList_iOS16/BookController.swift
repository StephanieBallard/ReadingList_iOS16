//
//  BookController.swift
//  ReadingList_iOS16
//
//  Created by Stephanie Ballard on 3/23/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation

class BookController {
    var books: [Book] = []
    
    var readingListFileURL: URL? {
        let fileManager = FileManager.default
        let documentsDir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
        let booksURL = documentsDir?.appendingPathComponent("books.plist")
        return booksURL
    }

    func saveToPersistentStore() {
        do {
            let encoder = PropertyListEncoder()
            let booksPlist = try encoder.encode(books)
            guard let readingListFileURL = readingListFileURL else { return }
            try booksPlist.write(to: readingListFileURL)
        } catch {
            print("Error saving books: \(error)")
        }
    }
    
    func loadFromPersistentStore() {
        guard let readingListFileURL = readingListFileURL else { return }
        do {
            let decoder = PropertyListDecoder()
            let booksPlist = try Data(contentsOf: readingListFileURL)
            let books = try decoder.decode([Book].self, from: booksPlist)
            self.books = books
        } catch {
            print("Error decoding books: \(error)")
        }
    }
}

// TODO: Steps three through eight under the BookController instructions.
