//
// Created by Eugene Kazaev on 22/01/2018.
// Copyright (c) 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import RouteComposer

class SecondModalLevelViewController: UIViewController, ExampleAnalyticsSupport {

    let screenType = ExampleScreen.secondLevelModal

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTapped))
    }

    @IBAction func goToColorTapped() {
        router.navigate(to: ConfigurationHolder.configuration.colorScreen, with: "FF0000")
    }

    @IBAction func goToHomeTapped() {
        router.navigate(to: ConfigurationHolder.configuration.homeScreen, with: nil)
    }

    @IBAction func goToMinskTapped() {
        router.navigate(to: CitiesConfiguration.cityDetail(cityId: 18), animated: false)
    }

    @objc func doneTapped() {
        self.dismiss(animated: true)
    }

}
