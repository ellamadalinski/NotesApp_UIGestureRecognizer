//
//  ViewController.swift
//  NotesApp_UIGestureRecognizer
//
//  Created by Ella Madalinski on 9/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        
        view.backgroundColor = UIColor.red
        
        var tappedLoc = sender.location(in: view)
        labelOutlet.center = tappedLoc
        print("tapped")
        textFieldOutlet.resignFirstResponder()
        
    }
    
    
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        
        var pannedLoc = sender.location(in: view)
        imageOutlet.center = pannedLoc //USER INTERATION ENABLED
        print("panning")
    }
    
}

