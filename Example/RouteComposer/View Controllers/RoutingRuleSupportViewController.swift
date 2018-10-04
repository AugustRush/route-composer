//
// Created by Eugene Kazaev on 13/01/2018.
// Copyright (c) 2018 HBC Tech. All rights reserved.
//

import Foundation
import UIKit
import RouteComposer

class RoutingRuleSupportViewController: UIViewController, RoutingInterceptable, ExampleAnalyticsSupport {

    let screenType = ExampleScreen.ruleSupport

    private(set) var canBeDismissed: Bool = true

    @IBOutlet private var switchControl: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.switchControl.isOn = self.canBeDismissed
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTapped))
    }

    @IBAction func switchValueChanged(sender: UISwitch) {
        self.canBeDismissed = switchControl.isOn
    }

    @objc func doneTapped() {
        self.dismiss(animated: true)
    }

    @IBAction func goToColorTapped() {
        try? router.navigate(to: ConfigurationHolder.configuration.colorScreen, with: "FFFF00")
    }

    @IBAction func goToSquareTapped() {
        try? router.navigate(to: ConfigurationHolder.configuration.squareScreen, with: nil)
    }

    @IBAction func goToMoscowTapped() {
        try? router.navigate(to: CitiesConfiguration.cityDetail(cityId: 2))
    }

}
