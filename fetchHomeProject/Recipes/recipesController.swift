//
//  recipesController.swift
//  fetchHomeProject
//
//  Created by Sohagia Yash on 12/3/24.
//

import UIKit
import Foundation

class RecipeController: UIViewController , UITableViewDelegate {
    
    let api = Api.apiInstance
    var rec: [Recipe] = []
    @IBOutlet weak var table: UITableView!
   
    func fecthData()  {
        api.getData(from: apiURLs.baseURL) { (result: Result<RecipesModel, Error>) in
            switch result {
            case .success(let data):
                self.rec =  data.recipes
                
                DispatchQueue.main.async {
                    self.table.reloadData()
                                }
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        print(rec)
        
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        table.dataSource = self
        table.delegate = self
        fecthData()
        

    }
}

extension RecipeController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rec.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "CustomTableViewCell"
        ) as? CustomTableViewCell
       let recs = rec[indexPath.row]
        cell?.cusinie.text = recs.cuisine
        cell?.name.text = recs.name
        cell?.website.text = recs.source_url
        cell?.youtube.text = recs.youtube_url
        loadImage(from: recs.photo_url_small ?? "") { image in
                cell?.pic.image = image
            }
        return cell!
        
    }
}
