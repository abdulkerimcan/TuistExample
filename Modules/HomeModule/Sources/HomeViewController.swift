//
//  HomeViewController.swift
//  Deneme
//
//  Created by Abdulkerim Can on 5.09.2024.
//

import UIKit
import NetworkKit

public class HomeViewController: UIViewController {
    private lazy var label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        title = "Home"
        NetworkManager.shared.fetchHome {[weak self] data in
            self?.label.text = data
            print(data)
        }
    }
}
