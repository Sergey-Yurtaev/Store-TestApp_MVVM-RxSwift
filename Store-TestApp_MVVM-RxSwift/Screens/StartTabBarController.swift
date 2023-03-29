//
//  StartTabBarController.swift
//  Store-TestApp_MVVM-RxSwift
//
//  Created by  Sergey Yurtaev on 21.03.2023.
//

import UIKit
import SnapKit

class StartTabBarController: UIViewController {
    
    private var count = 0
    
    private lazy var countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.text = "Count \(count)"
        return countLabel
    }()
    
    private lazy var countButton: UIButton = {
        let countButton = UIButton()
        countButton.backgroundColor = .yellow
        countButton.setTitle("Press", for: .normal)
        countButton.setTitleColor(.purple, for: .normal)
        
        countButton.layer.cornerRadius = 5
        countButton.addTarget(self, action: #selector(tapCount), for: .touchUpInside)
        return countButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setupConstrains()
        view.backgroundColor = .yellow
        
    }
    
    private func setupSubviews() {
        view.addSubview(countLabel)
        view.addSubview(countButton)
    }
    
    private func setupConstrains() {
        countLabel.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
        
        countButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(countLabel).inset(30)
            make.width.equalTo(100)
        }
    }
    
    @objc private func tapCount() {
        count += 1
        countLabel.text = "Count \(count)"
    }
}
