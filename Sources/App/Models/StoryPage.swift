//
//  StoryPage.swift
//  App
//
//  Created by Чистяков Вадим Евгеньевич on 20/06/2019.
//

import Vapor
import FluentSQLite

final class StoryPage: SQLiteModel {
    var id: Int?
    let imageURL: String
    let title: String?
    let description: String

    init(id: Int? ,imageURL: String, title: String?, description: String) {
        self.id = id
        self.imageURL = imageURL
        self.title = title
        self.description = description
    }
}

extension StoryPage: Content {}
