
- [PS2 Texture Color Space](#ps2-texture-color-space)
	- [From PCSX2's own documentation on texture dumping](#from-pcsx2s-own-documentation-on-texture-dumping)
	- [Chainner](#chainner)
	- [Photoshop](#photoshop)
		- [Manual Method / Explanation of What the Actions Do:](#manual-method--explanation-of-what-the-actions-do)

# PS2 Texture Color Space
The PS2 had a different color depth from modern systems, and as a result, fully opaque textures from the PS2 show up as having 50% opacity on PC.

- Pixels that have 128 (50%) opacity were actually fully opaque on PS2, pixels that are 102 (40%) opacity were 80% on the PS2, 64 (25%) is 50%, ect.
- All ports of MGS2 to non-PS2 systems have code that automatically double the opacity level to account for the difference in rendering on other systems.
- Stripping opacity outright from a texture / setting it to 100% / fully opaque via photoshop will result in MGS2's lighting engine treating the texture completely different.

Below are tools and methods for converting texture color space for accurate rendering in modern game engines & image editors

<br>
<br>

## From PCSX2's own documentation on texture dumping


> Why Are My Textures Transparent?
> The PS2 does not use the same color depth as a PC. As such, the alpha channel on a PS2 which would normally appear as fully opaque will turn 50% transparent when exported to a PC readable image.
> 
> How Do I Edit Them Like This?
> Using your image editor of choice, you can raise the alpha level of a texture to 255 in order to edit it. Complete your work, then restore the alpha level back to the original value prior to inserting it into PCSX2.
> 
> How Do I Know What Alpha Level To Restore?
> If a texture is partially transparent, then its alpha level is probably 128. If unsure, and if your image editor supports it, sample colors from the original texture to verify the alpha level. You should ensure that if the texture had alpha when dumped, it is set to the same value prior to loading in PCSX2.

<br>

![381780393-9cc93d7c-ffd5-46d8-9610-e063f95b6a61](https://github.com/user-attachments/assets/8b93684b-4440-44d0-9040-f113c59190df)

PCSX2's team does provide tooling on their repo to easily mass-convert dumped textures to a modern color depth if you need to use the textures in a different engine:
https://github.com/PCSX2/pcsx2/blob/master/tools/texture_dump_alpha_scaler.py


<br>

## Chainner

Alternatively, if you're not comfortable with command line / python, you can also use chainner to easily do it en-masse (just remember to convert them back if you intend to use the texture in the MGS2/MGS3 engine!)

![image](https://github.com/user-attachments/assets/f3d0aad7-59cf-4d0a-8ab4-14efe20481d2)

<br>


## Photoshop 

To easily convert a texture's color space directly within Photoshop, a set of actions are available here to automate the process: 

![Photoshop - PS2 Texture Actions](PS2%20Texture%20Actions.atn)

<br>


![image](https://github.com/user-attachments/assets/5ba5e2a8-bbe2-4cdc-a7e9-334564147e59)


<br>

---


### Manual Method / Explanation of What the Actions Do:
1) Creates a New Layer
2) Merges all visible layers
3) Creates new layer mask from transparency
   
![bed86526-f1d3-431d-8ac7-cfade5d084c0](https://github.com/user-attachments/assets/7c7c7b67-33e6-4999-aadc-a8f461b46446)

![2800a1be-73c6-46df-90e5-3a4be0410edb](https://github.com/user-attachments/assets/095f64e7-777c-4a91-9050-5f1c2e768cf6)

1) Enables ONLY the alpha channel
   
![ff0f5ebe-e7bd-4f3f-83ce-30fe4ef19143](https://github.com/user-attachments/assets/ddd96dbc-e9a2-4bed-829c-03eafde1d11f)

5) Menu Image > Adjustments > Levels (CTRL + L)
   
![93228792-4a5c-4097-a37f-041bfd147077](https://github.com/user-attachments/assets/5c8e0466-d6ca-4a09-a29a-c1d45edc0984)

6) Change Input Level from 255 to 128 

![325a07de-9839-4687-8f15-030e9161abdb](https://github.com/user-attachments/assets/22992288-9c12-4327-ab0d-1da06697e23e)

Final Result:

![1caed4df-5580-4408-ba56-c03b6d58862c](https://github.com/user-attachments/assets/026b473e-7939-4af9-adf5-caf9a803cdb8)

<br>

To convert a texture from PC color space back to the PS2's color space, simply repeat the above process, but change the OUTPUT level to 128 instead of the input level.

![cacd189e-27ff-4ad9-94c9-81f2df412431](https://github.com/user-attachments/assets/72374a6f-fef8-440d-8f78-7c960239a9d8)





