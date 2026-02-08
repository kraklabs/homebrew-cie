# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.9"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.9/cie_v0.7.9_darwin_arm64.tar.gz"
      sha256 "85eda602545b85470b3bdb0825f468803fd2437f162a0afe5fee7192803d71ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.9/cie_v0.7.9_linux_amd64.tar.gz"
      sha256 "8f4e4553be1e09e30255f10b5afbeddedc4a49d5374eff2329baeaf8f1ed715c"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.9/cie_v0.7.9_linux_arm64.tar.gz"
      sha256 "b0209bfcea8e54017f8a251fb7710e564c95737bd14761c17b80146682f0ac41"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
