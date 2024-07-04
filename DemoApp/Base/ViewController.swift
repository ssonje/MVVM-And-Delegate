//
//  ViewController.swift
//  DemoApp
//
//  Created by Sanket-Sonje on 27/02/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var sampleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hey there, What's Up?"
        label.textColor = UIColor.white
        return label
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
        print("[ViewControllerLifeCycle] init method get called.")
    }

    deinit {
        print("[ViewControllerLifeCycle] deinit method get called.")
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("[ViewControllerLifeCycle] View has loaded.")
        self.view.addSubview(sampleLabel)
        self.view.backgroundColor = UIColor.black
        self.setUpConstraints(for: sampleLabel)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("[ViewControllerLifeCycle] View will appear.")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("[ViewControllerLifeCycle] View has appear.")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("[ViewControllerLifeCycle] View will disappear.")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("[ViewControllerLifeCycle] View has disappear.")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("[ViewControllerLifeCycle] Subviews will layout.")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("[ViewControllerLifeCycle] SubViews has layouted.")
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("[ViewControllerLifeCycle] View will transition.")
    }

    func setUpConstraints(for label: UILabel) {
        let sampleLabelConstraints = [
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(sampleLabelConstraints)
    }
}
