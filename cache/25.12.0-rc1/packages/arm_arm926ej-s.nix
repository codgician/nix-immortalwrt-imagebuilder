# 25.12.0-rc1 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-b8pJtBH0nbQHn4k9Jjiukpp/KiOBXIBPIfUhayLsqGI=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-eEAWY4wYIoEtCD4RBau8L4Ppf6Mnvi6E32YjB9IWbho=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-rSVWghu3U8HF29tc792Q5NYN19DtQ562IFK7irtpdCE=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-zd1FR9WuAba6cf4F9BTYFeYA0kzykOeoGaSLMqR7nvE=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-B2Ovcij5IoQHKi1Ycbt7Dq47SMZbKFZ+lzHlfm9ge1w=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-9orjUPDqcKxAWTTSiPXMLpZD4BIHfpBwHCc7USBrvR8=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
