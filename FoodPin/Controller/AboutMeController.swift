//
//  AboutMeController.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/12/24.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import SafariServices

class AboutMeController: UITableViewController {
    
    var sectionContent = [
        [ "https://www.jumpman.tw",
          "https://www.pixnet.net/tags/花蓮美食",
          "https://kenalice.tw/blog/post/39856633",
          "https://yoti.life/hualien-food-menu/",
          "https://haohui2017.com/lifestyle/hualien-10food/"
          
        ],
        
        ["https://tw.live/provincial-highway/suhua/",
         "https://www.railway.gov.tw/tra-tip-web/tip",
         "https://www.capitalbusgroup.com.tw/CTBUS/index.html",
         "https://www.ubus.com.tw/News/Announcement/782"
        ],
        
        ["https://www.cwb.gov.tw/V8/C/W/week.html"]
     ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let link = sectionContent[indexPath.section][indexPath.row]
        if let url = URL(string: link) {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
        
        tableView.deselectRow(at: indexPath, animated: false)
    }

 
}
