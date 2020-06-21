//
//  SafariView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/20/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI
import SafariServices

final class CustomSafariViewController: UIViewController {
    var url: URL? {
        didSet {
            configure()
        }
    }
    private var safariViewController: SFSafariViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        // Remove the previous Safari child view controller if not nil.
        if let safariViewController = safariViewController {
            safariViewController.willMove(toParent: self)
            safariViewController.view.removeFromSuperview()
            safariViewController.removeFromParent()
            self.safariViewController = nil
        }
        guard let url = url else { return }
        // Create a new Safari child view controller with the URL.
        let newSafariViewController = SFSafariViewController(url: url)
        addChild(newSafariViewController)
        newSafariViewController.view.frame = view.frame
        view.addSubview(newSafariViewController.view)
        newSafariViewController.didMove(toParent: self)
        self.safariViewController = newSafariViewController
    }
}

struct SafariView: UIViewControllerRepresentable {
    typealias UIViewControllerType = CustomSafariViewController
    
    @Binding var url: URL?

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> CustomSafariViewController {
        return CustomSafariViewController()
    }
    
    func updateUIViewController(_ safariViewController: CustomSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        safariViewController.url = url
    }
}
