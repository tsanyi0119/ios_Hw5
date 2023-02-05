//
//  DetailViewController.swift
//  CallAPIExample
//
//  Created by imac-1681 on 2023/2/3.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var countyLabel: UILabel!
    @IBOutlet weak var aqiLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var influenceTitle: UILabel!
    @IBOutlet weak var influenceValue: UILabel!
    @IBOutlet weak var measureTitle: UILabel!
    @IBOutlet weak var measureValue: UILabel!
    
    var county:String = ""
    var aqi:String = ""
    var status:String = ""
    
    var influenceList: [String] = [
        "空氣品質令人滿意，基本無空氣污染",
        "空氣品質可接受，但某些污染物可能對極少數異常敏感人群健康有較弱影響",
        "易感人群症狀有輕度加劇，健康人群出現刺激症狀",
        "進一步加劇易感人群症狀，可能對健康人群心臟、呼吸系統有影響",
        "心臟病和肺病患者症狀顯著加劇，運動耐受力降低，健康人群普遍出現症狀",
        "健康人群運動耐受力降低，有明顯強烈症狀，提前出現某些疾病"
    ]
    var measureList: [String] = [
        "各類人群可正常活動",
        "極少數異常敏感人群應減少戶外活動",
        "兒童、老年人及心臟病、呼吸系統疾病患者應減少長時間、高強度的戶外鍛鍊",
        "兒童、老年人及心臟病、呼吸系統疾病患者應避免長時間、高強度的戶外鍛鍊，一般人群適量減少戶外運動",
        "兒童、老年人及心臟病、呼吸系統疾病患者應停留在室內，停止戶外活動，一般人群應避免戶外活動",
        "兒童、老年人及心臟病、呼吸系統疾病患者應停留在室內，避免體力消耗，一般人群應避免戶外活動"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(county)
//        print(aqi)
//        print(status)
        Init()
        
        // Do any additional setup after loading the view.
    }
    private func Init(){
        countyLabel.textColor = UIColor.white
        aqiLabel.textColor = UIColor.white
        statusLabel.textColor = UIColor.white
        influenceTitle.textColor = UIColor.white
        influenceValue.textColor = UIColor.white
        measureTitle.textColor = UIColor.white
        measureValue.textColor = UIColor.white
        countyLabel.text = county
        aqiLabel.text = aqi
        statusLabel.text = status
        view.backgroundColor = UIColor.init(red: CGFloat(206)/255, green: CGFloat(227)/255, blue: CGFloat(236)/255, alpha: 1)
        if(aqi.toInt()<100){
            statusLabel.font = UIFont.systemFont(ofSize: 80)
        }
        switch aqi.toInt(){
        case 0 ... 50:
            statusView.backgroundColor = UIColor(red: CGFloat(154)/255, green: CGFloat(231)/255, blue: CGFloat(197)/255, alpha: 1)
            influenceValue.text = influenceList[0]
            measureValue.text = measureList[0]
        case 51 ... 100:
            statusView.backgroundColor = UIColor.init(red: CGFloat(254)/255, green: CGFloat(225)/255, blue: CGFloat(131)/255, alpha: 1)
            influenceValue.text = influenceList[1]
            measureValue.text = measureList[1]
        case 101 ... 150:
            statusView.backgroundColor = UIColor.init(red: CGFloat(255)/255, green: CGFloat(199)/255, blue: CGFloat(127)/255, alpha: 1)
            influenceValue.text = influenceList[2]
            measureValue.text = measureList[2]
        case 151 ... 200:
            statusView.backgroundColor = UIColor.init(red: CGFloat(254)/255, green: CGFloat(185)/255, blue: CGFloat(173)/255, alpha: 1)
            influenceValue.text = influenceList[3]
            measureValue.text = measureList[3]
        case 201 ... 250:
            statusView.backgroundColor = UIColor.init(red: CGFloat(229)/255, green: CGFloat(152)/255, blue: CGFloat(230)/255, alpha: 1)
            influenceValue.text = influenceList[4]
            measureValue.text = measureList[4]
        case _ where aqi.toInt() > 300:
            statusView.backgroundColor = UIColor.init(red: CGFloat(231)/255, green: CGFloat(38)/255, blue: CGFloat(101)/255, alpha: 1)
            influenceValue.text = influenceList[5]
            measureValue.text = measureList[5]
        default:
            break
        }
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
