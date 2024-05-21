//
//  ViewController.swift
//  Project_2
//
//  Created by macbookbro on 21.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!  //свойство для изменения кнопки
    private var numberOfDays: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12    //добавляем скругленности кнопке
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        
        
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide,fields: [.day]))    //возвращаем значение из функции (в компонентс (полное написание (wide), поля (указываем что нужны дни))
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays) дней"
    }
}



