class Terms < Formula
  desc "Terminal toolkit: ls, search, json, pick, jump, history, git"
  homepage "https://github.com/VachaganGrigoryan/Terms"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.0/terms-aarch64-apple-darwin.tar.gz"
      sha256 "8c798b0d51d228425deaa7c2f576d2b8d1f7fed72fbc023d8092ea0ff13034e1"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.0/terms-x86_64-apple-darwin.tar.gz"
      sha256 "b7c1eaff84bf96043768d006d41208c8f8a8a32090e30ffcc089a6bcaf99405f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.0/terms-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cf214bf4f0a05cdba7c2d2d57eb67312735aebba3a4d55e99d8682336096939"
    end
    on_intel do
      url "https://github.com/VachaganGrigoryan/Terms/releases/download/v0.1.0/terms-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d324768d1d0afe4731b898b347d845ed788e0e5d79c07ed5483d700065fa9b39"
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
