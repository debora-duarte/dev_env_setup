#Create key
ssh-keygen -t rsa -b 4096 -C "debora.duarteas@gmail.com"

#Copy it to github, then:
ssh -T git@github.com
