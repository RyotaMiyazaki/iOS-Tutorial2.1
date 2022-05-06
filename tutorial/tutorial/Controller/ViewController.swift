//
//  ViewController.swift
//  tutorial
//
//  Created by 中田稔弘 on 2022/04/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var udemyButton: UIButton!
    @IBOutlet private weak var apiClientButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        udemyButton.layer.cornerRadius = 10.0
        apiClientButton.layer.cornerRadius = 10.0
    }


}

