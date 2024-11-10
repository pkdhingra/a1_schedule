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

          
            # Check if the .webp file already exists
            if os.path.exists(output_file_path):
                print(f"{output_file_path} already exists. Skipping conversion for {filename}.")
                continue
            # Execute cwebp command to convert the image
            try:
                subprocess.run(['cwebp', file_path, '-o', output_file_path], check=True)
                print(f"Converted {filename} to WebP format.")
            except subprocess.CalledProcessError as e:
                print(f"Failed to convert {filename} to WebP. Error: {e}")
                
                
def convert_images_to_webp_recursive(root_folder):
    # Supported image formats for conversion
    supported_formats = ('.jpg', '.jpeg', '.png', '.bmp', '.tiff', '.gif')

    # Walk through each directory and subdirectory
    for dirpath, _, filenames in os.walk(root_folder):
        for filename in filenames:
            # Check if the file is an image of a supported format
            if filename.lower().endswith(supported_formats):
                # Get the full path of the image file
                file_path = os.path.join(dirpath, filename)
                # Construct the output file path with a .webp extension in the same folder
                output_file_path = os.path.join(dirpath, f"{os.path.splitext(filename)[0]}.webp")
                
                # Check if the .webp file already exists
                if os.path.exists(output_file_path):
                    print(f"{output_file_path} already exists. Skipping conversion for {filename}.")
                    continue

                # Execute cwebp command to convert the image
                try:
                    subprocess.run(['cwebp', file_path, '-o', output_file_path], check=True)
                    print(f"Converted {file_path} to WebP format.")
                except subprocess.CalledProcessError as e:
                    print(f"Failed to convert {file_path} to WebP. Error: {e}")

if __name__ == "__main__":
    # Specify the root folder path containing images and subfolders
    #root_folder = input("Enter the path to the root folder containing images: ")
    root_folder = r'c:\kreatewebsite\festival\thanks-giving'
    convert_images_to_webp_recursive(root_folder)
    

 

    
    '''
    root_folder = r'c:\kreatewebsite\festival'
    convert_images_to_webp_recursive(root_folder)
    
    root_folder = r'd:\create-website\logo-images'
    convert_images_to_webp_recursive(root_folder)
    root_folder = r'd:\create-website\social'
    convert_images_to_webp_recursive(root_folder)
    root_folder = r'd:\temp-images'
    convert_images_to_webp_recursive(root_folder)
    root_folder = r'd:\kreatewebsite\festival\rangoli'
    convert_images_to_webp_recursive(root_folder)
    '''

    '''
    if __name__ == "__main__":
        # Specify the folder path containing the images
        #folder_path = input("Enter the path to the folder containing the images: ")
        folder_path = r'd:\temp\kreatewebsite\festivals\diwali'
        folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos500'
        folder_path = r'D:\kreatewebsite\festival\diwali\photos1000'
        folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos175'
        folder_path = r'D:\kreatewebsite\festival\diwali'
        
        
        folder_path = r'D:\kreatewebsite\festival\rangoli'
        convert_images_to_webp(folder_path)
        
        folder_path = r'D:\kreatewebsite\festival\small'
        convert_images_to_webp(folder_path)

    '''    
    '''
    
    folder_path = r'D:\kreatewebsite\festival\bhai-dooj'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\banner'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\cards'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali-banner'
    convert_images_to_webp(folder_path)
    
    '''

    '''
    folder_path = r'D:\kreatewebsite\festival\diwali\posters'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali\wallpapers'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali\temples'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali\temporary-shops'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali\streetshops'
    convert_images_to_webp(folder_path)


    folder_path = r'D:\kreatewebsite\festival\diwali\diwali-workshop'
    convert_images_to_webp(folder_path)
    
    
    folder_path = r'D:\kreatewebsite\festival\diwali\fireworkshop'
    convert_images_to_webp(folder_path)
    
    folder_path = r'D:\kreatewebsite\festival\diwali\decorations'
    convert_images_to_webp(folder_path)

    folder_path = r'D:\kreatewebsite\festival\diwali\photos1200'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos1000'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos900'
    convert_images_to_webp(folder_path)
  
    folder_path = r'D:\kreatewebsite\festival\diwali\photos800'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos700'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos600'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos500'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos400'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos300'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos200'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos100'
    convert_images_to_webp(folder_path) 
    
    #convert_images_to_webp(folder_path)
    '''
    '''
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos1200'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos1100'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos1000'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos900'
    convert_images_to_webp(folder_path)
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos800'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos700'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos600'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos500'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos400'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos300'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos200'
    convert_images_to_webp(folder_path)
    folder_path = r'D:\kreatewebsite\festival\diwali\photos-source\photos100'
    convert_images_to_webp(folder_path) 
    '''
