import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("stories") { req in
        return [Story(id: 123, iconTitle: "iconTitle", iconURL: "iconURL", pages:
                    [StoryPage(id: 1, imageURL: "imageURL", title: "title", description: "description"),
                     StoryPage(id: 1, imageURL: "imageURL", title: "title", description: "description")]),
                Story(id: 123, iconTitle: "iconTitle", iconURL: "iconURL", pages:
                    [StoryPage(id: 1, imageURL: "imageURL", title: "title", description: "description")])]
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
