//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Currie on 5/29/20.
//  Copyright © 2020 Currie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let b = ActionB
        // Do any additional setup after loading the view.
        networkManager.getNewMovies(page: 1) { (movies, error) in
            if let error = error {
                print(error)
            }
            if let movies = movies {
                print(movies)
            }
        }
    }


}

