//
//  Story.swift
//  App
//
//  Created by Чистяков Вадим Евгеньевич on 20/06/2019.
//

import Vapor
import FluentSQLite

final class Story: SQLiteModel {
    var id: Int?
    let iconTitle: String?
    let iconURL: String
    let pages: [StoryPage]

    init(id: Int?, iconTitle: String?, iconURL: String, pages: [StoryPage]) {
        self.id = id
        self.iconTitle = iconTitle
        self.iconURL = iconURL
        self.pages = pages
    }
}

extension Story: Content {}
