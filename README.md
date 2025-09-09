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

   ![Example](https://github.com/user-attachments/assets/e2571908-aaf0-47e3-b49a-42bda85971c0)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
    })
   ```
</details>
<details>
   <summary>Left</summary>
  
   ![Example](https://github.com/user-attachments/assets/06a72b26-009c-43a8-8b9d-1a75096a9ec6)
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

   ![Example](https://github.com/user-attachments/assets/739fe785-5a53-44bf-9a42-d6ab5bec4441)
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
  
   ![Example](https://github.com/user-attachments/assets/6cd1c42d-768e-41bb-ad60-bdcf414493fb)
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

   ![Example](https://github.com/user-attachments/assets/c6f06fdb-9216-48c1-a155-2b7bb86a41c0)
   ```lua
   drawRectangle(x, y, w, h, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'bottom', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
   ```
</details>





