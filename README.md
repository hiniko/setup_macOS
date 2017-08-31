# Setup macOS

An Ansible bootstrap and playbook script to set up a macOS profile for Sherman
to use and never have to setup a mac from scratch again. Hopefully

## Usage 

Clone this repo:

```
git clone git@github.com:hiniko/setup_macOS.git
```

Run the setup script

```
./setup.sh
```

Sit back and relax as your system comes together

## Customisation

There are two places you may want to edit to customise the settings that are put in place. Also there is a call to a remote git repo that contains dotfiles. My repo has a script that does the linking of the configuration files to their proper place. If you would rather not do this, remove the tasks from the Ansible Playbook. My dotfiles repo and the `link.sh` script can be found (here)[https://github.com/hiniko/dotfiles]

The first is in `files/configure_macOS_settings.sh` This contains all of the `defaults` commands that are used to configure macOS.

The second is in the Ansible playbook `setup_macOS.playbook.yml` where you will find a list of cli tools and applications that will be installed via `homebrew`

## Feedback

If you have any issues or suggestions please contact me via email

## License

MIT

Copyright 2017 Sherman Rose

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



