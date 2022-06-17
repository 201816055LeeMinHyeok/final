//
//  AddViewController.swift
//  table1
//
//  Created by 203a38 on 2022/05/13.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COLUMN = 1
    var imageArray = [UIImage?]()
    var imageFileName = ["clock.png", "pencil.png", "cart.png"]

    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var text1: UITextField!
    @IBOutlet var text2: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var txField: UITextField!
    @IBOutlet var tfAddItem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent conponent: Int) -> String? {
        return imageFileName[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append("clock.png")
        tfAddItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
