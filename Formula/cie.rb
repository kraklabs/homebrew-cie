# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.7/cie_v0.7.7_darwin_arm64.tar.gz"
      sha256 "b6ccc32dac9d9a54e9783b93b5dcc572132b42995a289527a9c68362d58a573d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.7/cie_v0.7.7_linux_amd64.tar.gz"
      sha256 "91a10c876396e2722febd4337c8da8a616da3a10eca2cdd74adb2f98e0804611"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.7/cie_v0.7.7_linux_arm64.tar.gz"
      sha256 "0555d44ee3f3cc41833a279f796d54d392e134c30b29061d2d2116f0cddc6842"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
