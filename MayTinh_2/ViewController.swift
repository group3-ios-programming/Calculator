//
//  ViewController.swift
//  MayTinh_2
//
//  Created by Tran Nhat Tuan on 4/19/18.
//  Copyright © 2018 Tran Nhat Tuan. All rights reserved.
//

import UIKit

var PhepTinh : String = ""
class ViewController: UIViewController {

    @IBOutlet weak var lb_KetQua: UILabel!
    @IBOutlet weak var btn_DauCong_Status: UIButton!
    @IBOutlet weak var btn_DauTru_Status: UIButton!
    @IBOutlet weak var btn_DauNhan_Status: UIButton!
    @IBOutlet weak var btn_DauChia_Status: UIButton!
    
    var Number: Double = 0;
    var SoThuNhat : Double = 0;
    var SoThuHai : Double = 0;
    var KetQuaPhepTinh :Double = 0;

    
    @IBAction func btn_Numbers(_ sender: UIButton) {
        if (lb_KetQua.text == "0" || lb_KetQua.text == "+" || lb_KetQua.text == "-" || lb_KetQua.text == "x" || lb_KetQua.text == "÷")
        {
            lb_KetQua.text = ""
            lb_KetQua.text = lb_KetQua.text! + String((sender as AnyObject).tag - 1)
            Number = Double(lb_KetQua.text!)!
        }
            
        else
        {
            
            lb_KetQua.text = lb_KetQua.text! + String((sender as AnyObject).tag - 1)
            Number = Double(lb_KetQua.text!)!
            
        }
    }
    
    
    @IBAction func btn_DauCong_Action(_ sender: Any) {
        
        SoThuNhat = Double(lb_KetQua.text!)!
        lb_KetQua.text = "+"
        PhepTinh = "+"
        
        btn_DauCong_Status.isEnabled = false

    }
    
    @IBAction func btn_DauTru_Action(_ sender: Any) {
        SoThuNhat = Double(lb_KetQua.text!)!
        lb_KetQua.text = "-"
        PhepTinh = "-"
        
        btn_DauTru_Status.isEnabled = false
    }
    
    @IBAction func btn_DauNhan_Action(_ sender: Any) {
        SoThuNhat = Double(lb_KetQua.text!)!
        lb_KetQua.text = "x"
        PhepTinh = "x"
        
        btn_DauNhan_Status.isEnabled = false
    }
    
    @IBAction func btn_DauChia_Action(_ sender: Any) {
        SoThuNhat = Double(lb_KetQua.text!)!
        lb_KetQua.text = "÷"
        PhepTinh = "÷"
        
        btn_DauChia_Status.isEnabled = false
    }
    
    @IBAction func btn_DauBang_Action(_ sender: Any) {

        switch (PhepTinh)
        {
        case ("+"):
            SoThuHai = Double(lb_KetQua.text!)!
            KetQuaPhepTinh = SoThuNhat + SoThuHai
            
            lb_KetQua.text = String(KetQuaPhepTinh)
            
            btn_DauCong_Status.isEnabled = true
            
            break;
        case ("-"):
            SoThuHai = Double(lb_KetQua.text!)!
            KetQuaPhepTinh = SoThuNhat - SoThuHai
            
            lb_KetQua.text = String(KetQuaPhepTinh)
            
            btn_DauTru_Status.isEnabled = true
            
            break;
        case ("x"):
            SoThuHai = Double(lb_KetQua.text!)!
            KetQuaPhepTinh = SoThuNhat * SoThuHai
            
            lb_KetQua.text = String(KetQuaPhepTinh)
            
            btn_DauNhan_Status.isEnabled = true
            
            break;
        case ("÷"):
            SoThuHai = Double(lb_KetQua.text!)!
            if (SoThuHai == 0)
            {
                lb_KetQua.text = "Not a Number"
            }
            else
            {
                KetQuaPhepTinh = SoThuNhat / SoThuHai
                
                lb_KetQua.text = String(KetQuaPhepTinh)
                
                btn_DauChia_Status.isEnabled = true

            }
            
            break;
            
        default:
    
            break;
        }
    }
    @IBAction func btn_AC_Action(_ sender: Any) {
        lb_KetQua.text = "0"
        KetQuaPhepTinh = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

