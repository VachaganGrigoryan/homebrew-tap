class Terms < Formula
  desc "Terminal toolkit: ls, search, json, pick, jump, history, git"
  homepage "https://github.com/VachaganGrigoryan/Terms"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.2.0/terms-aarch64-apple-darwin.tar.gz"
      sha256 "d4e517608193cffb08fbe4811919e2210965e566cf9e2fe11d78d3dd5e90096b"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.2.0/terms-x86_64-apple-darwin.tar.gz"
      sha256 "35b8c2d72ed5e4f5e701e12fdc0dde76789c2b54454a77996ed96ddbc8c43e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.2.0/terms-aarch64-unknown-linux-musl.tar.gz"
      sha256 "812164c3c5a9e947554466f4537e674fd4e3060c683e3803ca82c87933343993"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.2.0/terms-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d25919b6a969e95d3b54b2b2c2b1cb6612443b5f452f162ceb604f988bfea8e9"
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
