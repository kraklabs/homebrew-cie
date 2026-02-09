# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.14"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.14/cie_v0.7.14_darwin_arm64.tar.gz"
      sha256 "acb133cefa62d44aabe06eb063595be4861d79751d7790e8ceb0b51f5583388c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.14/cie_v0.7.14_linux_amd64.tar.gz"
      sha256 "50df00b0427dd128d3e08b5402fa4778d2a275c51d2427e2a26271850c4602db"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.14/cie_v0.7.14_linux_arm64.tar.gz"
      sha256 "27b8fdfa4ca6632960983442d954255ab2d73fad84ada3e27fe5e56ae0205813"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
