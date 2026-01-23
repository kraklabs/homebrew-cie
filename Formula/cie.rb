# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2/cie_v0.4.2_darwin_arm64.tar.gz"
      sha256 "853b95f9718421accc8a96c3c2965459c109246bf9d8de1ce846031ece232f9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2/cie_v0.4.2_linux_amd64.tar.gz"
      sha256 "7337dd20323fea835311bbdb48a65b3d0de8a7a9b8ff709893dbe3ca97f19839"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.2/cie_v0.4.2_linux_arm64.tar.gz"
      sha256 "077cd45078805f175e46564835c9b391a1d90a3fcb04d465695fe83bf06427fb"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
