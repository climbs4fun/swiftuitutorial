//
//  PageViewController.swift
//  Landmarks
//
//  Created by Brian Baker on 10/12/23.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIPageViewController {
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
            pageViewController.setViewControllers(
                [context.coordinator.controllers[0]], direction: .forward, animated: true)
    }

    class Coordinator: NSObject, UIPageViewControllerDataSource {
        var parent: PageViewController
        var controllers = [UIViewController]()
        
        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map { UIHostingController(rootView: $0)}
        }
        
        func pageViewController(
            _ pageViewCongroller: UIPageViewController,
            viewControllerBefore viewController: UIViewController) -> UIV
        
        )
        
        
    }
    
}



