//
//  RootTableViewController.swift
//  EmbeddedFramework
//
//  Created by Gene Backlin on 10/27/17.
//  Copyright © 2017 Gene Backlin. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 15
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let image = UIImage(named: "image", in: Bundle(for: type(of: self)), compatibleWith: nil)
        cell.textLabel?.text = "Row #\(indexPath.row)"
        cell.imageView?.image = image

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowDetail" {
            let controller = segue.destination as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow
            let cell = tableView.cellForRow(at: indexPath!)
            
            controller.selectedCellText = cell?.textLabel?.text
            controller.selectedCellImage = cell?.imageView?.image
        }
    }

}
