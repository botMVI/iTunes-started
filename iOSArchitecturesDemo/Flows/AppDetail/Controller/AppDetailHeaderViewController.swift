//
//  AppDetailHeaderViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Evgenii Semenov on 10.03.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppDetailHeaderViewController: UIViewController {
    
    private let app: ITunesApp
    
    private let imageDownloader = ImageDownloader()
    
    private var appDetailHeaderView: AppDetailHeaderView {
        return self.view as! AppDetailHeaderView
    }
    
    private var appWhatsNewView: AppWhatsNewView {
        return self.view as! AppWhatsNewView
    }
    
    init(app: ITunesApp) {
        self.app = app
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = AppDetailHeaderView()
        self.view = AppWhatsNewView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        congureUI()
    }
    
    private func congureUI() {
        downloadImage()
        appDetailHeaderView.titleLabel.text = app.appName
        appDetailHeaderView.subtitleLabel.text = app.company
        appDetailHeaderView.ratingLabel.text = app.averageRating.flatMap { "\($0)" }
        
        appWhatsNewView.mainLabel.text = "Что нового"
        appWhatsNewView.versionLabel.text = "Вресия 5.2"
        appWhatsNewView.whatsNewLabel.text = "- Различные обновления и улучшения"
        appWhatsNewView.daysAgoLabel.text = "6 day ago"
    }
    
    private func downloadImage() {
        guard let url = self.app.iconUrl else { return }
        
        self.imageDownloader.getImage(fromUrl: url) { [weak self] (image, error) in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                self.appDetailHeaderView.imageView.image = image
            }
        }
    }
}
