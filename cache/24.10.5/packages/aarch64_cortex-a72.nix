# 24.10.5 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-mUmThhyymqqxV6h8nzX4oExybsG9k45+gcx84a1qQJo=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-ryQB2VIyoqsY0QBwVr4OGaFc3uNb/AXbmKQxHQyT2D4=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-T1uS9AIV24GaKvrxMCvhc/qm7QLvePSoURCklIzm1pg=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-I0BbrvC9iWbuRdW04QWUaDLAnhuUwwqdxUpU5SOAUXs=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-/H/KbPAC+Ma8587G2QSPTB8ONq1fsqqnn2NgybGrcQk=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-7MKRMg3Qz4Q2Run/kYCnxl4vA1VU5M/HVyfbZNAIVWU=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
