//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by admin on 2020/6/16.
//  Copyright © 2020 Min zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videoes = [Video]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set itself as the datasource and the delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set itself as the delegate
        model.delegate = self
        
        model.getVideos()
    }
    
    // MARK: - Model Delegate Methods
    func videosFetched(_ videos: [Video]) {
        self.videoes = videos
        
        // Refresh the tableView
        self.tableView.reloadData()
    }
    
    // MARK: - TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videoes.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        // Configure the cell with data
        // Get he title for the video in question
        let title = self.videoes[indexPath.row].title

        cell.textLabel?.text = title

        // Return cell
        return cell
    }

}

