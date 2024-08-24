//
//  AppDelegate.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 18.08.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Точка переопределения для настройки после запуска приложения.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Вызывается при создании нового сеанса сцены.
        // Используйте этот метод, чтобы выбрать конфигурацию для создания новой сцены.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Вызывается, когда пользователь отменяет сеанс сцены.
        // Если какие-либо сеансы были отменены, пока приложение не работало, это будет вызвано вскоре после application:didFinishLaunchingWithOptions.
        // Используйте этот метод, чтобы освободить любые ресурсы, относящиеся к отброшенным сценам, поскольку они не вернутся.
    }


}

