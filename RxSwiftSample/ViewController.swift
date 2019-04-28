//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 坪内 征悟 on 2019/04/28.
//  Copyright © 2019 Masanori. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class ViewController: UIViewController {

    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModel = ViewModel(inputKeyword: textField.rx.text.orEmpty.asObservable())
        
        viewModel.inputKeyword
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
    }
}
