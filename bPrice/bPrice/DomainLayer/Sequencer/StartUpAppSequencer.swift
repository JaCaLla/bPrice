//
//  StartUpAppSequencer.swift
//  bPrice
//
//  Created by Javier Calatrava Llaveria on 21/05/2019.
//  Copyright © 2019 Javier Calatrava Llaveria. All rights reserved.
//


import Foundation
import SwiftUI

class  StartUpAppSequencer {
    fileprivate let operationQueue = OperationQueue()

    func start(scene: UIScene, sceneDelegate: SceneDelegate) {

        let presentMainAppOperation = PresentMainAppOperation(scene: scene, sceneDelegate: sceneDelegate)

        let operations = [presentMainAppOperation]

        // Add operation dependencies
       
        operationQueue.addOperations(operations, waitUntilFinished: false)
    }
}
