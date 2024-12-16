1. Git Large File Storage (LFS)
   Git LFS is an extension for Git that allows you to manage large files more efficiently. Here’s how to set it up:

Install Git LFS:
    You can download and install Git LFS from the official website. https://git-lfs.com/

Initialize Git LFS in your repository:
    git lfs install

Track the large files: Specify which file types or specific files you want to track with LFS. For example, to track all .jar files:
    git lfs track "*.jar"

Add the .gitattributes file: This file is created automatically when you run the git lfs track command. Make sure to add it to your repository:
    git add .gitattributes

Add and commit your large files: Now you can add your large files as usual:
    git add <FileName>.<ext>
    git commit -m "Add large file"

Push to GitHub: Finally, push your changes to GitHub:
    git push origin WhiteKite