# fxDrawRectangle
Rectangle shader for Multi Theft Auto 

<br>

# ⚙️ Usage

   ```lua
   drawRectangle(x, y, w, h, {
      fill = {
          color = {r, g, b, a}, 
          radius = number
      },
      border = {
          color = {r, g, b, a}, 
          size = number
      },
      gradient = {
          direction = 'left' | 'right' | 'top' | 'bottom',
          alpha_start = number (0-100% or 0-255),
          percent_start = number (0-100),
          alpha_end = number (0-100% or 0-255),
          percent_end = number (0-100)
      },
      postGUI = bool
   })
   ```
<br>

# 🎨 Presentation
<details>
   <summary>Fill</summary>

   ![Example](https://github.com/user-attachments/assets/d0c2bfe3-6321-4ed3-ab9f-bddb92ac359b)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
    })
   ```
</details>
<details>
   <summary>Left</summary>
  
   ![Example](https://github.com/user-attachments/assets/e9b760be-6310-4a3f-86a7-4c2f785385cc)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'left', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
   ```
</details>
<details>
   <summary>Right</summary>

   ![Example](https://github.com/user-attachments/assets/9dad9853-3f45-432d-b88f-551ee8a17078)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'right', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
   ```
</details>
<details>
   <summary>Top</summary>
  
   ![Example](https://github.com/user-attachments/assets/0ea1e339-9a91-458c-8f36-f9ba68112a5a)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'top', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
   ```
</details>
<details>
   <summary>Bottom</summary>

   ![Example](https://github.com/user-attachments/assets/ce032b82-7de5-4f58-97f2-6de0e651259a)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'bottom', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
   ```
</details>





