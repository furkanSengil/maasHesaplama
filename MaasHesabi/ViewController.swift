//
//  ViewController.swift
//  MaasHesabi
//
//  Created by Furkan Sengil on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sonucYazisi: UILabel!
    @IBOutlet weak var girilen: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func hesaplamaButtonu(_ sender: Any) {
        var sonuc = 0
 
            let mesaiSiniri = 160 / 8
            if let sayi = Int(girilen.text!){
                if mesaiSiniri > sayi {
                   sonuc =  sayi * 10
                }else{
                    let mesaiGunleri:Int?
                    mesaiGunleri = sayi - mesaiSiniri
                    sonuc = (mesaiGunleri! * 20) + (mesaiSiniri * 10)
                }
            }
            sonucYazisi.text = "\(String(sonuc))₺ para alcaksınız"
        }

    

}

