//
//  LoginViewController.swift
//  AllyFinancial
//
//  Created by Consultant on 12/12/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //TODO: create username/password forgot label, create a profile label w/link, passcode button, faceID button, find atm button, "ally financial inc. 2009-2022 priv policy| security
    
    lazy var credentialsView: UITextView = {
        let text = UITextView(frame: .zero)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .white
        text.font = UIFont(name: text.font?.fontName ?? "", size: 17)
        text.layer.cornerRadius = 10
        text.heightAnchor.constraint(equalToConstant: 88).isActive = true
        text.clipsToBounds = false
        text.layer.borderWidth = 1
        text.isEditable = false
        
        return text
    }()
    
    lazy var usernameTextView: UITextView = {
        let text = UITextView(frame: .zero)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .white
        text.font = UIFont(name: text.font?.fontName ?? "", size: 17)
        text.layer.cornerRadius = 10
        text.heightAnchor.constraint(equalToConstant: 44).isActive = true
        text.clipsToBounds = false
        text.layer.borderWidth = 1
        text.isEditable = false
        
        return text
    }()
    
    lazy var passwordTextView: UITextView = {
        let text = UITextView(frame: .zero)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .white
        text.font = UIFont(name: text.font?.fontName ?? "", size: 17)
        text.layer.cornerRadius = 10
        text.heightAnchor.constraint(equalToConstant: 44).isActive = true
        text.clipsToBounds = false
        text.layer.borderWidth = 1
        text.isEditable = false
        
        return text
    }()
    
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.text = "Username:"
        
        return label
        
    }()
    
    lazy var usernameText: UITextField = {
        let usrnmInput = UITextField(frame: .zero)
        usrnmInput.translatesAutoresizingMaskIntoConstraints = false
        usrnmInput.backgroundColor = .clear
        usrnmInput.font = UIFont(name: usrnmInput.font?.fontName ?? "", size: 17)
        usrnmInput.layer.cornerRadius = 10
        usrnmInput.clipsToBounds = false
        usrnmInput.layer.borderWidth = 1
        usrnmInput.allowsEditingTextAttributes = true
        usrnmInput.clearsOnBeginEditing = true
        usrnmInput.text = "Enter Username"
        usrnmInput.borderStyle = .none
        usrnmInput.autocapitalizationType = .none
        
        return usrnmInput
    }()
    
    lazy var passwordText: UITextField = {
        let pswrd = UITextField(frame: .zero)
        pswrd.translatesAutoresizingMaskIntoConstraints = false
        pswrd.backgroundColor = .clear
        pswrd.font = UIFont(name: pswrd.font?.fontName ?? "", size: 17)
        pswrd.layer.cornerRadius = 10
        pswrd.clipsToBounds = false
        pswrd.layer.borderWidth = 1
        pswrd.allowsEditingTextAttributes = true
        pswrd.clearsOnBeginEditing = true
        pswrd.text = "password"
        pswrd.autocapitalizationType = .none
        pswrd.isSecureTextEntry = true
        
        return pswrd
    }()
    
    lazy var passwordLabel: UILabel = {
        let email = UILabel(frame: .zero)
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "Password: "
        email.backgroundColor = .clear
        
        return email
    }()
    
    lazy var hStack: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .clear
        stack.axis = NSLayoutConstraint.Axis.horizontal
        stack.alignment = UIStackView.Alignment.center
        
        return stack
    }()
    
    lazy var allyImage: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .clear
        image.contentMode = .scaleToFill
        image.image = UIImage(named: "Ally-Bank-Logo")
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
        image.widthAnchor.constraint(equalToConstant: 75).isActive = true
        
        return image
    }()
    
    lazy var aboutButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
        but.backgroundColor = .clear
        but.tintColor = .white
        but.addTarget(self, action: #selector(aboutPressed), for: .touchUpInside)
        but.setTitle("About Us", for: .normal)
        
        return but
    }()
    
    lazy var contactButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Call Us", for: .normal)
        but.addTarget(self, action: #selector(contactPressed), for: .touchUpInside)
        but.backgroundColor = .clear
        but.tintColor = .white
        
        return but
    }()
    
    lazy var switcharoo: UISwitch = {
        let tf = UISwitch(frame: .zero)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.onTintColor = .blue
       
        return tf
    }()
    
    lazy var saveLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: label.font.fontName, size: 16)
        label.text = "Save Username"
        label.backgroundColor = .clear
        label.textColor = .white
        
        return label
    }()
    
    lazy var submitButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
        but.backgroundColor = .blue
        but.tintColor = .white
        but.layer.cornerRadius = 10
        but.clipsToBounds = false
        but.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
        but.setTitle("Submit", for: .normal)
        
        return but
    }()
    
    lazy var forgotCred: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 15)
        label.textAlignment = .center
        label.text = "Forgot username or password"
        label.numberOfLines = 1
        
        return label
    }()
    
    lazy var createProf: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: label.font.fontName, size: 15)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Create a profile to manage your account online."
        
        return label
    }()
    
    lazy var passcodeButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
        let icon = UIImage(systemName: "rectangle.and.pencil.and.ellipsis")
        let config = UIImage.SymbolConfiguration(paletteColors: [.white])
            .applying(
                UIImage.SymbolConfiguration(font: .preferredFont(forTextStyle: .title1))
            )
        but.setImage(icon?.applyingSymbolConfiguration(config), for: .normal)
        
        but.addTarget(self, action: #selector(passwordPressed), for: .touchUpInside)
        but.setTitle("Passcode", for: .normal)
        but.semanticContentAttribute = .forceLeftToRight
        but.backgroundColor = .clear
        but.setTitleColor(.white, for: .normal)
        
        return but
    }()
    
    lazy var faceIdButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
        
        let icon = UIImage(systemName: "faceid")
        let config = UIImage.SymbolConfiguration(paletteColors: [.white])
            .applying(
                UIImage.SymbolConfiguration(font: .preferredFont(forTextStyle: .title1))
            )
        
        but.setImage(icon?.applyingSymbolConfiguration(config), for: .normal)
        

        but.setTitle("Face ID", for: .normal)
        but.backgroundColor = .clear
        but.setTitleColor(.white, for: .normal)
        but.addTarget(self, action: #selector(faceIdPressed), for: .touchUpInside)
        
        return but
    }()
    
    lazy var findATMButton: UIButton = {
        let but = UIButton(frame: .zero)
        but.translatesAutoresizingMaskIntoConstraints = false
//        but.tintColor = UIColor(red: 91/255, green: 24/255, blue: 92/255, alpha: 1)
        let icon = UIImage(systemName: "mappin")
        let config = UIImage.SymbolConfiguration(paletteColors: [.white])
            .applying(
                UIImage.SymbolConfiguration(font: .preferredFont(forTextStyle: .title1))
            )
        but.setImage(icon?.applyingSymbolConfiguration(config), for: .normal)
        
        but.addTarget(self, action: #selector(findATMPressed), for: .touchUpInside)
        but.setTitle("Find ATMs", for: .normal)
        but.imageView?.contentMode = .scaleAspectFit
        but.backgroundColor = .clear
        but.setTitleColor(.white, for: .normal)
        
        return but
    }()
    
    lazy var footerLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 4
        label.font = UIFont(name: label.font.fontName, size: 15)
        label.text = "   Ally Financial Inc. 2009 - 2022\n   Privacy Policy | Security\n\n"
        label.textColor = .white
        
        label.backgroundColor = UIColor(red: 91/255, green: 24/255, blue: 92/255, alpha: 1)
        
        return label
    }()
    let navVC: UINavigationController?
    
    init(navController: UINavigationController) {
        self.navVC = navController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI() {
        self.view.addSubview(hStack)
        self.view.addSubview(credentialsView)
        self.view.addSubview(switcharoo)
        self.view.addSubview(saveLabel)
        self.view.addSubview(submitButton)
        self.view.addSubview(forgotCred)
        self.view.addSubview(createProf)
        self.view.addSubview(passcodeButton)
        self.view.addSubview(faceIdButton)
        self.view.addSubview(findATMButton)
        self.view.addSubview(footerLabel)
        
        self.hStack.addArrangedSubview(aboutButton)
        self.hStack.addArrangedSubview(allyImage)
        self.hStack.addArrangedSubview(contactButton)
        
        self.credentialsView.addSubview(usernameTextView)
        self.credentialsView.addSubview(passwordTextView)
        self.usernameTextView.addSubview(usernameLabel)
        self.usernameTextView.addSubview(usernameText)
        self.passwordTextView.addSubview(passwordText)
        self.passwordTextView.addSubview(passwordLabel)
        
        
        
        self.view.backgroundColor = .purple
        
        self.hStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        self.hStack.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.hStack.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.hStack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.aboutButton.centerYAnchor.constraint(equalTo: self.hStack.centerYAnchor).isActive = true
        self.aboutButton.leadingAnchor.constraint(equalTo: self.hStack.leadingAnchor, constant: 0).isActive = true
        self.aboutButton.contentHorizontalAlignment = .left

        self.contactButton.centerYAnchor.constraint(equalTo: self.hStack.centerYAnchor).isActive = true
        self.contactButton.trailingAnchor.constraint(equalTo: self.hStack.trailingAnchor, constant: 0).isActive = true
        self.contactButton.contentHorizontalAlignment = .right


        self.allyImage.centerYAnchor.constraint(equalTo: self.hStack.centerYAnchor).isActive = true
        self.allyImage.centerXAnchor.constraint(equalTo: self.hStack.centerXAnchor).isActive = true

        
        self.credentialsView.topAnchor.constraint(equalTo: self.hStack.safeAreaLayoutGuide.bottomAnchor, constant: 16).isActive = true
        
        self.credentialsView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.credentialsView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        
        self.usernameTextView.topAnchor.constraint(equalTo: self.credentialsView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        self.usernameTextView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.usernameTextView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        self.passwordTextView.topAnchor.constraint(equalTo: self.usernameTextView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        self.passwordTextView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.passwordTextView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        self.usernameText.heightAnchor.constraint(equalTo: self.usernameTextView.heightAnchor).isActive = true
        self.usernameText.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        self.usernameText.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.usernameText.centerYAnchor.constraint(equalTo: self.usernameTextView.centerYAnchor).isActive = true
        
        self.usernameLabel.leadingAnchor.constraint(equalTo: self.usernameTextView.leadingAnchor, constant: 2).isActive = true
        self.usernameLabel.centerYAnchor.constraint(equalTo: self.usernameTextView.centerYAnchor).isActive = true
        self.usernameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.passwordLabel.leadingAnchor.constraint(equalTo: self.usernameTextView.leadingAnchor, constant: 2).isActive = true
        self.passwordLabel.centerYAnchor.constraint(equalTo: self.passwordTextView.centerYAnchor).isActive = true
        self.passwordLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.passwordText.heightAnchor.constraint(equalTo: self.passwordTextView.heightAnchor).isActive = true
        self.passwordText.leadingAnchor.constraint(equalTo: self.passwordTextView.safeAreaLayoutGuide.leadingAnchor, constant: 92).isActive = true
        self.passwordText.trailingAnchor.constraint(equalTo: self.passwordTextView.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        self.passwordText.centerYAnchor.constraint(equalTo: self.passwordTextView.centerYAnchor).isActive = true
        
        self.switcharoo.topAnchor.constraint(equalTo: self.passwordTextView.bottomAnchor, constant: 8).isActive = true
        self.switcharoo.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        
        self.saveLabel.leadingAnchor.constraint(equalTo: self.switcharoo.trailingAnchor, constant: 8).isActive = true
        self.saveLabel.topAnchor.constraint(equalTo: self.passwordTextView.bottomAnchor, constant: 14).isActive = true
        
        self.submitButton.topAnchor.constraint(equalTo: self.switcharoo.bottomAnchor, constant: 14).isActive = true
        self.submitButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.submitButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.submitButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        self.forgotCred.topAnchor.constraint(equalTo: self.submitButton.bottomAnchor, constant: 14).isActive = true
        self.forgotCred.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.forgotCred.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.forgotCred.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        self.createProf.topAnchor.constraint(equalTo: self.forgotCred.bottomAnchor, constant: 20).isActive = true
        self.createProf.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.createProf.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        self.passcodeButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.passcodeButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 80).isActive = true
        self.passcodeButton.topAnchor.constraint(equalTo: self.createProf.bottomAnchor, constant: 30).isActive = true
        
        self.faceIdButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.faceIdButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -80).isActive = true
        self.faceIdButton.topAnchor.constraint(equalTo: self.createProf.bottomAnchor, constant: 30).isActive = true
        
        self.findATMButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.findATMButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.findATMButton.topAnchor.constraint(equalTo: self.passcodeButton.bottomAnchor, constant: 8).isActive = true
        
        self.footerLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.footerLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.footerLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.footerLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    @objc
    func aboutPressed() {
        print("about pressed")
    }
    
    @objc
    func contactPressed() {
        print("contact pressed")
    }
    
    @objc
    func passwordPressed() {
        print("Something about the password")
    }
    
    @objc
    func faceIdPressed() {
        print("Here, I do something just for you.")
    }
    
    @objc
    func findATMPressed() {
        print("Locating ATMs in your area.")
    }
    
    @objc
    func loginPressed() {
        print("login pressed")
//        if usernameText.text == "aegonzalez", passwordText.text == "1234" {
            print("Login successful")
            self.navVC?.dismiss(animated: true)
//        TabCoordinator(navigationController: navVC ?? UINavigationController()).start()

//        }else{
//            print("Login credentials incorrect")
//        }
   }
    
}
