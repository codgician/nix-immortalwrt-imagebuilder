# 25.12.0 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-ZxuS8AnHLG62T2g00zKXvTGeogGqbmrNbGtn5DBINhY=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-L+CmEoX/NlQUWBSV+2u4GwwxSu3pfJupfgSDjIWioLg=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-k06VpIK5OF+9cp+NjpvBklJr7AN5bohl0MWV8dQid5U=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-nQM6coYCvL6IKpjbw1qRtENkcGb1NPdJOZEMP+4cRIQ=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-DEjAQBv4j8oiI+88da2cUr26oD6CP4gWsA4JZBkOaWs=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-XDzHDwLab5GuXrlP2oJcaImSXp7+7y4G5lZKIli3L/c=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
