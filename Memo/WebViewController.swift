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
        // Do any additional setup after loading the view, typically from a nib.
        myWebView.delegate = self
        loadWebPage("http://blog.naver.com/dnfla420")
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
        let flag2 = strUrl.hasPrefix("www.")

        if !flag {
            strUrl = "http://www." + strUrl
        }
        
        if !flag2 {
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

