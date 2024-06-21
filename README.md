# midgard

> A general setup of my HomeLab

This repository serves as setup and documentation of my personal VPS setup.

## How to run

The Ansible playbook was run with Python 3.12.3 and the [ansible-10.0.1](https://pypi.org/project/ansible/) community package. Install Python in your local machine, clone this repository and change directory to `./ansible`.

Inspect the directories and look for `[...].example[...]` files because they have environment variables that need values for the playbook to run.

Create a Python virtual env. and install `ansible`:

```bash
pip install ansible
```

Then, (assuming you are root or you can become root without password) run the playbook once with:

```bash
ansible-playbook setup.yml
```

Then, check `setup.yml`, uncomment roles and run as many times as indicated in the comments.

<hr>

![](imgs/debian.gif)
![](imgs/jellyfin.gif)