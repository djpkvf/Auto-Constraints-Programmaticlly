//
//  ViewController.swift
//  Auto Constraints Programmatically
//
//  Created by Dominic Pilla on 6/29/18.
//  Copyright © 2018 Dominic Pilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let wineBottleImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "wine-bottles"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Wine Bottles"
        label.font = UIFont(name: "Helvetica", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(wineBottleImageView)
        view.addSubview(imageTitleLabel)
        
        setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViews() {
        wineBottleImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        wineBottleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        wineBottleImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        wineBottleImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        wineBottleImageView.contentMode = .scaleAspectFit
        
        imageTitleLabel.topAnchor.constraint(equalTo: wineBottleImageView.bottomAnchor, constant: 0).isActive = true
        imageTitleLabel.leftAnchor.constraint(equalTo: wineBottleImageView.leftAnchor).isActive = true
        imageTitleLabel.rightAnchor.constraint(equalTo: wineBottleImageView.rightAnchor).isActive = true
        imageTitleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

