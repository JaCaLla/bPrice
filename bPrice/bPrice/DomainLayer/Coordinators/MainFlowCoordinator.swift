//
//  MainFlowCoordinator.swift
//  vlng
//
//  Created by Javier Calatrava Llaveria on 21/05/2019.
//  Copyright © 2019 Javier Calatrava Llaveria. All rights reserved.
//

import Foundation
import SwiftUI

class MainFlowCoordinator {

    // MARK: - Singleton handler
    static let shared =  MainFlowCoordinator()

    // MARK: - Private attributes
    private let navigationController =  UINavigationController()


    private init() { /*This prevents others from using the default '()' initializer for this class. */ }

    // MARK: - Pulic methods
    func start(scene: UIScene, sceneDelegate: SceneDelegate)   {
        return self.presentTransactionsList(scene: scene, sceneDelegate: sceneDelegate)
    }

    // MARK: - Private/Internal
    private func presentTransactionsList(scene: UIScene, sceneDelegate: SceneDelegate)  {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            sceneDelegate.window = window
            window.makeKeyAndVisible()
        }
    }
}
