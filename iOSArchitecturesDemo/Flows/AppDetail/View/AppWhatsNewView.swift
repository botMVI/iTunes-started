//
//  AppWhatsNewView.swift
//  iOSArchitecturesDemo
//
//  Created by Michael Iliouchkin on 16.03.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppWhatsNewView: AppDetailHeaderView {
    
    private(set) lazy var mainLabel: UILabel = {
        
        let mainLabel = UILabel()
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.textColor = .black
        mainLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        mainLabel.numberOfLines = 0
        
        return mainLabel
    }()
    
    private(set) lazy var versionHistoryBtn: UIButton = {
        
        let versionHistoryBtn = UIButton()
        versionHistoryBtn.translatesAutoresizingMaskIntoConstraints = false
        versionHistoryBtn.setTitle("История версий", for: .normal)
        versionHistoryBtn.backgroundColor = .systemBlue
        
        return versionHistoryBtn
    }()
    
    private(set) lazy var versionLabel: UILabel = {
        
        let versionLabel = UILabel()
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        versionLabel.textColor = .lightGray
        versionLabel.font = UIFont(name: "ALNile", size: 12.0)
        versionLabel.numberOfLines = 1
        
        return versionLabel
    }()
    
    private(set) lazy var whatsNewLabel: UILabel = {
        
        let whatsNewLabel = UILabel()
        whatsNewLabel.translatesAutoresizingMaskIntoConstraints = false
        whatsNewLabel.textColor = .black
        whatsNewLabel.font = UIFont(name: "ALNile", size: 14.0)
        whatsNewLabel.numberOfLines = 1
        
        return whatsNewLabel
    }()
    
    private(set) lazy var daysAgoLabel: UILabel = {
        
        let daysAgoLabel = UILabel()
        daysAgoLabel.translatesAutoresizingMaskIntoConstraints = false
        daysAgoLabel.textColor = .lightGray
        daysAgoLabel.font = UIFont(name: "ALNile", size: 12.0)
        daysAgoLabel.numberOfLines = 1
        
        return daysAgoLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        backgroundColor = .clear
        
        self.addSubview(mainLabel)
        self.addSubview(versionLabel)
        self.addSubview(versionHistoryBtn)
        self.addSubview(whatsNewLabel)
        self.addSubview(daysAgoLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: ratingLabel.topAnchor, constant: 12.0),
            mainLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            mainLabel.heightAnchor.constraint(equalToConstant: 120.0),
            mainLabel.widthAnchor.constraint(equalToConstant: 120.0),
            
            versionLabel.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: 12.0),
            versionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            versionLabel.rightAnchor.constraint(equalTo: daysAgoLabel.rightAnchor, constant: 16.0),
            
            versionHistoryBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 12.0),
            versionHistoryBtn.leftAnchor.constraint(equalTo: mainLabel.leftAnchor, constant: 12.0),
            versionHistoryBtn.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: 16.0),
            
            
        
        ])
    }
}
