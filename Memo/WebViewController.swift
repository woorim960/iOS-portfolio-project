import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    
    // MARK: - Outlet Variable
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: UIWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    // Outlet Variable_End
    
    // MARK: - Function
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.loadRequest(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myWebView.delegate = self
        loadWebPage("http://blog.naver.com/dnfla420")
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(WebViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(WebViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(WebViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                myWebView.goForward()
            case UISwipeGestureRecognizerDirection.right:
                myWebView.goBack()

            default: break
            }
        }
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        myWebView.transform = myWebView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        myActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myActivityIndicator.stopAnimating()
    }
    
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://www.")

        if !flag {
            strUrl = "http://www." + strUrl
        }
        
        return strUrl
    }
    // Function_End

    
    // MARK: - Action
    @IBAction func btnGotoUrl(_ sender: UIButton) {
        let myUrl = checkUrl(txtUrl.text!)
        txtUrl.text = ""
        loadWebPage(myUrl)
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("http://blog.naver.com/dnfla420")
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://www.youtube.com/watch?v=dOrxXRFxoyg&list=PLNNF9k7d2ctD5rMf4QufVwAIW5_7pvr0o")
    }
    
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
        loadWebPage("http://www.induk.ac.kr")
    }
    
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
        loadWebPage("https://www.facebook.com/profile.php?id=100003677771464")
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    // Action_End
}

