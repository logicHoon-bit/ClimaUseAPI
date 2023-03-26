# ClimaUseApi

- viewDidLoad()

```swift
 let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self //위치를 요청하기전에 delegate 설정해야됨
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation() //일회성 주소 요청
        //locationManager.startUpdatingLocation()//연속성주소요청
       
        
        searchTextField.delegate = self
        weatherManager.delegate = self
       
    }
    
    
    @IBAction func showLocationWeather(_ sender: UIButton) {
        locationManager.requestLocation()
    }
```

- CLLocationManagerDelegate

```swift
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print("\(lat), \(lon)")
            
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
```
