import UIKit

class ViewController: UIViewController {

    
    //MARK: - Variable
    var retButton = true
    var Bool = true
    var Bool2 = true
    var Bool3 = true
    var Bool4 = true
    var Bool5 = true
    var Bool6 = true
    var Bool7 = true
    var Bool8 = true
    var isZoom = true
    // Variable_End

    
    // MARK: - Outlet Variable
    @IBOutlet var lblKrName: UILabel!
    @IBOutlet var lblCnCharName: UILabel!
    @IBOutlet var lblEnName: UILabel!
    @IBOutlet var lblPhNumber: UILabel!
    @IBOutlet var lblEmail: UILabel!
    @IBOutlet var lblHmAddress: UILabel!
    @IBOutlet var lblFmHmAddress: UILabel!
    @IBOutlet var lblLvEducation: UILabel!
    @IBOutlet var lblLvEducation2: UILabel!
    @IBOutlet var lblMilServive: UILabel!
    @IBOutlet var lblCertificate: UILabel!
    @IBOutlet var lblMarStatus: UILabel!
    @IBOutlet var lblFamily: UILabel!
    @IBOutlet var lblServRanguage: UILabel!
    @IBOutlet var imgView: UIImageView!
    // Outlet Variable_End
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    
    // MARK: - Action
    @IBAction func btnShowInfo(_ sender: UIButton) {
        
        if retButton {
            
        retButton = false
        
        lblKrName.text = "박우림"
        lblCnCharName.text = "朴祐林"
        lblEnName.text = "woorim.Park"
        } else {
        
            retButton = true
        
            lblKrName.text = "My"
            lblCnCharName.text = "Name"
            lblEnName.text = "Is"
        }
    }
    
    @IBAction func btnPhNumber(_ sender: UIButton) {
        
        if Bool {
            
            Bool = false
            lblPhNumber.text = "010-2515-0939"
        } else {
            
            Bool = true
            lblPhNumber.text = "Pone Number"
        }
    }
    
    @IBAction func btnEmail(_ sender: UIButton) {
        
        if Bool2 {
            
            Bool2 = false
            lblEmail.text = "dnfla420@naver.com"
        } else {
            
            Bool2 = true
            lblEmail.text = "E - Mail"
        }
    }
    
    @IBAction func btnHmAddress(_ sender: UIButton) {
        
        if Bool3 {
            
            Bool3 = false
            lblHmAddress.text = "서울시 노원구 월계동 272-5"
        } else {
            
            Bool3 = true
            lblHmAddress.text = "Home Address"
        }

    }
    
    @IBAction func btnFmHmAddress(_ sender: UIButton) {
        
        if Bool4 {

            Bool4 = false
            lblFmHmAddress.text = "대전시 대덕구 중리로 21번길 33"
        } else {
            
            Bool4 = true
            lblFmHmAddress.text = "Family Home Address"
        }
    }
    
    @IBAction func btnLvEducation(_ sender: UIButton) {
        
        if Bool5 {
            
            Bool5 = false
            lblLvEducation.text = "심원초," + " 예산중," + " 삽교고 졸"
            lblLvEducation2.text = "인덕대 2학년 재학 중"
        } else {
            
            Bool5 = true
            lblLvEducation.text = "Level Of Education"
            lblLvEducation2.text = ""
        }
    }
    
    @IBAction func btnServRanguege(_ sender: UIButton) {
    
        if Bool6 {
            
            Bool6 = false
            lblServRanguage.text = "Swift . C . Java"
        } else {
            
            Bool6 = true
            lblServRanguage.text = "Serviceable Ranguage"
        }
    }
    
    @IBAction func btnMilService(_ sender: UIButton) {
        
        if Bool7 {
            
            Bool7 = false
            lblMilServive.text = "21개월 해병 군악 병장 전역"
        } else {
            
            Bool7 = true
            lblMilServive.text = "Military Service"
        }
    }
    
    @IBAction func btnAll(_ sender: UIButton) {
        
        if Bool8 {
            
            Bool8 = false
            if Bool {
                
                Bool = false
                lblPhNumber.text = "010-2515-0939"
            }
            
            if Bool2 {
                
                Bool2 = false
                lblEmail.text = "dnfla420@naver.com"
            }
            
            if Bool3 {
                
                Bool3 = false
                lblHmAddress.text = "서울시 노원구 월계동 272-5"
            }
            
            if Bool4 {
                
                Bool4 = false
                lblFmHmAddress.text = "대전시 대덕구 중리로 21번길 33"
            }
            
            if Bool5 {
                
                Bool5 = false
                lblLvEducation.text = "심원초," + " 예산중," + " 삽교고 졸"
                lblLvEducation2.text = "인덕대 2학년 재학 중"
            }
            
            if Bool6 {
                
                Bool6 = false
                lblServRanguage.text = "Swift . C . Java"
            }
            
            if Bool7 {
                
                Bool7 = false
                lblMilServive.text = "21개월 해병 군악 병장 전역"
            }
            
            lblCertificate.text = "운전면허증 2종"
            lblMarStatus.text = "미혼"
            lblFamily.text = "부.모.형.여동생"
        } else {
            
            Bool8 = true
            if !Bool {
                
                Bool = true
                lblPhNumber.text = "Pone Number"
            }
            
            if !Bool2 {
                
                Bool2 = true
                lblEmail.text = "E - Mail"
            }
            
            if !Bool3 {
                
                Bool3 = true
                lblHmAddress.text = "Home Address"
            }
            
            if !Bool4 {
                
                Bool4 = true
                lblFmHmAddress.text = "Family Home Address"
            }
            
            if !Bool5 {
               
                Bool5 = true
                lblLvEducation.text = "Level Of Education"
                lblLvEducation2.text = ""
            }
            
            if !Bool6 {
                
                Bool6 = true
                lblServRanguage.text = "Serviceable Ranguage"
            }
            
            if !Bool7 {
                
                Bool7 = true
                lblMilServive.text = "Military Service"
            }
            
            lblCertificate.text = "Certificate"
            lblMarStatus.text = "Marriage Status"
            lblFamily.text = "Family"
        }
    
    }
    
    @IBAction func btnImgZoom(_ sender: UIButton) {
        
        let scale: CGFloat = 2.45
        var newWidth: CGFloat, newHeight: CGFloat
        
        if isZoom {
            
            self.isZoom = false
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        } else {
            
            self.isZoom = true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        }
    }
    
    @IBAction func btnImgReduction(_ sender: UIButton) {
        
        let scale: CGFloat = 2.45
        var newWidth: CGFloat, newHeight: CGFloat
        
        if !isZoom {
            
            self.isZoom = true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        }
    }
    // Action_End
    
}
