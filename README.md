# Dropbox Example

Time spent: ~13 hours spent in total

Completed user stories:

 * [x] User can tap through the 3 welcome screens.
 * [x] User can follow the create user flow.
   * [x] On the create user form, the user can tap the back button to go to the page where they can sign in or create an account.
   * [x] Before creating the account, user can choose to read the terms of service.
   * [x] After creating the account, user can view the placeholders for Files, Photos, and Favorites as well as the Settings screen.
   * [x] User can log out from the Settings screen.
 * [x] User can follow the sign in flow.
   * [x] User can tap the area for "Having trouble signing in?"
   * [x] User can log out from the Settings screen.
 * [x] Optional: Add a detail view for one of the files and implement favoriting the file.
 * [x] Optional: Add UITextFields for the forms so you can actually type in them and handle dismissing the keyboard.
 * [x] Optional: You should be able to swipe through the welcome screens instead of just tapping them.
 
Notes:

* Implemented the password strength meter 
  * Check based on string length
  * Used UIColor to change the color of the text and bars
* Create button on new account screen is disabled until all fields are filled in
* Added the "more" button on the files details page by using a UIBarButtonItem

Walkthrough of all user stories:

![Video Walkthrough](dropbox.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).
