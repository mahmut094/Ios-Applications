//
//  ViewController.swift
//  MyBio
//
//  Created by Махмут on 10.07.2018.
//  Copyright © 2018 Makhmut Syzdykbayev. All rights reserved.
//


import UIKit
import Cartography


class ViewController: UIViewController {
    
    lazy var nameTextLabel : UILabel = {
        let name = UILabel()
        name.text = "Name"
        name.textAlignment = .center
        name.font = UIFont.systemFont(ofSize : 16)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    lazy var nameTextField : UITextField = {
       var nameTF = UITextField()
        nameTF.placeholder = "Enter the name"
        nameTF.textAlignment = .center
        nameTF.translatesAutoresizingMaskIntoConstraints = false
        //nameTF.backgroundColor =
        nameTF.layer.borderWidth = 2
        nameTF.layer.cornerRadius = 5
        nameTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return nameTF
    }()
    
    lazy var genderLabel : UILabel = {
       var gender = UILabel()
        gender.text = "Gender"
        gender.textAlignment = .center
        gender.font = UIFont.systemFont(ofSize : 16)
        
        return gender
    }()
    
    
    lazy var genderSegment : UISegmentedControl = {
      var segment = UISegmentedControl()
        segment.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)], for: .normal)
        segment.insertSegment(withTitle: "Male", at: 0, animated: true)
        segment.insertSegment(withTitle: "Female", at: 1, animated: true)
        segment.layer.cornerRadius = 15
        segment.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        segment.layer.borderWidth = 1
        segment.layer.masksToBounds = true
        
        
        return segment
    }()
    
    //__________________________________________________
    
    lazy var birthdayLabel : UILabel = {
       var birthday = UILabel()
        birthday.textAlignment = .center
        birthday.text = "Birthday"
        birthday.font = UIFont.systemFont(ofSize: 16)
        
        return birthday
    }()
    
    lazy var birthdayPickerLabel : UITextField = {
        var birthday = UITextField()
        birthday.textAlignment = .center
      
        birthday.font = UIFont.systemFont(ofSize: 16)
        birthday.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        birthday.inputView = birthdayPickerData
        return birthday
    }()
    
    lazy var birthdayPickerData : UIDatePicker = {
       var myDatePicker = UIDatePicker()
        myDatePicker.datePickerMode = UIDatePickerMode.date
        myDatePicker.addTarget(self, action: #selector(pickerAction), for: .valueChanged)
        return myDatePicker
    }()
    
    
    //__________________________________________________
  
    lazy var WorkLabel : UILabel = {
       var work = UILabel()
        work.text = "Work"
        work.font = UIFont.systemFont(ofSize: 16)
        work.textAlignment = .center
        
        
        return work
    }()
    
    lazy var workTextField : UITextField = {
       var worktext = UITextField()
        worktext.layer.cornerRadius = 5
        worktext.layer.borderWidth = 2
        worktext.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return worktext
    }()
    //__________________________________________________
    
    lazy var salaryText : UILabel = {
     var  salary = UILabel()
        salary.text = "Salary"
        salary.font = UIFont.systemFont(ofSize: 16)
        salary.textAlignment = .center
        return salary
    }()
    
    lazy var salarySlider : UISlider = {
       var slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 300
        slider.isContinuous = true
        slider.addTarget(self, action: #selector(valueAction), for: .valueChanged)
        return slider
    }()
    
    lazy var salaryInt : UILabel = {
       var count = UILabel()
        count.textAlignment = .center
        count.text = "$167K"
        count.font = UIFont.systemFont(ofSize: 16)
        
        return count
    }()
    
    //__________________________________________________
    
    lazy var straightLabel : UILabel = {
       var str = UILabel()
        str.text = "Straight"
        str.textAlignment = .center
        str.font = UIFont.systemFont(ofSize: 16)
        
        return str
    }()
    
    
    lazy var straightSwitch : UISwitch = {
       var switchh = UISwitch()
        switchh.isOn = false
        switchh.thumbTintColor = .black
        switchh.tintColor = .green
        switchh.onTintColor = .cyan
        
        return switchh
    }()
    
    lazy var saveButton : UIButton = {
       var but = UIButton()
        but.setTitle("save it!", for: .normal)
        but.backgroundColor = .blue
        but.setTitleColor(.white, for: .normal)
        but.addTarget(self, action: #selector(save), for: .touchUpInside)
        
        return but
    }()
    
    
    
    // MARK:- Lifecycle
    override func viewDidLoad() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.title = "MyBio"
        super.viewDidLoad()
        setup()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    
    // MARK:- Functions
    func setup() {
        self.view.addSubviews(z: [nameTextLabel,nameTextField,genderLabel,genderSegment,birthdayLabel,birthdayPickerLabel,WorkLabel,workTextField,salaryText,salarySlider,salaryInt,birthdayPickerLabel,straightLabel,straightSwitch,saveButton])
        
        constrain(nameTextLabel,nameTextField,genderLabel,genderSegment,birthdayLabel,birthdayPickerLabel,WorkLabel,workTextField,salaryText,salarySlider){
            nameTextLabel,nameTextField,genderLabel,genderSegment,birthdayLabel,birthdayPickerLabel,WorkLabel,workTextField,salaryText,salarySlider in
            
            nameTextLabel.width == 100
            nameTextLabel.height == 40
            nameTextLabel.left == nameTextLabel.superview!.left + 50
            nameTextLabel.top == nameTextLabel.superview!.top + 100
            
            nameTextField.width == 200
            nameTextField.height == 40
            nameTextField.left == nameTextLabel.right + 20
            nameTextField.top == nameTextField.superview!.top + 100
            
            genderLabel.width == 100
            genderLabel.height == 40
            genderLabel.top == nameTextLabel.bottom + 40
            genderLabel.centerX == nameTextLabel.centerX
            
            genderSegment.width == 140
            genderSegment.height == 30
            genderSegment.left == genderLabel.right + 10
            genderSegment.centerY == genderLabel.centerY
            
            birthdayLabel.width == 100
            birthdayLabel.height == 40
            birthdayLabel.left == genderLabel.right + 10
            birthdayLabel.top == genderSegment.bottom + 20
            
            WorkLabel.width == nameTextLabel.width
            WorkLabel.height == nameTextLabel.height
            WorkLabel.centerX == nameTextLabel.centerX
            WorkLabel.top == birthdayPickerLabel.bottom + 40
            
            workTextField.width == nameTextField.width
            workTextField.height == nameTextField.height
            workTextField.centerX == nameTextField.centerX
            workTextField.top == WorkLabel.top
            
            salaryText.width == WorkLabel.width
            salaryText.height == WorkLabel.height
            salaryText.centerX == WorkLabel.centerX
            salaryText.top == WorkLabel.bottom + 40
            
            salarySlider.width == workTextField.width - 30
            salarySlider.height == workTextField.height
            salarySlider.top == salaryText.top
            salarySlider.centerX == birthdayLabel.centerX + 20
        }
        
        
        constrain(salaryInt,salarySlider,birthdayPickerLabel,birthdayLabel,straightLabel,WorkLabel,straightSwitch,saveButton){
            salaryInt,salarySlider,birthdayPickerLabel,birthdayLabel,straightLabel,WorkLabel,straightSwitch,saveButton in
            
            salaryInt.width == salarySlider.width/2
            salaryInt.height == salarySlider.height
            salaryInt.left == salarySlider.right
            salaryInt.top == salarySlider.top
            
            birthdayPickerLabel.width == 250
            birthdayPickerLabel.height == 66
            birthdayPickerLabel.centerX == birthdayLabel.centerX
            birthdayPickerLabel.top == birthdayLabel.bottom + 50
            
            straightLabel.width == WorkLabel.width
            straightLabel.height == WorkLabel.height
            straightLabel.top == WorkLabel.bottom + 100
            straightLabel.centerX == WorkLabel.centerX
            
            
            straightSwitch.width == 50
            straightSwitch.height == straightLabel.height
            straightSwitch.top == straightLabel.top
            straightSwitch.centerX == salarySlider.centerX
            
            saveButton.width == straightLabel.width
            saveButton.height == straightLabel.height
            saveButton.top == straightLabel.bottom + 40
            saveButton.centerX == straightSwitch.centerX - 20
            
            distribute(by: 5, horizontally: salarySlider,salaryInt)
            
            
            
            
        }
        
        
        
    }
    
    //__________________________________________________
    
    @objc func pickerAction(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        let selectedDate = dateFormatter.string(from: birthdayPickerData.date)
        birthdayPickerLabel.text = selectedDate
    }
    
    //__________________________________________________
    
    @objc func valueAction()   {
        
        let currentValue = Int(salarySlider.value)
          salaryInt.text = "$\(currentValue)K "
        
    }
    
    //__________________________________________________

    @objc func save() {
        
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd.MM.yyyy"
//        let result = formatter.string(from: date)
//
//        let year1 = String(describing: result.text!.components(separatedBy: " ")[2])
//        let month1 = String(describing: birthdayPickerLabel.text!.components(separatedBy: "")[1])
//        let day1 = String(describing: birthdayPickerLabel.text!.components(separatedBy: " ")[0])
        
        let year = String(describing: birthdayPickerLabel.text!.components(separatedBy: " ")[2])
//        let month = String(describing: birthdayPickerLabel.text!.components(separatedBy: "")[1])
//        let day = String(describing: birthdayPickerLabel.text!.components(separatedBy: " ")[0])
        
        let now = 2018 - Int(year)!
        //let age = result - year
        
        var str = ""
        if genderSegment.selectedSegmentIndex == 0 {
            str = "Woman"
        }else{
            str = "Man"
        }
        
        
            let sms = """
            hi i am \(nameTextField.text!). As a \(now)-years-old
            work at \(workTextField.text!) earning \(salaryInt.text!),i am
            interested in \(str). Feel frеe to
                   contact me!
            
            """
            
            let alert = UIAlertController(title: "My Personal Info", message: sms, preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        
    }
    
    


}




extension UIView {
    func addSubviews(z : [UIView]){
        for i in z {
            self.addSubview(i)
        }
    }
}



