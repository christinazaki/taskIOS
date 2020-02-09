

import UIKit
import Alamofire
import AlamofireImage
class TableViewCell: UITableViewCell  {
 var places = [place]()
    var categoryName0 = ""
    var categoryName1 = ""
    var photoName0 = ""
    var photoName1 = ""
     let URL = "http://bellman-bd.restart-technology.com/api/home"
    @IBOutlet weak var nameOfEvent: UILabel!
    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var CV: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()

        CV.delegate = self
        CV.dataSource = self
        Alamofire.request(
            URL, method: .get, parameters: nil, encoding: JSONEncoding.default
            , headers: nil).validate().responseJSON { (res) in


              
                if res.result.isSuccess {
                    print("success")
                    let  jsonData = res.result.value as? [String: Any]
                    let data      =  jsonData?["data"] as? [String:Any]
                   
                    let attractions     =  data?["attractions"] as? [[String:Any]]
                   

                    for placeDictionary in attractions! {
                        let attract =  place( dictionary:placeDictionary)
                        self.places.append(attract)
                        
                    }
                    if let categories0    =  attractions?[0]["categories"]as? [[String:Any]] {
                        print("\(categories0)")
                        self.categoryName0 = categories0[0]["name"] as! String
                        
                        
                    }
                    
                    
                    if let categories1    =  attractions?[1]["categories"]as? [[String:Any]] {
                        print("\(categories1)")
                        self.categoryName1 = categories1[0]["name"] as! String
                        print("madonna")
                        print(self.categoryName1)
                    }
                    
                    if let photo0    =  attractions?[0]["photos"]as? [String] {
                        
                        self.photoName0 = photo0[0] as! String
                        
                    }
                    if let photo1    =  attractions?[1]["photos"]as? [String] {
                        
                        
                        self.photoName1 = photo1[0] as! String
                        
                        
                    }
                        self.CV.reloadData()
                }
                else {
                    print("failure")
                }
        }
        print("hel")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//print("hello")
//        // Configure the view for the selected state

  }

}
extension TableViewCell : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
       
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let place =  places[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
  
        cell.placeName.text = place.name  
        if (indexPath.row == 0){
            
            cell.categoryPlace.text = self.categoryName0
            cell.placeName.text = place.name
            
            if let url = NSURL(string: self.photoName0)
            {
                cell.placeImage.af_setImage(withURL: url as URL)
            }
            
        }
        if (indexPath.row == 1){
            //let place = places[indexPath.row]
            cell.categoryPlace.text = self.categoryName1
            cell.placeName.text = place.name
            if let url = NSURL(string: self.photoName1)
            {
                cell.placeImage.af_setImage(withURL: url as URL)
            }
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
