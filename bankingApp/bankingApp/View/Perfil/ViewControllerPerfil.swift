//
//  ViewControllerPerfil.swift
//  bankingApp
//
//  Created by Christopher Valencia on 09/09/22.
//

import UIKit

class ViewControllerPerfil: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var ImageViewProfile: UIImageView!
    
    @IBAction func TextFieldNombrePerfil(_ sender: Any) {
    }
    @IBAction func TextFieldApellPerfil(_ sender: Any) {
    }
    @IBAction func TextFieldTelefonoPerfil(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var ButtomProfile: UIImageView!
    @IBOutlet weak var ButtonHome: UIImageView!
}
