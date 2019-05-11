class Tldr < Formula
  desc "fast and interactive tldr client written with go"
  homepage "https://github.com/isacikgoz/tldr"
  url "https://github.com/isacikgoz/tldr/releases/download/v0.6.1/tldr_0.6.1_darwin_amd64.tar.gz"
  version "0.6.1"
  sha256 "71ebce6d81a4c009868af0c3a9cc710b4dcce6184593072ff4c31ae955001404"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/isacikgoz/tldr/releases/download/v0.6.1/tldr_0.6.1_linux_amd64.tar.gz"
    sha256 "2c3652877f9792956e7d4d3e6d85305e347326b15abcae68c96a7e6e195977b6"
  end

  def install
    bin.install "tldr"
  end

  test do
    assert_match "tldr version 0.6.1", shell_output("#{bin}/tldr --version", 2)
  end
end
