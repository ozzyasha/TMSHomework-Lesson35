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
