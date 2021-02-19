//
//  MovieGridDetailsViewController.swift
//  FlixTix
//
//  Created by Farhan Tanmoy on 2/18/21.
//

import UIKit
import AlamofireImage

class MovieGridDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movies: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = movies["title"] as? String
        synopsisLabel.text = movies["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w500"
        let posterPath = movies["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        
        
        posterView.af_setImage(withURL: posterUrl)
        
        let backdropPath = movies["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        
        backdropView.af_setImage(withURL: backdropUrl)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
