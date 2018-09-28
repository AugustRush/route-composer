//
//  CircleViewController.swift
//  CircumferenceKit
//
//  Created by Eugene Kazaev on 18/12/2017.
//  Copyright © 2017 HBC Tech. All rights reserved.
//

import UIKit
import RouteComposer

class CircleViewController: UIViewController, ExampleAnalyticsSupport {

    let screenType = ExampleScreen.circle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToSquareTapped() {
        router.navigate(to: ConfigurationHolder.configuration.squareScreen, with: nil)
    }

    @IBAction func goToRandomColorTapped() {
        router.navigate(to: ConfigurationHolder.configuration.colorScreen, with: "0000FF")
    }

    @IBAction func goToDeepModalTapped() {
        router.navigate(to: ConfigurationHolder.configuration.routingSupportScreen, with: "00FF00")
    }

    @IBAction func goToSuperModalTapped() {
        router.navigate(to: ConfigurationHolder.configuration.secondModalScreen, with: "0000FF")
    }

    @IBAction func goToProductTapped() {
        router.navigate(to: ProductConfiguration.productScreen, with: ProductContext(productId: "00"))
    }

    @IBAction func goToWelcomeTapped() {
        router.navigate(to: ConfigurationHolder.configuration.welcomeScreen, with: nil)
    }

    @IBAction func goToImagesTapped() {
        router.navigate(to: ImagesConfigurationWithLibrary.images())
    }

    @IBAction func goToImagesNoLibraryTapped() {
        ImagesWithoutLibraryConfiguration.shared.showCustomController()
    }

}
