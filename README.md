# Outco student homework

Hello students, welcome to the homework repo! From this 
repository, you all will have access to the homework 
problems that will be distributed throughout the course. 
There's also built-in tests that you can use to run on your 
code. 

### Setup

As with any repo, there's some setup first!

* Fork the repository over from Outco to your personal
account

* Clone it down to your computer through the following 
terminal command
```
git clone https://github.com/YOURUSERNAME/homework
```

* In order to merge in the latest assignments you'll need
to create a remote to the Outco homework repo. Do this with: 
```
git remote add upstream https://github.com/OutcoSF/homework
```

* Now for some autmation setup! We'll be using Node to
automate the tests. (For more on Node, please see
[here](https://nodejs.org/en/)). In order to install Node
on your machine, use one of the following commands (sudo as 
necessary): 
```
(Mac)
brew install node 
(Linux)
apt-get install nodejs 
```

* To install the testing frameworks, run the following 
command: 
```
npm install
```

* RUBY USERS: In case you have never installed the ruby 
unit/test gem, or if you're unsure as to whether you have 
the gem installed, run the following command to ensure that 
you have the unit/test gem: 
```
sudo gem install test-unit
```

### Coding and Testing

We have tests set up for your homework assignments. To run 
them, simply run `gulp` in the root directory of the 
homework repository. If you do not have gulp installed, 
do so globally with: 

```
npm install -g gulp
```

Navigate into the current day's homework folder and begin coding 
in your respective file (Ruby or JavaScript). Whenever you 
save your work, Node will run the tests written in the 
bottom of each file, and display the results in your 
terminal. 

To hard-run tests individually (or if you notice hangups 
while using the Gulp watcher), you can run them in your 
terminal by running `gulp` and the specific homework 
assignment. For example, if you wanted to run the Ruby tests 
for the home work assignment on week 1, day 3, you would run: 
```
gulp week1day3RB
```

For JavaScript, the same homework assignment would be: 
``` 
gulp week1day3JS
```

### Rebasing

All of the problems for the entire course are already in 
this repo. There will be no need to rebase in additional 
problems. For a read on what rebase is, and why to use it 
instead of merge, please check out this [article](http://vokoshyv.com/git-workflow-with-rebase/). 

* Occasionally, bugs pop up in the homework files, and upon
fixing them, we will need you to rebase off of the OutcoSF 
organization. To do so, run the following command: 
``` 
git pull --rebase upstream master
```

* In case you didn't add the upstream to the Outco 
organization repository, do so with the following command: 
```
git remote add upstream https://github.com/OutcoSF/homework
```

### Comments/Questions?

See below: 

* If you have any questions regarding the material covered 
in the homework, please post your question to the Google 
Form. 

* If there is an issue with the repository, or if you 
have a comment/question regarding setup, or if you have 
some ideas for additional tests to run, please contact Ron 
by email at <ron@outco.co>. 
