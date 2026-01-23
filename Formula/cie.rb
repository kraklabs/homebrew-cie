# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.2.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2.1/cie_v0.4.2.1_darwin_arm64.tar.gz"
      sha256 "c92e4aa2bf987a55d5112899c307c9f2829e79b5a3f2d7089a66ae2305afd909"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2.1/cie_v0.4.2.1_linux_amd64.tar.gz"
      sha256 "dc1c4b3400431a163470067ec69a06da849c027983e7e196539c0fa9350de2cb"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2.1/cie_v0.4.2.1_linux_arm64.tar.gz"
      sha256 "4c8460b58bfa347ddcaf3734fb340d7a8653d45dcc1b1ff36656bf6a0911beb6"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
