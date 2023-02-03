#NewsPortalMY

## Flutter-NewsApplication 

Flutter version 3.7.0
Dart 2.19.0 
SDK version 33


### Group Akhwan


 
| Name        | Matric           | Role  |
| ------------- |:-------------:| -----:|
| Zawad Wasik Ahmed   | 1912485 | Group Leader |
| Arief Iskandar Bin Shaffei     |   2010047    |   Soldier |

 ### Brief Description 

Our application is designed as a News app which fetches an API from newsapi(https://newsapi.org/), the users first need to sign in using their gmail account and then can easily browse through the news from the appilication. The application allows the users to view news on four different categories, the news are only catered to Malaysians looking to view news on malaysia , therefore it is perfect for users who are interested in filtering out the news and only want to read news based within their nation. 

The categories for the news type are as follows: 
1. General News 
2. Business
3. Technology 
4. Sports

Our system contains the following features:
1. Fetches news from an API.
2. Sign up function using Gmail.
3. Sign in using created account. 
4. Browse through four categories of News. 
5. News split into Breaking news & Top news.
6. Profile drawer, displaying image and email.

### Tasks Assigned

| Zawad Wasik Ahmed   | Arief Iskandar Bin Shaffei |
| --------------------------------------------------|:----------------------------------------------:|
|     1. Setting up the Project                     |     1. Planning out the project and pages      | 
|     2. Homepage & Portal UI                       |     2. Splashscreen & Login page UI            |
|     3. Coding Homepage.dart, Home.dart, General news files for the application   |     3. Coding Technology and Business files for the application |
|     4. Working on the API                         | 4. Working on the API |  
|     5. Creating Widgets:     |     5. Creating Widgets                |
|        i) detailNews        |          i) splashscreen                |
|        ii) homepage         |     ii) drawer.dart                     |
|        iii) News catergory layout            |     iii) SignIn/SignUp |
|        iv) serice_Api        |    iv) service_Api                     |
|    6. Firebase setup         |    6. Firebase Authentication             |


### Widgets & Dependencies 

[Widgets] 
 - Drawer 
 - Login 
 - Homepage
 - Api 
 - Splashscreen 
 - Animation
 
[Dependencies]
  - animated_splash_screen: ^1.1.0
  - cloud_firestore: ^3.1.0
  - firebase_core: ^1.10.0
  - firebase_storage: ^10.1.0
  - firebase_auth: ^4.2.5
  - http: ^0.13.3
  - shimmer: ^2.0.0
  - webview_flutter: ^2.0.13
  - hexcolor: ^2.0.5
  - page_transition: "^2.0.9"
    
### Sequence Diagram


### Interface

Splashscreen
<br>
<br>

![SplashScreen](https://user-images.githubusercontent.com/69716177/216464347-f08601f0-43b8-419c-9a99-0c913f38d0ff.png)

<br>
<br>
SignUp
<br>
![Screenshot_20230203_061505](https://user-images.githubusercontent.com/69716177/216465631-da11d50a-7a22-4aa5-93d5-bb3407e8dccc.png)

SignIn
<br>
<br>
![Screenshot_20230203_061821](https://user-images.githubusercontent.com/69716177/216465786-74d9e773-64fd-40b0-a6f5-66e36a7c5b8c.png)


Drawer
<br>
![drawer](https://user-images.githubusercontent.com/69716177/216464236-b2270386-c9c3-4779-b168-f94882d55e00.png)
<br>
<br>

Homepage
<br>
<br>
![Screenshot_20230203_060047](https://user-images.githubusercontent.com/69716177/216465856-ff1a52a4-8ecf-4bf6-8a43-8e1c6087b4dc.png)




### References
 
 - https://docs.flutter.dev/development/ui/advanced/gestures
 - https://firebase.google.com/docs/flutter/setup?platform=ios
 - https://pub.dev/packages/firebase_core
 - https://pub.dev/packages/firebase_auth
 - https://www.youtube.com/watch?v=TkuO8OLgvkk (Login & Logout • Firebase x Flutter Tutorial)
 - https://www.youtube.com/watch?v=Mfa3u3naQew (Sign Up Users • Firebase x Flutter Tutorial) 
 - https://www.youtube.com/watch?v=Sp4_2zi0kZg (Reset Password • Firebase x Flutter Tutorial)
  - https://www.youtube.com/watch?v=idJDAdn_jKk (Create & Store User Data • Firebase x Flutter Tutorial)
