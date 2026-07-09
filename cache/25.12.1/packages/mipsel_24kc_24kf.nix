# 25.12.1 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-9ep0Umvbd+iGRgHj+KiJm/rPdwIacd0bxLPWt3Dw8E4=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-Tn2Y45lY3AoB1r5zRXvKHenltgZ8OA6/A92miplvR6w=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-56e96ZQXM6YRWvqjuIS8Wzx9icLA7bnaiZrQEs266Cg=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-mQW+V1ePib2QN73UQJQEZ4pWZO4Py7Z47HlxhmUr30Y=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-KdXTd0pDsh/OFbbha5eKZzeKpBbYUKjgOPCtLXjuH+A=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-5XccN58Shcg5VF6WOHaLoV569sCeL7bCrIEbSVLJK4M=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
