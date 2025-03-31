import os
from PIL import Image

def rgb_to_hex(rgb):
    return '#{:02x}{:02x}{:02x}'.format(*rgb)

def find_unique_colors(image_path, exclude_colors_rgb):
    with Image.open(image_path) as image:
        image = image.convert('RGB')
        pixels = image.getdata()

    unique_colors = set()

    for pixel in pixels:
        if pixel not in exclude_colors_rgb:
            unique_colors.add(rgb_to_hex(pixel))

    return unique_colors

def get_exclude_colors_rgb():
    #exclude_colors_hex = input("Enter hex colors to exclude, separated by commas (e.g., 959595,808080): ").split(',')
    exclude_colors_hex = ('000000',)
    exclude_colors_rgb = [tuple(int(color.strip().strip('#')[i:i+2], 16) for i in (0, 2, 4)) for color in exclude_colors_hex]
    return exclude_colors_hex, exclude_colors_rgb

def process_folder(folder_path, exclude_colors_hex, exclude_colors_rgb, output_file):
    with open(output_file, 'w') as file:
        for filename in os.listdir(folder_path):
            if filename.lower().endswith(('.png', '.jpg', '.jpeg')):
                image_path = os.path.join(folder_path, filename)
                unique_colors = find_unique_colors(image_path, exclude_colors_rgb)
                if unique_colors:
                    color_list = ', '.join(unique_colors)
                    #output = f"The image {filename} contains colors different from {', '.join(['#' + color.strip() for color in exclude_colors_hex])}: {color_list}\n"
                    #output = f"{filename}\tcontains:\t{color_list}\n"
                    output = f"{filename}\n"
                    print(output, end='')
                    file.write(output)

folder_path = 'processed'  # Replace with your folder path
output_file = 'proccessed_textures.txt'  # Replace with your output file path
exclude_colors_hex, exclude_colors_rgb = get_exclude_colors_rgb()
process_folder(folder_path, exclude_colors_hex, exclude_colors_rgb, output_file)




