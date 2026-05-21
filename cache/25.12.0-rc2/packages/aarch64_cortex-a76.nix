# 25.12.0-rc2 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-LtUmBtJYMwj3iACwpqKQDHECZ9SM4HrRX0zLhuYk61c=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-gyIeIcXv/qZaDN+SEs0urXjENFNggYHlPbSHd7hVhKU=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-nll7j0NCbx1ogEcFkSnXL8a+q93p1Bb2Gfwm8X2GXpc=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-qnMrtcsaxmVC0uqhW60F0rOe96EgP2MGlyDwZ4XXv+A=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-WAUJdml3y1o/R41vQ0iRfowpC9Fm4JE/rlnBKhYpqao=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-HI3F5XoRhcmAKdEO3v5B6wgOP6jasKRmk9DegB2f8H4=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
