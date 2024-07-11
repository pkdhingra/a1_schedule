import os

def copy_txt_files(source_dir):
  """
  Copies all .txt files within a directory and its subdirectories,
  adding the suffix ".txt2" to the copied files.

  Args:
    source_dir: The path to the directory to start searching from.
  """
  for root, dirs, files in os.walk(source_dir):
    for filename in files:
      if filename.endswith(".desc"):
        source_path = os.path.join(root, filename)
        dest_filename, _ = os.path.splitext(filename)  # Extract filename without extension
        dest_path = os.path.join(root, dest_filename + ".desc2")

        # Check if destination file already exists to avoid overwriting
        if not os.path.exists(dest_path):
          with open(source_path, 'r') as source_file, open(dest_path, 'w') as dest_file:
            for line in source_file:
              dest_file.write(line)
          print(f"Copied '{source_path}' to '{dest_path}'")
        else:
          print(f"Skipping '{source_path}' (destination already exists: '{dest_path}')")

# Example usage
#source_dir = "/path/to/your/folder"  # Replace with your actual directory path
source_dir = "c:\\f\\a3_input\\dataknobs.com\\"
copy_txt_files(source_dir)