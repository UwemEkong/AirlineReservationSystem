# AirlineReservationSystem

Airline reservation system project for CMSC4375
## Installation

1. Within IntelliJ IDEA, click on "Add Configuration" (top right)
2. Click on the "+" sign located in the top left of the popup window. When you hover your mouse cursor over it, it should say "add new configuration".
3. Scroll down and select **Tomcat Server -> Local**
4. At the top of the window, change "Unnamed" to "Airline Reservation System"
5. Click on the "Application server" dropdown. If you don't see your installed Tomcat version, then click "Configure".
6. Click on the "+" sign located in the top left of the popup window.
7. Under "Tomcat Home", click on the folder icon to locate the folder where Tomcat was installed. The folder should be named something like "apache-tomcat-10.0.11"
8. After finding your installed tomcat version, click "OK".Now, your tomcat version should appear under the "Application server" dropdown. Select your version.
9. At the bottom of your window, you should see a red warning saying that no artifacts have been indicated for deployment to the server. Click on the suggestion button to the right of this warning.
10. After clicking the suggestion button, you should have been moved from the **Server** tab to the **Deployment tab**. Under the **Deploy at the server startup** section, you should see a **war exploded** file. **Click Apply and OK**
11. At the very bottom of your IDE, you should see a new tab called "Services". Click on this tab. You should now see your local tomcat server underneath "Application Servers". Click on "Airline Reservation System [local]"
12. You should see a green play button pop up to the left of the tomcat server name. Click on this play button
13. After clicking the play button, your tomcat server should now be running. You will see "Hello World" on your screen if everything was successful.