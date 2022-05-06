//
//  Present.swift
//  Navigation
//
//  Created by Johel Zarco on 04/05/22.
//

import Foundation
import UIKit

class PresentViewController: UIViewController {
    
    let stackView = UIStackView()
    let dismissButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    func style() {
        title = "Presented"
        view.backgroundColor = .systemPink

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.configuration = .filled()
        dismissButton.setTitle("Dismiss", for: [])
        dismissButton.addTarget(self, action: #selector(dismissTapped), for: .primaryActionTriggered)
    }
    
    func layout() {
        stackView.addArrangedSubview(dismissButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func dismissTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
