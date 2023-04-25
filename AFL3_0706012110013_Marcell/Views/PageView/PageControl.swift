//
//  PageControl.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI
import UIKit

// PageControl for those dots we see at the bottom of the view?
struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    // function to create Coordinator
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // Creates the UI View according to outside info
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        // Adding coordinator as the target and its actions.
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return control
    }

    // Updates the control with the latest page
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    
    class Coordinator: NSObject {
        var control: PageControl

        init(_ control: PageControl) {
            self.control = control
        }

        // UIControl use target-action pattern, not delegate
        // UIPageControl is a subclass of it
        // thus needs an @obj method to update current page
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
