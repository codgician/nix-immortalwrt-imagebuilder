# 24.10.0 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-IF9eC5yffOZWVYHhOIJU9rPbRLdfg45PQen2n5lIe2c=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-aFBl8Z115mI1JelTnzQjP2tVmKNm9VPGwO/yp1tp2JE=";
      name = "aarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-GLgfHX8ZMi1w+rTzbtHSi4Zcz5KUEP9Ifk+t92pQKeE=";
      name = "aarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-v5G+45Gyh6djjv9rsaWQoA+14UB3QnurqEUR+U0xvAE=";
      name = "aarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-8liQVZcFI8cIajNb/t5CVNoF/thqJGFfrJQ+fZ6x3lY=";
      name = "aarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-ui4kGKAv5if5H3Gr2FM6Uqt7oXQLYqqBCMnKAe2nF+k=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
