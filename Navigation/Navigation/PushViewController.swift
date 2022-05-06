//
//  PushViewController.swift
//  Navigation
//
//  Created by Johel Zarco on 04/05/22.
//

import UIKit

class PushViewController: UIViewController {
    
    let stackView = UIStackView()
    let popButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        style()
        layout()
    }
    
    func style() {
        title = "Pushed VC"
        view.backgroundColor = .systemRed

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20

        popButton.translatesAutoresizingMaskIntoConstraints = false
        popButton.configuration = .filled()
        popButton.setTitle("Pop", for: [])
        popButton.addTarget(self, action: #selector(popTapped), for: .primaryActionTriggered)
    }

    func layout() {
        stackView.addArrangedSubview(popButton)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc func popTapped(sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
