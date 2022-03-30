# Sensible yt-dlp Archive Scripts

I often get asked what yt-dlp scripts I use for my archives. I've not been satisfied with other scripts I've found online, so I decided to make this repo to share scripts that are the best *in my opinion*.

Let me know if something doesn't work correctly or you run into any issues :).

Also check out the [official README](https://github.com/yt-dlp/yt-dlp) if you have any questions about yt-dlp itself.


## yt-dlp installation

These are the installation methods I recommend, **however you can install yt-dlp any way you want**. After installation, you should be able to run yt-dlp by just typing `yt-dlp` into your terminal.

These commands also install ffmpeg and aria2, which yt-dlp uses for merging files and downloading faster.

For more information about installation, please read the [official README](https://github.com/yt-dlp/yt-dlp#installation).

### Windows

In PowerShell (run as administrator):

```
# Install Chocolatey for package management
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y python3
choco install -y ffmpeg
choco install -y aria2

# Run a new PowerShell window here

python -m pip install -U yt-dlp
# If module pip is not found, run this first: 
# python -m ensurepip
```

### Mac OS

```
# install Homebrew for package management
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install python3
brew install ffmpeg
brew install aria2

python3 -m pip install -U yt-dlp
# If module pip is not found, run this first: 
# python3 -m ensurepip
```

### Linux (debian)

```
sudo apt-get install -y python3 ffmpeg aria2
python3 -m pip install -U yt-dlp
# If module pip is not found, run this first: 
# python3 -m ensurepip
```


## Updating yt-dlp

Updating yt-dlp is as simple as running `python3 -m pip install -U yt-dlp` (Linux/MacOS) or `python -m pip install -U yt-dlp` (Windows). You can also install the latest master (development version) by running `python3 -m pip install --force-reinstall https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz`.


## Using scripts

1. Clone this repo using git, or download it as a zip from [here](https://github.com/rebane2001/sensible-yt-dlp-archive-scripts/archive/refs/heads/mane.zip).
2. Open the included yt-dlp.conf file from the scripts folder for your OS with any text editor, read through it and make changes if you wish. Commented lines start with #, which you must remove for configuration options you wish to enable.
3. Open the script file you want to use with any text editor, read through it and make changes if you wish.
4. Put your urls in the the script's .txt file.
5. Run the script (`bash script_name.sh` in Linux/MacOS, double-click the bat file in Windows).
