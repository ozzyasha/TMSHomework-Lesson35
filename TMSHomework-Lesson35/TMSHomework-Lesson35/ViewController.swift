//
//  ViewController.swift
//  TMSHomework-Lesson35
//
//  Created by Наталья Мазур on 17.04.24.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    let viewModel = ViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.counter.map({String($0)}).bind(to: counterLabel.rx.text).disposed(by: disposeBag)
    }
    
    @IBAction func decrementCounter(_ sender: Any) {
        viewModel.subtractOne()
    }

    @IBAction func incrementCounter(_ sender: Any) {
        viewModel.addOne()
    }
    
}

//Написать приложение-счетчик на MVVM с использованием RxSwift.
//Приложение состоит из одного UILabel и двух кнопок - увеличить и уменьшить счетчик.
//Обработать лимиты для счетчика (счетчик должен быть не больше 50 и не меньше 0).

