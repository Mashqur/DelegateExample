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

extension ViewController: NameShowDelegate {
    func didShowManyName() {
        print("Alex")
    }
}

protocol NameShowDelegate: AnyObject {
    func didShowManyName()
}

class NameShow {
    
    weak var delegate: NameShowDelegate!
    
    func showMyName() {
        delegate.didShowManyName()
    }

}

