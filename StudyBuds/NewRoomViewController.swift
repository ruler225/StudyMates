//
//  NewRoomViewController.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-12.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import UIKit

class NewRoomViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var locationField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //        print("button pressed")
    //        let newGroup = GroupData().create(locationField.text ?? "Current Location 🗺", name : nameField.text ?? "New group", description: descriptionField.text, numberOfMembers: 1)
    //        groups.append(newGroup)
    //        print("appending new group")


    @IBAction func createBtnPressed(_ sender: Any) {
        let newGroup = GroupData().create(locationField.text ?? "Current Location 🗺", name : nameField.text ?? "New group", description: descriptionField.text, numberOfMembers: 1)
        groups.append(newGroup)
        print("appending new group")
    }
    
    
    @IBAction func currentLocationBtnPressed(_ sender: Any) {
        locationField.text = "Current Location 🗺"
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
