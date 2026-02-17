class Filemonitor < Formula
  desc "ASCOM Alpaca SafetyMonitor for astrophotography"
  homepage "https://github.com/ivonnyssen/rusty_photon"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivonnyssen/rusty_photon/releases/download/v0.1.0/filemonitor-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f88f2b01bd3583d1da94d7cc6761404ac025c588539d90db34f1856c612e7f6a"
    else
      url "https://github.com/ivonnyssen/rusty_photon/releases/download/v0.1.0/filemonitor-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b094afd98d07bf4d596b3f88596dea4c1f42321f5d59b8a6f2e470f86e4c4320"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ivonnyssen/rusty_photon/releases/download/v0.1.0/filemonitor-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8edf523480d24cdd25801852cd57a6cb7045d12235949126690dfe2638fa318"
    else
      url "https://github.com/ivonnyssen/rusty_photon/releases/download/v0.1.0/filemonitor-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6498416f9b04501b249cb254d8cfeb2064cd4484b52d6487294acab4582fb37"
    end
  end

  def install
    bin.install "filemonitor"
  end

  test do
    assert_match "filemonitor", shell_output("#{bin}/filemonitor --help")
  end
end
