by the way i'm assuming folks here are likely using photoshop for this project - just know that if you're working with textures that have transparencies (ie fonts), you will NOT want to export them to PNG using photoshop as you will most likely have a white halo around the edges due to a quirk with how photoshop handles transparencies. 

Don't use photoshop when exporting textures that have transparency / alpha layers - use gimp instead (it can also open PSD's, that said it doesn't respect photoshop's layer blending color overlay options so be sure to make things the actual color you want.)

This is a long known issue with how photoshop saves images with transparency, in that it sets empty pixels to white instead of bleeding the color that is adjacent to them. This results in white edges appearing around transparent textures due to how most game engines compress textures in memory, even though the image itself looks normal when viewed in photoshop & windows. 

To fix this issue, simply open up your .PSD (or your .PNG) in gimp, export as a PNG (control shift e to open the export panel), then enable this option when saving the file as a PNG

![image](https://github.com/user-attachments/assets/967e3b21-0bfc-4204-a6b3-1e9dc1c47271)

![image](https://github.com/user-attachments/assets/e6ea6208-3d63-4326-873c-347720bc4947)

![image](https://github.com/user-attachments/assets/ace29699-c826-46b4-8899-ecd90babd924)

![image](https://github.com/user-attachments/assets/5f3f61bf-3422-4af5-ab65-c58e01516c4a)
