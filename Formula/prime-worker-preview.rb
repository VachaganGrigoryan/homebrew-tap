class PrimeWorkerPreview < Formula
  desc "Volunteer worker for the Test Math prime archive"
  homepage "https://test-math.notallow.cc/"
  url "https://github.com/VachaganGrigoryan/prime-finder/releases/download/worker-preview-v0.1.0-r2/prime-worker-0.1.0-source.tar.gz"
  version "0.1.0"
  revision 2
  sha256 "e385aeeee957432831a98a11b05c86811bf6674bfcfda35ced31e2379209f7f3"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on :macos
  conflicts_with "vachagangrigoryan/tap/prime-worker", because: "both install the prime-worker executable"

  deny_network_access!

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args(features: "volunteer-worker"),
           "--no-default-features", "--bin", "prime-worker"
    pkgshare.install "LICENSE"
  end

  test do
    assert_match "https://test-math-workers.notallow.cc/join", shell_output("#{bin}/prime-worker join")
  end
end
