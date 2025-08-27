# Flower Shop Application

A Flutter application that demonstrates a flower shop.  
It provides a welcoming entry screen, authentication (sign in/sign up) with form validation, and a home page that displays featured products, product listings, and hot offers.  

---

## Project Overview
The **Flower Shop App** was built using Flutter and Dart.  
It demonstrates:
- A structured multi-screen application
- User authentication with validation
- Navigation between pages
- Displaying products using PageView, GridView, and ListView widgets

The app flow:
1. **Welcome Screen** → includes **Sign In** and **Sign Up** buttons.  
2. **Sign In** → requires email and password with validation.  
3. **Sign Up** → requires first name, last name, email, password, and confirm password with validation.  
4. **Alert Dialog** → confirms successful sign in/sign up, then proceeds to the **Home Page**.  
5. **Home Page** →  
   - PageView → displays **3 featured products**  
   - GridView → displays **8 products** under "Our Products"  
   - ListView → displays **3 hot offers**  

---

## Features

**Welcome Screen**
  - Includes Sign In / Sign Up navigation

**Sign In**  
  - Email validation (`must contain '@'`)  
  - Password validation (`minimum 6 characters`)  

**Sign Up**  
  - First/Last name validation (`must start with uppercase`)  
  - Email validation (`must contain '@'`)  
  - Password validation (`minimum 6 characters`)  
  - Confirm Password (`must match password`)


**Alert Dialog** 
  - Appears after Sign In / Sign Up, with a "Proceed" button to go to Home Page

  
**Home Page**  
  - **Featured Products** → PageView with 3 featured items  
  - **Our Products** → GridView with 8 items (2 items in a row) 
  - **Hot Offers** → ListView with 3 deals

    

---

## Setup Instructions
1. Download or clone the project from this repository.  
2. Open the project in **Android Studio** or **VS Code**.  
3. Run `flutter pub get` to install dependencies.  
4. Connect a device or start an emulator.  
5. Click **Run** ▶️ to launch the app.
