

import UIKit
import Alamofire
class TableViewCell2: UITableViewCell {
     var places = [place]()
    var categoryName0 = ""
    var categoryName1 = ""
    var photoName0 = ""
    var photoName1 = ""
 let URL = "http://bellman-bd.restart-technology.com/api/home"
    
    @IBOutlet weak var CV: UICollectionView!
    @IBOutlet weak var nameOfEvent: UILabel!
    @IBOutlet weak var imageEvent: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

        CV.delegate = self
        CV.dataSource = self
        Alamofire.request(
            URL, method: .get, parameters: nil, encoding: JSONEncoding.default
            , headers: nil).validate().responseJSON { (res) in
                
                
                
                print("res")
                if res.result.isSuccess {
                    print("success")
                    let  jsonData = res.result.value as? [String: Any]
                    let data      =  jsonData?["data"] as? [String:Any]
                  
                    let event     =  data?["events"] as? [[String:Any]]
                  
                    
                    for placeDictionary in event! {
                        let eve =  place( dictionary:placeDictionary)
                        self.places.append(eve)
                        print(eve.name)
                    }
                    if let categories0    =  event?[0]["categories"]as? [[String:Any]] {
                        print("\(categories0)")
                        self.categoryName0 = categories0[0]["name"] as! String
                        print(self.categoryName0)
                        
                    }
                    
                    
                    if let categories1    =  event?[1]["categories"]as? [[String:Any]] {
                        print("\(categories1)")
                        self.categoryName1 = categories1[0]["name"] as! String
                        
                        print(self.categoryName1)
                    }
                    
                   
                    
                   
                    
                    self.CV.reloadData()
                }
                else {
                    print("failure")
                }
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TableViewCell2 : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let place =  places[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as! CollectionViewCell2
        
        
       
        if (indexPath.row == 0){
            
            cell.categoryPlace.text = self.categoryName0
            cell.placeName.text = place.name
            
            
                cell.placeImage.image = UIImage(named: "no image")
            
            
        }
        if (indexPath.row == 1){
            //let place = places[indexPath.row]
            cell.categoryPlace.text = self.categoryName1
            cell.placeName.text = place.name
           
cell.placeImage.image = UIImage(named: "no image")
        }


        
        return cell
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 10) / 2
        let height = 1.5 * width
        let size = CGSize(width: width , height: height)
        return size
    }
    
}
