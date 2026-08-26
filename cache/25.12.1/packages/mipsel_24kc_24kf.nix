# 25.12.1 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-QwA0eITZWQd8i5XVQ1dM3Ehv1vYneNB1mf9fQs9p+50=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-qXdVHpKxdilyq2R7Bd3jqJapzfi7/8rTgPP+BigL/PQ=";
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
      hash = "sha256-YTd+tfdc+6onrJg8wySsIzI6OAcsYUAcMWOTag9Lsy4=";
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
      hash = "sha256-cxqV4qmjmlJu0APRI1UKKSaE8tesMOcpQc66xWcZuDc=";
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
      hash = "sha256-I1os8mH7+oSwtMRnS7sCze2lMqAdCd5BmSMkmsbKzUo=";
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
      hash = "sha256-dLPaGqmLP8AeX65tKua8sunT82l+8eWM4RKOWbIiIZg=";
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
