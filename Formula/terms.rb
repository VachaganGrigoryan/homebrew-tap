class Terms < Formula
  desc "Terminal toolkit: ls, search, json, pick, jump, history, git"
  homepage "https://github.com/VachaganGrigoryan/Terms"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.1/terms-aarch64-apple-darwin.tar.gz"
      sha256 "620944524fd8da770008ebefd53e0cb107cd1b366da0fb725cc8b3d5b8b99c39"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.1/terms-x86_64-apple-darwin.tar.gz"
      sha256 "fe71a0de4ade24c0cb95d710f7c886b8a4d4ef758d328bf4fbf7ad60aac5ef92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.1/terms-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bc02f40e0190f19fa6e135fba4a50b0e22e97b276baea786c00d86d2228b750"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.1/terms-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5dcc6993efb11110c2ad2bd0f191371acc758a4f735e6c26ec9d2b7c095aa75d"
    end
  end

  def install
    bin.install "terms"
  end

  def caveats
    <<~EOS
      Optional shell integration (short names tl, ts, tg, tj ...): add this line to ~/.zshrc or ~/.bashrc
        eval "$(terms init zsh)"   # or: terms init bash
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terms --version")
  end
end
