//
//  ViewController.swift
//  TaxCulculateApp
//
//  Created by 山本悠磨 on 2020/01/16.
//  Copyright © 2020 Yuuma Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var noTaxTextField: UITextField!
    @IBOutlet weak var eightTaxLabel: UILabel!
    @IBOutlet weak var tenTaxLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var result = 0.0
    @IBAction func taxCulculateButton(_ sender: Any) {
        
        if noTaxTextField.text?.count == 0{
            showAlert()
            return
            
        }else{
            
            //消費税8%の値をeightTaxTextFieldに入れる
            result = Double(noTaxTextField.text ?? "")! * 1.08
            eightTaxLabel.text = String(round(result))
            
            
            //消費税10%の値をtenTaxTextFieldに入れる
            result = Double(noTaxTextField.text ?? "")! * 1.10
            tenTaxLabel.text = String(round(result))
        }
    }
    
    func showAlert (){
        //アラートを作成
        let alert:UIAlertController = UIAlertController(title: "エラー", message: "税抜金額を入力してください。", preferredStyle: .alert)
        let action:UIAlertAction = UIAlertAction(title: "はい", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        //全てのTextFieldのtextをリセットする
        noTaxTextField.text = ""
        eightTaxLabel.text = "税抜金額を入力"
        tenTaxLabel.text = "税抜金額を入力"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

