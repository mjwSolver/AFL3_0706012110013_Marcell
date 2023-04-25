//
//  PageViewController.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 25/04/23.
//

import Foundation
import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    // Passes down itself as the parameter.
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    // This will be used only once to create a pageViewController
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
    
    // Creates a UIHostingController to "host" future SwiftUI Views every time it updates
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [context.coordinator.controllers[0]], direction: .forward, animated: true)
    }
    
    // Coordinator, Nested Class
    class Coordinator: NSObject {
        var parent: PageViewController
        var controllers = [UIViewController]()

        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map { UIHostingController(rootView: $0) }
        }
    }

}
