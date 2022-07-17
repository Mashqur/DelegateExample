//
//  ViewController.swift
//  DelegateExample
//
//  Created by Mashqur Habib Himel on 17/7/22.
//

import UIKit

class ViewController: UIViewController {

    let nameShow = NameShow()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameShow.delegate = self
        nameShow.showMyName()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: ThisIsMyclassDelegate {
    func didShowManyName() {
        print("Alex")
    }
}

protocol ThisIsMyclassDelegate: AnyObject {
    func didShowManyName()
}

class NameShow {
    
    weak var delegate: ThisIsMyclassDelegate!
    
    func showMyName() {
        delegate.didShowManyName()
    }

}

