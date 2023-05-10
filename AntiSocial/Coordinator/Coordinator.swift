//
//  Coordinator.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController : BaseNavigationController { get set }

    func start()
    func pop()
}
