//
//  ViewController.swift
//  StudentProject
//
//  Created by Haya Alqahtani on 03/03/2024.
//

import UIKit
import SnapKit
class StudentViewController: UITableViewController {
    var students: [Student] = [
            Student(name: "haya", GPA: 3.8, profileImage: "profileImage"),
            Student(name: "aseel", GPA: 4.0, profileImage: "profileImage"),
            Student(name: "mimi", GPA: 3.9, profileImage: "profileImage"),

            
        ]

        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "StudentCell")
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return students.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath)
            let student = students[indexPath.row]
            cell.textLabel?.text = student.name
            cell.detailTextLabel?.text = "GPA: \(student.GPA)"
             cell.imageView?.image = UIImage(named: student.profileImage)
            return cell
        }

        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let haya = students[indexPath.row]
           let detailVC = StudentDetailViewController(student: haya)
           navigationController?.pushViewController(detailVC, animated: true)
        }
    }
