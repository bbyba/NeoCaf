//
//  ViewController.swift
//  NeoCafe Client
//
//  Created by Burte Bayaraa on 2024.01.31.
//

import UIKit
import SkeletonView

class ViewController: UIViewController {
    
    lazy var myView: UIView = {
       let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isSkeletonable = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        self.view.addSubview(myView)
        myView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myView.showAnimatedSkeleton()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        myView.showSkeleton()
//    }
}


public protocol SkeletonTableViewDataSource: UITableViewDataSource {
    func numSections(in collectionSkeletonView: UITableView) -> Int // Default: 1
    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
    func collectionSkeletonView(_ skeletonView: UITableView, skeletonCellForRowAt indexPath: IndexPath) -> UITableViewCell? // Default: nil
    func collectionSkeletonView(_ skeletonView: UITableView, prepareCellForSkeleton cell: UITableViewCell, at indexPath: IndexPath)
}

func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
   return "CellIdentifier"
}


