# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_darwin_arm64.tar.gz"
      sha256 "1a092332e5aed3447569e0cec511a4eacc3647f350779dd9204e10b827dcd15f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_linux_amd64.tar.gz"
      sha256 "b498834a8e3466b409b37a4e0c1f10e9a273a19e5541205836bf12b8c4127fe3"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_linux_arm64.tar.gz"
      sha256 "ba0463ffe6254365cbbcd9d7fb8dc07e584e0811465c728ee0b17bf75a661434"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
