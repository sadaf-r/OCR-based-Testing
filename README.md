This project implements OCR (Optical Character Recognition) based automation to interact with non-inspectable UI elements that are hidden inside a closed Shadow DOM, where traditional locators (XPath, CSS selectors) cannot access elements.

Using Python’s pytesseract library with image processing techniques, the automation captures live screenshots of the application under test, extracts the text, identifies element coordinates, and performs click/input actions directly based on the OCR output.

🔹 Key Highlights
Bypasses locator limitations for elements in closed Shadow DOM or canvas-based UI.

Uses pytesseract with image pre-processing for accurate text detection.

Captures live application screenshots to locate elements dynamically.

Enables text-based automation for dropdowns, buttons, or other non-inspectable components.

Improves automation coverage for complex, graphics-heavy, or custom-rendered UI elements.

🛠️ Tech Stack

Python 3.x
pytesseract (OCR engine)
pyautogui
Robot Framework's SeleniumLibrary (For browser interaction)
PIL (Pillow) (Image handling)

