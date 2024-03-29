//  ViewController.swift
//  CameraApp
//  Copyright © 2019 TA. All rights reserved.

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var Camera: UIButton!
    
    @IBOutlet weak var PhotoLibrary: UIButton!
    
    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    @IBAction func CameraAction(_ sender: UIButton) {
        
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated: true, completion: nil)
        
    }
    

    @IBAction func PhotoLibraryAction(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
      
        picker.delegate = self
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        Image.image = info[UIImagePickerControllerOriginalImage] as? UIImage;
        dismiss(animated: true, completion: nil)
    }


}
