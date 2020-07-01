//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Huda on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
var selectedImage:Movie = Movie(movieName: "NOTHING", movieReleaseDate: 2000, actors: [], rating: 7.6, pgRating: "13")
class MovieDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var ReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    @IBOutlet weak var ratingBG: UIView!
    @IBOutlet weak var ratedBG: UIView!
    @IBOutlet weak var dateBG: UIView!
    
    
    
        func setMovieDetails() {
        movieName.title = selectedImage.movieName
        self.movieImg.image = UIImage(named: selectedImage.movieName)
        self.movieRating.text = "\(selectedImage.rating)"
        self.movieRated.text = selectedImage.pgRating
        self.ReleaseDate.text = "\(selectedImage.movieReleaseDate)"
        self.actorImg1.image = UIImage(named: selectedImage.actors[0])
        self.actorName1.text = selectedImage.actors[0]
        self.actorImg2.image = UIImage(named: selectedImage.actors[1])
        self.actorName2.text = selectedImage.actors[1]
        self.actorImg3.image = UIImage(named: selectedImage.actors[2])
        self.actorName3.text = selectedImage.actors[2]
        
    }
    
    func configureUI() {
        ratingBG.layer.cornerRadius = 20
        ratedBG.layer.cornerRadius = 20
        dateBG.layer.cornerRadius = 20
    }
    
    }
