//
//  Coordinator.swift
//  TinderClone
//
//  Created by Deep Parekh on 8/11/17.
//
//

protocol Coordinator {
    var childCoordinators: [Coordinator]? {get set}
    func start()
    func end()
}
