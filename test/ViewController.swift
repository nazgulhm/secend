//
//  ViewController.swift
//  test
//
//  Created by NAZGUL on 3/8/21.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    private let stackHeight = 80
    
    lazy var inputLAbale: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 70, weight: .semibold)
        label.textColor = .white
        label.text = "0"
        return label
    }()
    
    
    private lazy var clearButton: UIButton = {
        let button = createTopButton(text: "AC", selector: #selector(clearHandler))
        return button
    }()
    
    private lazy var plusMinusButton: UIButton = {
        let button = createTopButton(text: "+/-", selector:
            #selector(plusMinusHanlder))
        return button
    }()
    
    private lazy var persentageButton: UIButton = {
        let button = createTopButton(text: "%", selector: #selector(persent))
        return button
    }()
    
    private lazy var devideButton: UIButton = {
        let button = createRightButton(text: "/", selector: #selector(divideSign))
        return button
    }()
    
    private lazy var sevenButton: UIButton = {
        let button = createButton(text: "7",selector: #selector(sevenNum))
        return button
    }()
    
    private lazy var eightButton: UIButton = {
        let button = createButton(text: "8",selector: #selector(eightNum))
        return button
    }()
    
    private lazy var nineButton: UIButton = {
        let button = createButton(text: "9",selector: #selector(nineNum))
        return button
    }()
    
    private lazy var multiplayButton: UIButton = {
        let button = createRightButton(text: "x",selector: #selector(multiply))
        return button
    }()
    
    private lazy var fourButton: UIButton = {
        let button = createButton(text: "4",selector: #selector(fourNum))
        return button
    }()
    
    private lazy var fifeButton: UIButton = {
        let button = createButton(text: "5",selector: #selector(fifeNum))
        return button
    }()
    
    private lazy var sixButton: UIButton = {
        let button = createButton(text: "6",selector: #selector(sixNum))
        return button
    }()
    
    private lazy var minusButton: UIButton = {
        let button = createRightButton(text: "-",selector: #selector(minus))
        return button
    }()
    
    private lazy var oneButton: UIButton = {
        let button = createButton(text: "1",selector: #selector(oneNum))
        return button
    }()
    
    private lazy var twoButton: UIButton = {
        let button = createButton(text: "2",selector: #selector(twoNum))
        return button
    }()
    
    private lazy var threeButton: UIButton = {
        let button = createButton(text: "3",selector: #selector(threeNum))
        return button
    }()
    
    private lazy var plusButton: UIButton = {
        let button = createRightButton(text: "+",selector: #selector(plus))
        return button
    }()
    private lazy var zeroButton: UIButton = {
        let button = createButton(text: "0",selector: #selector(zeroNum))
        return button
    }()
    
    private lazy var pointButton: UIButton = {
        let button = createButton(text: ".",selector: #selector(point))
        return button
    }()
    
    private lazy var equalsButton: UIButton = {
        let button = createRightButton(text: "=",selector: #selector(equal))
        return button
    }()
    
 
    
    private lazy var firstStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [clearButton, plusMinusButton, persentageButton, devideButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var secondStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [sevenButton, eightButton, nineButton, multiplayButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var thirdStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [fourButton, fifeButton, sixButton, minusButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var fourthStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [oneButton,
        twoButton,threeButton,plusButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var fifthStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [zeroButton,pointButton,equalsButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(inputLAbale)
        view.addSubview(firstStack)
        view.addSubview(secondStack)
        view.addSubview(thirdStack)
        view.addSubview(fourthStack)
        view.addSubview(fifthStack)
        
        inputLAbale.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(35)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(250)
        }
        
        firstStack.snp.makeConstraints { make in
            make.top.equalTo(inputLAbale.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(stackHeight)
        }
        
        secondStack.snp.makeConstraints { make in
            make.top.equalTo(firstStack.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(stackHeight)
        }
        
        thirdStack.snp.makeConstraints { make in
            make.top.equalTo(secondStack.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(stackHeight)
        }
        
        fourthStack.snp.makeConstraints { make in
            make.top.equalTo(thirdStack.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(stackHeight)
        }
        fifthStack.snp.makeConstraints {make in
            make.top.equalTo(fourthStack.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(stackHeight)
        }
        
    }
    
    //MARK: UIActions
    
    @objc func clearHandler() {
        print("AC")
    }
    
    @objc func plusMinusHanlder() {
        print("+-")
    }
    
    @objc func persent() {
        print("%")
    }
    @objc func divideSign() {
        print("/")
    }
    @objc func sevenNum() {
        print("7")
    }
    @objc func eightNum() {
        print("8")
    }
    @objc func nineNum() {
        print("9")
    }
    @objc func multiply() {
        print("x")
    }
    @objc func fourNum() {
        print("4")
    }
    @objc func fifeNum() {
        print("5")
    }
    @objc func sixNum() {
        print("6")
    }
    @objc func minus() {
        print("-")
    }
    @objc func oneNum() {
        print("1")
    }
    @objc func twoNum() {
        print("2")
    }
    @objc func threeNum() {
        print("3")
    }
    @objc func plus() {
        print("+")
    }
    @objc func zeroNum() {
        print("0")
    }
    @objc func point() {
        print(".")
    }
    @objc func equal() {
        print("=")
    }
    
    
    private func createTopButton(text: String, selector: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(text, for: .normal)
        button.titleLabel?.tintColor = .darkText
        button.backgroundColor = .lightGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        button.layer.cornerRadius = CGFloat(stackHeight / 2)
        button.addTarget(self, action: selector, for: .touchUpInside)
        return button
    }
    
    private func createRightButton(text: String, selector: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(text, for: .normal)
        button.titleLabel?.tintColor = .white
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        button.layer.cornerRadius = CGFloat(stackHeight / 2)
        return button
    }
    
    private func createButton(text: String,selector: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(text, for: .normal)
        button.titleLabel?.tintColor = .white
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        button.layer.cornerRadius = CGFloat(stackHeight / 2)
        return button
    }
}




