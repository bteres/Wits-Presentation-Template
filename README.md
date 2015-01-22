# Wits EIE Presentation Template

## Getting Started
Open terminal and navigate to a directory for your presentation. Type `git clone https://github.com/bteres/Wits-Presentation-Template.git` and then `cd Wits-Presentation-Template`.

Now open `main.tex` and find the `\title` line. Change the title of the presentation as well as the author, date and any logos that you may need. The logos are currently in the root directory but you can place them wherever you like. Note that the logos being used are declared using `pgfdeclareimage` and used with `pgfuseimage` for consistency.

Next, open the `makefile` (this assumes you are on Mac or Linux or using Windows with Cygwin/Powershell) and chenge the `OUTFILE = GiveMeAName` to `OUTFILE = <your_file_name_here>`. This determines what the output pdf file will be named as.

Lastly, in terminal, type `make` to create the pdf file, `make clean` to clear log files and `make superclean` to clear log files and output.

Last few points:

1. Tikz figures should go in primitives but that is your choice.
2. The rest is basic Beamer. Play and figure it out!

That's it for now. I hope this helps and enjoy.

##Contributing

Should you wish to make changes to the template, let me know and I will give you privileges to push to this repository
