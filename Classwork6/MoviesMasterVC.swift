//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by Huda on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesMasterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var marvelBtn0: UIButton!
    @IBOutlet weak var marvelBtn1: UIButton!
    @IBOutlet weak var marvelBtn2: UIButton!
    @IBOutlet weak var marvelBtn3: UIButton!
    @IBOutlet weak var marvelBtn4: UIButton!
    @IBOutlet weak var marvelBtn5: UIButton!
   
    
    
    @IBOutlet weak var dcBtn0: UIButton!
    @IBOutlet weak var dcBtn1: UIButton!
    @IBOutlet weak var dcBtn2: UIButton!
    @IBOutlet weak var dcBtn3: UIButton!
    @IBOutlet weak var dcBtn4: UIButton!
    @IBOutlet weak var dcBtn5: UIButton!
    
    

    
    func setMarvelImages() {
        marvelBtn0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        marvelBtn1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        marvelBtn2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        marvelBtn3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        marvelBtn4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        marvelBtn5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)
    }
    
    func setDCImages() {
       dcBtn0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for: .normal)
       dcBtn1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for: .normal)
       dcBtn2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for: .normal)
       dcBtn3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for: .normal)
       dcBtn4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for: .normal)
       dcBtn5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for: .normal)
    }
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedImage = MarvelMovieData[index]
        performSegue(withIdentifier: "details", sender: MarvelMovieData[index])
        
       }
    @IBAction func dcBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedImage = DCMovieData[index]
        performSegue(withIdentifier: "details", sender: DCMovieData[index])
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieController = segue.destination as? MovieDetailsVC else {
            fatalError()
        }
        
    }
    
    
}
