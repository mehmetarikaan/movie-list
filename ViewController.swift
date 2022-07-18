//
//  ViewController.swift
//  buyFilm
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    var movieList = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.movieCollectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let hucreGenislik = (genislik-30)/2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.6)
        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        
        let f1 = Movies(movieId: 1, movieTitle: "Django", movieImageName: "django", moviePrice: 15.99)
        let f2 = Movies(movieId: 2, movieTitle: "Inception", movieImageName: "inception", moviePrice: 15.99)
        let f3 = Movies(movieId: 3, movieTitle: "Interstellar", movieImageName: "interstellar", moviePrice: 15.99)
        let f4 = Movies(movieId: 4, movieTitle: "Anadoluda", movieImageName: "birzamanlaranadoluda", moviePrice: 15.99)
        let f5 = Movies(movieId: 5, movieTitle: "The Hateful Eight", movieImageName: "thehatefuleight", moviePrice: 15.99)
        let f6 = Movies(movieId: 6, movieTitle: "The Pianist", movieImageName: "thepianist", moviePrice: 15.99)
        
        movieList.append(f1)
        movieList.append(f2)
        movieList.append(f3)
        movieList.append(f4)
        movieList.append(f5)
        movieList.append(f6)
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = movieList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieHucre", for: indexPath) as! MovieCollectionViewCell
        
        cell.MovieNameLabel.text = movie.movieTitle!
        cell.moviePriceLabel.text = "\(movie.moviePrice!) TL"
        cell.movieImageView.image = UIImage(named: movie.movieImageName!)
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
        
}



