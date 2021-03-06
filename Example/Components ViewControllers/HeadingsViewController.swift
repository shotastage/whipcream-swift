//
//  HeadingsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/13.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class HeadingsViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Headings"

        let root = view!

        root.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(Size(self.view).width)
            layout.height = YGValue(Size(self.view).height)
            layout.flexDirection = .column
            layout.justifyContent = .flexStart
            layout.alignItems = .center
            layout.flexWrap = .noWrap
        }

        stackView.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(Size(self.view).width)
            layout.height = YGValue(Size(self.view).height)
        }
        root.addSubview(stackView)

        let h1 = Heading(text: "Heading 1", size: .h1)
        stackView.addRow(h1)

        let h2 = Heading(text: "Heading 2", size: .h2)
        stackView.addRow(h2)

        let h3 = Heading(text: "Heading 3", size: .h3)
        stackView.addRow(h3)

        let h4 = Heading(text: "Heading 4", size: .h4)
        stackView.addRow(h4)

        let h5 = Heading(text: "Heading 5", size: .h5)
        stackView.addRow(h5)

        let h6 = Heading(text: "Heading 6", size: .h6)
        stackView.addRow(h6)

        root.yoga.applyLayout(preservingOrigin: true)
    }
}
