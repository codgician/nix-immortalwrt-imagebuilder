# 25.12.0-rc2 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-KHFVyds7lZm5yjqruLDuJF/L0/dpIdTg6GzHaYVW4oQ=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-5I2dYuXRSTYm0/+ULpnGLCdrQcZahE1jlP+9r13F7Ls=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-fLNF0ntmIaFYtP3Uc3y9cZ45OZq01IhnSkbkzl2WxeA=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-6m6R6A0myiJOwiYzu6QQ7VPm6ph/RHIzuiRIdHg6vr4=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-awRhDCRd54ffr/FnH7sNqBAyBKY2UQKXJON4vkuKaXg=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-0HDGbp1HuukgaYS5Sfk69hARCGvo4SnOeRupV35z3js=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
