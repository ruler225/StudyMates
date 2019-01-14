//
//  SpacesViewController.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-12.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import UIKit


var groups : [GroupData] = [GroupData().create("University of Waterloo STC 1060", name: "Computer Science Test 2", description: "A study group for tomorrow's CS 136", numberOfMembers: 8), GroupData().create("McNaster University Hatch H206", name: "COMPSCI 1MD3 - Python assignment", description: "A group to work on the upcoming Python Assignment together", numberOfMembers: 12), GroupData().create("University of Waterloo STC 1012", name: "Math 135 - Exam Review", description: "A study group for next week's Math 135 exam", numberOfMembers: 15)]

class SpacesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var groupsTableView: UITableView!
    
//    var groups : [GroupData] = [GroupData("University of Waterloo", name: "Computer Science Test 2", description: "A study group for tomorrow's CS 136", numberOfMembers: 8)]
//
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
//        for group in groups {
//            print("\(group.name), \(group.location)")
//        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        groupsTableView.reloadData()
        print("reloading data")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cellData = groups[index]
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "")
        cell.textLabel!.text = cellData.name
        cell.layoutSubviews()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "asegue", sender: self)
    }
    
}

