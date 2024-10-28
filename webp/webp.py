import os
import subprocess

def convert_images_to_webp(folder_path):
    # Check if the folder exists
    if not os.path.exists(folder_path):
        print(f"The folder {folder_path} does not exist.")
        return

    # Supported image formats for conversion
    supported_formats = ('.jpg', '.jpeg', '.png', '.bmp', '.tiff', '.gif')

    # Loop through each file in the folder
    for filename in os.listdir(folder_path):
        # Check if the file is an image of a supported format
        if filename.lower().endswith(supported_formats):
            # Get the full path of the file
            file_path = os.path.join(folder_path, filename)
            # Construct the output file path with a .webp extension
            output_file_path = os.path.join(folder_path, f"{os.path.splitext(filename)[0]}.webp")

            # Execute cwebp command to convert the image
            try:
                subprocess.run(['cwebp', file_path, '-o', output_file_path], check=True)
                print(f"Converted {filename} to WebP format.")
            except subprocess.CalledProcessError as e:
                print(f"Failed to convert {filename} to WebP. Error: {e}")

if __name__ == "__main__":
    # Specify the folder path containing the images
    #folder_path = input("Enter the path to the folder containing the images: ")
    folder_path = r'd:\temp\kreatewebsite\festivals\diwali'
    convert_images_to_webp(folder_path)
