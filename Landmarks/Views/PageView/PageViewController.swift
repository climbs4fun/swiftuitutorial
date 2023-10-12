//
//  PageViewController.swift
//  Landmarks
//
//  Created by Brian Baker on 10/12/23.
//

import Foundation
import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    func makeUIViewController(context: Context) -> some UIViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        pageViewController.setViewController(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
                                             
    }

}
