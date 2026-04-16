# 25.12.0-rc2 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-cjR6IWH2ygrjd4ptRLA8NKCU/R5l9HZCCgAy3eWNUhY=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-4w+QRVfWn6Zt00vHXbalsuv2A56ldCop5IjuACEr9fc=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-jP2xO+Nye5fvZMpZL6ysIzZNr6S9O0ZEHbkm6LqkV0w=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-w0k4aUz6IqOnIIQQt8IWzARgI/BGSbTEGXM8rcjQ56Q=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-V51YOMlUxDeOXBHEcV5MpRt/X+45eKbhP1qD3BFZnFQ=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-4fmZNFCdHkchjN7M48tebmsQlQuEX/VfCkf4qA+PbVg=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
