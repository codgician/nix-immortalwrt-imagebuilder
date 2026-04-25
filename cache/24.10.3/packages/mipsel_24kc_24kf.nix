# 24.10.3 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-duE/kt+GZaK/B6gv2L2HUU3z2PvXOjtblzzKOtTlfQg=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-QlMs1l9mrNN6bKh56uUUQePNJ4PDhXxJxyofODtIfAY=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-t95S3l2rKyq47LqPsX7CbIE9nJdRQ0yjVdcMUlYzZ8Y=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-UG0/KLar/PKGojQMFB1lUe+TmYOzGSNoEKb4kn/xekY=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-6zfJIkWpa9aGVdRJ6+zHBg3KgCTNADyEFEf4tzLfyOg=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-gwHc3KEBxAh0ENtBlmLEpWyfg+R5Es2b52Hf1NZic6g=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
