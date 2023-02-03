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

Our application is designed as a News app which fetches an API from newsapi(https://newsapi.org/), the users first need to sign in using their gmail account and then can easily browse through the news from the appilication. 

### Objective

The application allows the users to view news on four different categories, the news are only catered to Malaysians looking to view news on malaysia , therefore it is perfect for users who are interested in filtering out the news and only want to read news based within their nation. 

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

### Progress Report
<br>
![Progress Report1](https://user-images.githubusercontent.com/69716177/216700345-c492292d-e0c2-4d1c-b40b-81a409008efb.png)
<br>
<br>
![Progress Report2](https://user-images.githubusercontent.com/69716177/216699723-51899745-8886-4c05-8450-76ed1122ef27.png)


### Widgets & Dependencies 

[Widgets] 
 - Drawer 
 - Login 
 - Homepage
 - Api 
 - Splashscreen 
 - Animation
 
[Dependencies]
  - animated_splash_screen: ^1.1.0 - Dependency for animations
  - cloud_firestore: ^3.1.0   - firebase cloud storage in console
  - firebase_core: ^1.10.0    - core dependency for firebase 
  - firebase_storage: ^10.1.0 - storing user passwords and emails
  - firebase_auth: ^4.2.5     - firebase authentication
  - http: ^0.13.3             - used for API call   
  - shimmer: ^2.0.0           - Styling & Animation
  - webview_flutter: ^2.0.13  - calling webview for moving to the Newpaper websites
  - hexcolor: ^2.0.5          - Hexcolor codes
  - page_transition: "^2.0.9" - visual delays in screen transition  
    
### Sequence Diagram
![Akhwan Sequence Diagram drawio (1)](https://user-images.githubusercontent.com/69716177/216523861-5c207125-db3a-4732-81fe-224f385f07d5.png)



### Interface

Splashscreen
<br>
<br>

![SplashScreen](https://user-images.githubusercontent.com/69716177/216464347-f08601f0-43b8-419c-9a99-0c913f38d0ff.png)

<br>
<br>

SignUp

<br>

![register](https://user-images.githubusercontent.com/69716177/216523476-6c2104af-4d67-4367-a68a-4044a55b98f1.png)



SignIn
<br>
<br>
![login](https://user-images.githubusercontent.com/69716177/216523412-d6915d10-6b81-4ad0-81cd-a3310ecc4bc3.png)



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
 - https://medium.com/@anmol-gupta/authenticating-users-with-flutter-and-firebase-rest-api-bdc7530759ba
 - https://docs.flutter.dev/development/ui/advanced/gestures
 - https://firebase.google.com/docs/flutter/setup?platform=ios
 - https://pub.dev/packages/firebase_core
 - https://pub.dev/packages/firebase_auth
 - https://newsapi.org/
 - https://www.youtube.com/watch?v=TkuO8OLgvkk (Login & Logout • Firebase x Flutter Tutorial)
 - https://www.youtube.com/watch?v=Mfa3u3naQew (Sign Up Users • Firebase x Flutter Tutorial) 
 - https://www.youtube.com/watch?v=Sp4_2zi0kZg (Reset Password • Firebase x Flutter Tutorial)
 - https://www.youtube.com/watch?v=idJDAdn_jKk (Create & Store User Data • Firebase x Flutter Tutorial)
