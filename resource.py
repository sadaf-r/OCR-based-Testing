import os
import pyautogui
import pytesseract
from PIL import Image


def extract_text_from_image(image_path):
    if not os.path.exists(image_path):
        raise FileNotFoundError(f"Image file not found: {image_path}")
    img = Image.open(image_path)
    data = pytesseract.image_to_string(img)
    return data


def get_screenshot_path():
    if os.name == 'nt':  # Windows
        source_folder = os.path.join(os.environ['USERPROFILE'], 'Downloads')
    else:  # macOS / Linux
        source_folder = os.path.join(os.environ['HOME'], 'Downloads')
    return source_folder


def click_at_coordinate(image_path, target_text):

    img = Image.open(image_path)
    data = pytesseract.image_to_data(img, output_type=pytesseract.Output.DICT)

    for i, word in enumerate(data['text']):
        if word.strip() == target_text:
            x = data["left"][i]
            y = data["top"][i]
            w = data["width"][i]
            h = data["height"][i]

            click_x = x + w // 2
            click_y = y + h // 2
            pyautogui.moveTo(click_x, click_y)
            pyautogui.click()


