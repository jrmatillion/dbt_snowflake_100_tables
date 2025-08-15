import os

# Path to your folder
folder_path = r"D:\Study\DBT\Projects\ClouldProject\models\marts"
temp=1
# Loop through all files in folder (and subfolders if needed)
for root, dirs, files in os.walk(folder_path):
    for filename in files:
        if filename.endswith(".sql"):  # change extension if needed
            file_path = os.path.join(root, filename)
            
            # Read file
            with open(file_path, "r", encoding="utf-8") as f:
                content = f.read()
            
            # Replace `{` with something else (e.g., `{{`)
            te= str(temp)+"') }"
            te1=str(temp)+"') }}"
            new_content = content.replace("{ ref", "{{ref").replace(te,te1)
            
            # Write back to file
            with open(file_path, "w", encoding="utf-8") as f:
                f.write(new_content)
            
            print(f"Updated: {file_path}")
            temp=temp+1

print("✅ Replacement complete.")