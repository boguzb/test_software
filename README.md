# test_software

`test-software` is a small, dependency-free terminal task manager for macOS.
It stores tasks locally in `~/Library/Application Support/test-software/tasks.json`.

## Install on macOS

Clone the repository and run the installer:

```bash
git clone https://github.com/boguzb/test_software.git
cd test_software
./install.sh
```

The installer places the command in `~/.local/bin` and does not require
administrator access. If prompted, add that directory to your `PATH`:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## Usage

```bash
test-software add Buy milk
test-software list
test-software done 1
test-software list --all
test-software remove 1
```

Run `test-software --help` to view the available commands.

## Uninstall

```bash
rm ~/.local/bin/test-software
rm -rf ~/Library/Application\ Support/test-software
```
