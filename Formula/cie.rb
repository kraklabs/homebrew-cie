# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.0/cie_v0.4.0_darwin_arm64.tar.gz"
      sha256 "9f5e97b7673041979d97ce3e2c155e31602d0158a9cd27ac782ceca74fed13a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.0/cie_v0.4.0_linux_amd64.tar.gz"
      sha256 "4e9952a3457caa9d72ab26ed245b74d6d1bcf4edff5e97e8d06be6d3ef5c47e2"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.0/cie_v0.4.0_linux_arm64.tar.gz"
      sha256 "fa79bc46f4bddbb1ead062f027aedf818955266ad54088b1329084463404f5bc"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
