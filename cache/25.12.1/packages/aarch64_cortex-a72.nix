# 25.12.1 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-7r6T8+ze8QCWscIJ3IUfN22DqhvYAbKxmiijKmiE3kQ=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-Dmo7bE/imrAW4QfgnCLpJeie0xySDvZolyioJD203bc=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-wHEpVV5Et0eLYh4kkfm+rwyRCVQOqfij3chpkihIZSQ=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-e9JqRVFnHurL9Mm5mfdel0ORCEqLnKaIC5fdLWjaoy4=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-64bPUDU6m/O4Vfhi36U7Q6ih0FNJ61P5otmGLGN5WYQ=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-qaLOTb48Rl/0syK8++ft2EgMywD0jC8uAYWzPnj8Q1Q=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
