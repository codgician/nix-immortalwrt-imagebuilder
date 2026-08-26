# 25.12.0 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-81RzZdOZLtmDrF50H0Z5M6/VpIlSClelCcBxAPLi9bU=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-Q/7te23FpUOvaKVXAlZhVX07K1eV9Jc/fSB8rdSfL3g=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-NBiMnId8hSQGDuAcLH4pbp8PXcjIqwVYBHxzlpwjiXg=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-rsUOJ5xc5ZEkVqZxy2pP6xC5Jsp4Id1e5UyijZLp0es=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-1Q4aiUF2ILRH7zLj5yguZaGCiV1kEdc7YxPQbQbLJEs=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-lJLqErhGAUw/Jd4fo7Nq1mvW5nRoI0loyj6heOy/pMI=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
