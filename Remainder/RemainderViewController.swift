//
//  RemainderViewController.swift
//  Remainder
//
//  Created by Aloc SP06447 on 01/12/2017.
//  Copyright © 2017 Aloc SP06447. All rights reserved.
//

import UIKit

class RemainderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var time: UIDatePicker!
    @IBOutlet weak var orientation: UITextField!
    @IBOutlet weak var name: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchAddRemainder(_ sender: Any) {
        let remainder = Remainder(name.text!, orientation.text!, true, time.date)
        original.append(remainder)
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
