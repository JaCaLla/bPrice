//
//  PresentMainAppOperation.swift
//  vlng
//
//  Created by Javier Calatrava Llaveria on 21/05/2019.
//  Copyright © 2019 Javier Calatrava Llaveria. All rights reserved.
//

import Foundation
import SwiftUI

class PresentMainAppOperation: ConcurrentOperation {

    // MARK: - Private attributes
    private var scene:UIScene
    private var sceneDelegate: SceneDelegate
    
    // MARK: - Initializers
    init(scene: UIScene, sceneDelegate: SceneDelegate) {
        self.scene = scene
        self.sceneDelegate = sceneDelegate
    }
    
    

    override func main() {

        DispatchQueue.main.async {
            MainFlowCoordinator.shared.start(scene: self.scene, sceneDelegate: self.sceneDelegate)
            self.state = .finished
        }
    }
}
