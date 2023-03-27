//
//  TestVC.swift
//  ChessGame
//
//  Created by Bilal on 15.03.2023.
//

import UIKit

class TestVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let childVC = CollectionVC()
        
        addChild(childVC)
        self.view.addSubview(childVC.view)
        childVC.didMove(toParent: self)
    }
}
