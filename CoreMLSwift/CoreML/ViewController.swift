//
//  ViewController.swift
//  CoreML
//
//  Created by Camille on 11/10/2019.
//  Copyright © 2019 Camille. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var buttonCamera: UIButton!
    @IBOutlet weak var buttonImage: UIButton!
    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var LabelOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCamera(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            let alert = UIAlertController(title: "Pas de Camera", message: "Vous n'avez pas acces a la camera", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            return
        }
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func tapImageData(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else {
            let alert = UIAlertController(title: "Pas de Photos", message: "il n'y a pas de photos disponible", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
}

