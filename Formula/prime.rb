class Prime < Formula
  desc "Worker and local dashboard for the Prime network"
  homepage "https://prime.notallow.cc/"
  url "https://github.com/VachaganGrigoryan/prime/releases/download/v0.2.0/prime-0.2.0-source.tar.gz"
  version "0.2.0"
  sha256 "726d892e31b423b1884e55eb911a61dac4abe2bdf57c534c6440b1372fffecd4"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on :macos

  deny_network_access!

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args(features: "volunteer-worker"),
           "--no-default-features", "--bin", "prime"
    pkgshare.install "LICENSE"
  end

  test do
    assert_equal "prime 0.2.0", shell_output("#{bin}/prime --version").chomp
    assert_match "Usage:", shell_output("#{bin}/prime worker --help")
    assert_match "Usage:", shell_output("#{bin}/prime ui --help")
  end
end
