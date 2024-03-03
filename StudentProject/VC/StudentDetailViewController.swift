//
//  SecondViewController.swift
//  StudentProject
//
//  Created by Haya Alqahtani on 03/03/2024.
//
import UIKit
import SnapKit

class StudentDetailViewController: UIViewController {
    var student: Student?
    
    init(student: Student) {
        self.student = student
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    func configureUI() {
        guard let student = student else { return }
        
        let nameLabel = UILabel()
        nameLabel.text = student.name
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        let gpaLabel = UILabel()
        gpaLabel.text = "GPA: \(student.GPA)"
        gpaLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gpaLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            gpaLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            gpaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            gpaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
    }
}
