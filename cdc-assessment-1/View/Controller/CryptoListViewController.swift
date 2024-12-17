//
//  CryptoListViewController.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit
import RxSwift
import SnapKit
import RxGesture
import HandyJSON

class CryptoListViewController: UIViewController {
    
    private var cryptoTableView: UITableView!
    private var loadCryptoBtn: UIButton!
    
    private var bag = DisposeBag()
    private var viewModel = Crypto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.setUpUI()
        self.bindViewModel()
    }
    
    private func bindViewModel() {
        // Binds tap gesture to load crypto button
        loadCryptoBtn
            .rx.tapGesture()
            .when(.recognized)
            .bind { [weak self] _ in
            guard let self = self else { return }
                if let json = Bundle.main.cryptoJson {
                    self.viewModel.update(json)
                    self.loadCryptoBtn
                        .rx.isHidden
                        .onNext(!json.isEmpty)
                } else {
                    self.showAlert()
                }
        }.disposed(by: bag)
        
        // Binds model to tableView
        viewModel.result.bind(
            to: cryptoTableView.rx.items(
                cellIdentifier: CryptoListTableViewCell.identifier,
                cellType: CryptoListTableViewCell.self)
        ) { row, model, cell in
            cell.configure(model)
        }.disposed(by: bag)
        
        // Listens for selection
        cryptoTableView.rx.modelSelected(CryptoModel.self).bind { [weak self] model in
            guard let self = self else { return }
            // Navigates to the crypto detail vc
            let cryptoDetatailVC = CryptoDetailViewController(model)
            self.navigate(cryptoDetatailVC)
        }.disposed(by: bag)
    }
    
    
    func showAlert() {
      let alertVC = UIAlertController(title: "Load Crypto With Error", message: "", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        self.present(alertVC, animated: true)
    }
    
}

// MARK: - Setup UI elements
extension CryptoListViewController {
    
    private func setUpUI() {
        cryptoTableView = UITableView()
        cryptoTableView.separatorStyle = .none
        cryptoTableView.rowHeight = 100.all
        cryptoTableView.register(CryptoListTableViewCell.self, forCellReuseIdentifier: CryptoListTableViewCell.identifier)
        view.addSubview(cryptoTableView)
        cryptoTableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20.all)
            make.bottom.right.left.equalToSuperview()
        }
        
        loadCryptoBtn = Button(font: .medium, size: 16, color: .systemBlue, text: "Load Crypto")
        view.addSubview(loadCryptoBtn)
        loadCryptoBtn.snp.makeConstraints { make in
            make.width.equalTo(screenWidth/2)
            make.height.equalTo(100.all) // .all adjusts for all screen sizes
            make.centerX.centerY.equalToSuperview()
        }
        
    }
}
