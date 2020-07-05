//
//  RootTabBarWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

typealias Submodules = (
    home: UIViewController,
    profile: UIViewController
)

class RootTabBarWireframe {

    static func buildTabs() -> [UIViewController] {
        let home = buildTabBarItem(
                        controller: HomeWireframe.buildModuleFromUINavigation(),
                        title: R.string.localizable.homeTitle(),
                        image: R.image.homeIcon(),
                        tag: 0 )
        let profile = buildTabBarItem(
                        controller: ProfileWireframe.buildModuleFromUINavigation(),
                        title: R.string.localizable.profileTitle(),
                        image: R.image.personIcon(),
                        tag: 3 )

        return [ home, profile ]
    }

    private static func buildTabBarItem(controller: UIViewController, title: String, image: UIImage?, tag: Int) -> UIViewController {

        controller.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)

        return controller
    }
}
