//  UINavigationControllerExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 21/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.

import Foundation
#if canImport(UIKit)
import UIKit

extension UINavigationController {
    open func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        pushViewController(viewController, animated: animated)
        executeTransitionCoordinator(animated: animated, completion: completion)
    }

    @discardableResult
    open func popViewController(animated: Bool, completion: @escaping () -> Void) -> UIViewController? {
        let viewController = popViewController(animated: animated)
        executeTransitionCoordinator(animated: animated, completion: completion)
        return viewController
    }

    @discardableResult
    open func popToViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) -> [UIViewController]? {
        let viewControllers = popToViewController(viewController, animated: animated)
        executeTransitionCoordinator(animated: animated, completion: completion)
        return viewControllers
    }

    @discardableResult
    open func popToRootViewController(animated: Bool, completion: @escaping () -> Void) -> [UIViewController]? {
        let viewControllers = popToRootViewController(animated: animated)
        executeTransitionCoordinator(animated: animated, completion: completion)
        return viewControllers
    }

    private func executeTransitionCoordinator(animated: Bool, completion: @escaping () -> Void) {
        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async(execute: completion)
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }
}
#endif // canImport(UIKit)

