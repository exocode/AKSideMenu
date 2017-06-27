//
//  SecondViewController.swift
//  AKSideMenuSimple
//
//  Created by Diogo Autilio on 6/7/16.
//  Copyright © 2016 AnyKey Entertainment. All rights reserved.
//

import UIKit

open class SecondViewController: UIViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Controller"
        self.view.backgroundColor = UIColor.init(red: 255/255.0, green: 202/255.0, blue: 101/255.0, alpha: 1.0)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "Left", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.presentLeftMenuViewController(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Right", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.presentRightMenuViewController(_:)))

        let button: UIButton = UIButton.init(type: UIButtonType.roundedRect)
        button.frame = CGRect(x: 0, y: 84, width: self.view.frame.size.width, height: 44)
        button.autoresizingMask = UIViewAutoresizing.flexibleWidth
        button.setTitle("Push View Controller", for: UIControlState())
        button.addTarget(self, action: #selector(SecondViewController.pushViewController(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)

    }

    func pushViewController(_ sender: AnyObject) {
        let viewController = UIViewController.init()
        viewController.title = "Pushed Controller"
        viewController.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NSLog("SecondViewController will appear")
    }

    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NSLog("SecondViewController will disappear")
    }
}
