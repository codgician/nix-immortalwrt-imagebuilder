# 25.12.2 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-fD+45xyFbz7SFZtSBIFYXAYHBBrgHP1sVFCEF24iaCg=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-3DuV2VJWd4Y0BPm77PD5Z/UU23KKngrQz/z4KW/Jz1I=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-QpVMtMzd1ihF/OveMP1M1QlVC9Y/tNunKGssSdcBoA8=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-4GEhrLMTHs45ZR4JWwisoiU/XSMSPTxAUBUsfAf5f0g=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-zNqaUCumqxIEzRdqv7kicJiOlmBUiLPJyHAmbbPaNqc=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-5Nj2NHXBwvIQgcBJNcMinKIj17ILl9tYZ8+IPbvidkM=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
