//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
        sourceArray = [
            Restaurant(name: "時光旅人", type: "早餐🌞", location: "970花蓮縣花蓮市公園路33號", summary: "以早餐來說這不算是很高的價位，還有免費的wifi、書報雜誌可以使用，有點咖啡館的概念，對面剛好就是中正體育場的停車場，平常要是沒有辦活動的話，停車都是很方便的！店裡的招牌「地瓜拉餅」還可以搭配奶茶做超值早餐只要39元，真的非常划算！🥳另外軍警消還可以再打95折。一到假日人潮擁擠，想吃還要提早訂位！🥺", image: "時光旅人", isVisited: false),
            Restaurant(name: "鼎吉大腸鮮蚵麵線/爌肉飯", type: "早餐🌞", location: "970花蓮縣花蓮市重慶路480號970", summary: "蚵仔超大顆又鮮美🤩雙料大腸麵線必吃！ 花蓮重慶市場美食", image: "鼎吉", isVisited: false),
            Restaurant(name: "張瑋烤肉蛋吐司", type: "早餐🌞", location: "970花蓮縣花蓮市富國路136號", summary: "『張瑋烤肉蛋吐司』的特色在於將每日市場採買的溫體豬肉片拍打調味處理後使用碳火烤出來的！🔥 有碳香味就是讚啦～", image: "張瑋", isVisited: false),
            Restaurant(name: "飯糰店RicaBallStore", type: "早餐🌞", location: "970花蓮縣花蓮市民國路167號", summary: "位於民國路與三民街口的「飯糰店Rice Ball Store」老闆是從澳洲回來後自己創業是個年輕人，全力支持花蓮年輕人創業，飯糰選項不多就四種很好選擇啦，老闆也響應環保！🍙飯糰店使用的米有三種台梗14號、紅藜麥、長糯米，紅藜麥有抗老養顏、顧血管，可保護心血管等等都非常健康的食材，飯糰的份量也非常足夠！", image: "飯糰店", isVisited: false),
            Restaurant(name: "晨饅", type: "早餐🌞", location: "970花蓮縣花蓮市東興二街8號", summary: "隱藏在下美崙巷弄間非常用心的小店☘️老闆每天用心手工製作每一項產品，饅頭蛋餅皮醃製豬排豆漿都是自己來！！手工饅頭吃起來蓬鬆又帶點嚼勁紮實，不會吃起來只有蓬鬆澎起來的感覺，夾上老闆特製豬排豬排酥酥超香的吃一個很滿足😚用平底鍋煎的蛋餅手工蛋餅皮Q嫩！每天限量不要太晚來！也可以前一天私訊ig臉書提前先訂購，不定時的公休也要看粉專上面公布👀", image: "晨饅", isVisited: false),
            Restaurant(name: "歪歪歪甜點", type: "下午茶🍓", location: "970花蓮縣花蓮市南京街328號", summary: "位於後山花蓮甜點店「歪歪歪甜點」，是下午茶吃點心超高CP值的首選🧁。以販售塔類甜點為主，平均只要$55的甜甜價，使用真材實料有著不輸人的賣相以及美妙的滋味，最特別的是現點現做的甜點，吸引了不少喜歡甜食的人。", image: "歪歪歪", isVisited: false),
            Restaurant(name: "阿秀奶奶", type: "下午茶🍓", location: "970花蓮縣花蓮市新港街79-4號", summary: "阿秀奶奶是一間文青又可愛的花蓮早午餐咖啡館，👵🏻美食口味在精不在多，而且還在特別，它的清粥小菜、奶油紅豆小圓球，簡單樸實又不失親切的溫度，就像老闆阿秀對奶奶的回憶一樣溫暖。還有豐盛的營養大餐盤，輕食沙拉營養豐富，再來份日式焦糖布丁更是滿足！", image: "阿秀", isVisited: false),
            Restaurant(name: "昭和58", type: "下午茶🍓", location: "970花蓮縣花蓮市成功街306號", summary: "因老闆日本學藝期間對於昭和時代的咖啡廳情有獨鍾，故以自己出生年份昭和58年（民國72年）命名。從裝潢到點心都充滿日本懷舊氛圍，這間洋菓子喫茶店是老闆到日本學藝後回家鄉創業的夢想實踐，因為特色獨具且餐點美味，成為IG、網美打卡熱點。", image: "58", isVisited: false),
            Restaurant(name: "惦惦 lab:tiamtiam", type: "下午茶🍓", location: "973花蓮縣吉安鄉中興路345號", summary: "這一間「惦惦lab:tiamtiam」在IG上是非常熱門的打卡店，地點就在超夯的「慶修院」旁邊，有悠閒的環境，不限制用餐時間，有插座又有WIFI，真的挺不賴的！🥰", image: "惦惦", isVisited: false),
            Restaurant(name: "定置漁場三代目", type: "午＆晚餐🌝", location: "970花蓮縣花蓮市建國路23號1樓", summary: "🐟以東台灣盛產的鬼頭刀為主題，開發出六種膠原魚白湯拉麵，搭配生魚薄片、蝦醬炸透抽、和風酥炸雞軟骨等多款小菜，讓大家視覺與味覺都同時獲得滿足。「定置漁場三代目」由東昌定置魚場第三代所經營，充滿了在地漁業的發展故事及傳承意涵。", image: "定置漁場", isVisited: false),
            Restaurant(name: "飯人餐車", type: "午＆晚餐🌝", location: "970花蓮縣花蓮市林森路311號", summary: "小吃店也可以很文青！。飯人，愛吃飯的人一定要來吃吃看！「豬油拌飯、滷肉飯、炸醬飯、蔥油雞飯」🍚，加10元加個半熟蛋，營業時間從 12:00 – 20:00，對於沒辦法在正餐時間吃飯的人真的是天大的好消息，到了下午，終於不是只有早午餐、輕食麵包的選擇，可以大口吃飯啦！", image: "飯人", isVisited: false),
            Restaurant(name: "六里屯麵食專家", type: "午＆晚餐🌝", location: "970花蓮縣花蓮市中美路303巷2號", summary: "花蓮超人氣牛肉麵就在【六里屯麵食專家】，除了牛肉麵之外，還有羊肉麵、羊骨麵，以及各式美味小菜，牛三寶拼盤也相當推薦！舒適有質感的工業風環境，無論是個人用餐、情侶約會或是小家庭用餐都很合適，【六里屯麵食專家】除了吉安的旗艦店之外，在中美路上也有美崙分店，生意很好，假日用餐時間要儘早來喔！😇", image: "六里屯", isVisited: false),
            Restaurant(name: "西村的家食堂", type: "午＆晚餐🌝", location: "973花蓮縣吉安鄉慶豐十街195號", summary: "肉燥飯加半熟蛋！在日式老宅中品嚐古早味麵食的好滋味🏠起初店裡的肉燥飯就只是單純的肉燥飯，直到有一天因為客人的需求才放上一顆半熟荷包蛋，客人一吃感覺就是在吃周星馳電影《食神》中出現的「黯然銷魂飯」一樣，從此以後，肉燥飯加上半熟蛋的黯然銷魂組合就這麼誕生了。💥", image: "西村的家", isVisited: false),
            Restaurant(name: "富貴小火鍋", type: "午＆晚餐🌝", location: "973花蓮縣吉安鄉建國路一段162號", summary: "晚上八九點不知道要吃什麼…還是來吃最愛的火鍋吧！🥬吉安的富貴小火鍋可以說是宵夜場裡的平價火鍋霸主～～晚上還有營業的店家已經算少了加上不到200大洋就可以吃得飽飽的一餐😝", image: "富貴", isVisited: false),
            Restaurant(name: "幽靈餐車", type: "午＆晚餐🌝", location: "973花蓮縣吉安鄉建國路一段162號", summary: "花蓮必吃小吃傳說中的隱藏版小吃🙌🏻原本只有晚上才開的美食小吃，現在中午11:30~13:30也有營業哦！😻半熟蛋加上香氣十足的滷肉飯還有雞湯，讓人垂涎三尺阿!", image: "幽靈餐車", isVisited: false),
            Restaurant(name: "火車頭烤肉屋", type: "午＆晚餐🌝", location: "970花蓮縣花蓮市中山路151號", summary: "道地美式豬肋排、德州式牛胸肉鮮嫩口感讓人無法忘懷！🤤這家美國主廚以德州烤肉、BBQ豬肋排及牛排聞名！", image: "火車頭", isVisited: false),
            Restaurant(name: "韓鍋家", type: "午＆晚餐🌝", location: "970花蓮縣花蓮市中山路889號", summary: "必吃美食有部隊鍋、韓式炸雞、海鮮煎餅🙌🏻CP值很高的一家花蓮在地韓式料理🤩", image: "韓", isVisited: false),
            Restaurant(name: "島東譯電所", type: "酒吧🍻", location: "970花蓮縣花蓮市福建街436號", summary: "花蓮市溝仔尾區域，有一棟磚造的二層樓獨立建築，曾是鐵路局長的宿舍，如今打開門走進去，彷彿進入一個隨時誘發好奇心的迷幻世界，簡直是什麼都有、什麼都好奇怪。走進「島東譯電所」，牆上的西醫解剖圖、桌上的中醫穴道人體模型、櫃子裡近百年的手搖音樂盒、鱷魚和貓頭鷹標本，都是令人新奇的玩意，這裡是選物店、藝術空間，也是間提供客家點心及調酒的小酒吧🍺", image: "島東", isVisited: false),
            Restaurant(name: "奉珠吧", type: "酒吧🍻", location: "973花蓮縣吉安鄉福興六街38號1樓", summary: "鄉間小路旁的台式熱炒FEAT. 調酒🍺奉珠吧是久六庫豬民宿的老闆在民宿後院自己打造的酒吧。", image: "奉珠吧", isVisited: false),
            Restaurant(name: "Chill lanD精釀啤酒", type: "酒吧🍻", location: "970花蓮縣花蓮市南京街330號", summary: "這是第一家開在花蓮的精釀啤酒🍺，如果突然嘴饞的話，來這邊就對了！對尚未熟悉的精釀啤酒的人來說(簡單來說就是不愛苦味的話)，推薦點臺虎精釀的長島冰啤❤️", image: "CHILL", isVisited: false),
            
        ]
    }
    
}

