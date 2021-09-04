class Twofa < Formula
  desc "TouchID-aware 2-factor authentication for macOS"
  homepage "https://github.com/sqreen/twofa"
  url "https://dl.bintray.com/sqreen/bottles-sqreen/twofa-0.0.1.tar.gz"
  sha256 "310a399d1dbb5e047edd72f0fb5e1430d0f4a6cf6c6746ecd5df7c90c369ccab"

  bottle do
    root_url "https://dl.bintray.com/sqreen/bottles-sqreen"
    sha256 cellar: :any_skip_relocation, mojave: "402cd887480da35c0f54558517ff263178688fede04bed14f0eee08a2ea980da"
  end

  def install
    bin.install ".build/x86_64-apple-macosx10.10/release/TwoFa"
  end

  test do
    system "#{bin}/TwoFa", "version"
  end
end
