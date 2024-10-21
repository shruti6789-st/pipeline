Operating system: Amazon Linux
AMI: Amazon Linux 2023 AMI

After launching the instance, proceed further only after the Instance state is 'Running' and the Status check is '2/2 checks passed'. It may take 3-4 minutes.

1) Switch to the root user
sudo su -

## Update the machine (optional)
yum update -y

2) Install the server (Apache httpd) and git
yum install -y httpd git

3) Clone the GitHub Repository containing your website code
git clone [Link to the repository]

4) Navigate to the folder where your code files are stored by using 'ls' and 'cd' commands

5) Move all the files to the HTML folder (/var/www/html/)
mv * /var/www/html/

## Navigate to the HTML folder to check if the files are moved (optional)
cd /var/www/html/ && ls

6) Enable the Apache server
systemctl enable httpd

7) Start the Apache server
systemctl start httpd

## Access your website through the Public IPv4 address of your instance
