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
        return [Story(id: 123, iconTitle: "iconTi3tle1", iconURL: "https://avatars.mds.yandex.net/get-pdb/1779125/877f261f-f3fe-442a-9551-322855b86b76/s1200", pages:
                    [StoryPage(id: 1, imageURL: "https://avatars.mds.yandex.net/get-pdb/1779125/877f261f-f3fe-442a-9551-322855b86b76/s1200", title: "title", description: "desc234ription"),
                     StoryPage(id: 12, imageURL: "https://avatars.mds.yandex.net/get-pdb/69339/3cc3bee7-92ad-4764-95b3-1564b40e5491/s1200", title: "tit111le", description: "desc3123ription")]),
                Story(id: 1123, iconTitle: "iconTitle", iconURL: "https://avatars.mds.yandex.net/get-pdb/911433/88d9f108-cc8d-4717-a23f-311c83b2408c/s1200", pages:
                    [StoryPage(id: 13, imageURL: "https://avatars.mds.yandex.net/get-pdb/1779125/877f261f-f3fe-442a-9551-322855b86b76/s1200", title: "title12", description: "description")])]
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
