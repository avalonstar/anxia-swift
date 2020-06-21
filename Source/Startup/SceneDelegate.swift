//
//  SceneDelegate.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/17/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import OAuthSwift
import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var auth = Authentication()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = RootView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView.environmentObject(auth))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
        
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        handleOpenUrl(notificationName: .twitterCallback, callbackScheme: TWITTER_URL_SCHEME, url: URLContexts.first?.url)
    }
    
    func handleOpenUrl(notificationName: Notification.Name, callbackScheme scheme: String, url: URL?) {
        // First, verify that the URL scheme received matches our callback URL scheme.
        guard let url = url,
            let urlScheme = url.scheme,
            let callbackUrl = URL(string: "\(scheme)://"),
            let callbackScheme = callbackUrl.scheme
        else { return }
        guard urlScheme.caseInsensitiveCompare(callbackScheme) == .orderedSame else { return }
        // If the schemes match, we include the URL in the object of the notifiaction.
        let notification = Notification(name: notificationName, object: url, userInfo: nil)
        NotificationCenter.default.post(notification)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
