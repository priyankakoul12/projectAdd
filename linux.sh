#Ask for the directory name
echo "Enter the directory name : "
read dir_name

#Create a directory with the provided name
mkdir $dir_name

#Go to that directory
cd $dir_name

#Ask for the HTML file name
#Create a file with the provided name
echo "Enter the HTML file name : "
read file_name

#Ask for the content
echo "Enter the content for the HTML file : "
read html_content

#Write content into the HTML file
echo $html_content > $file_name

#Open file in browser
start chrome $file_name 
start $file_name #for the default browser

#Push the new file to the git repository
#
cd ..
#git init
git add .
git commit -m "first commit"
#git remote add origin "https://github.com/priyankakoul12/projectAdd.git"
#git remote set-url origin "https://github.com/priyankakoul12/projectAdd.git"
#git remote set-url origin "https://github.com/priyankakoul12/LinuxTask.git"
#git remote set-url origin "https://github.com/priyankakoul12/intern.git"
#git push -f origin master
git push origin master
