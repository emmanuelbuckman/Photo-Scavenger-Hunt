//
//  Task.swift
//  Photo Scavenger Hunt
//
//  Created by Emmanuel Buckman on 2/22/23.
//

import Foundation
import CoreLocation
import UIKit

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant",
                 description: "Which local resaturant do you enjoy eating at the most?"),
            Task(title: "Your favorite retail store",
                 description: "Where do you enjoy shopping the most?"),
            Task(title: "Your favorite recreational spot",
                 description: "Where do you like to spend time doing recreational activities?")
        ]
    }
}
