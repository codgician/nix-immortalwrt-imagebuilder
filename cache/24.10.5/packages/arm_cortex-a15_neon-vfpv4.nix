# 24.10.5 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-zvkJVNe2kab+QCXhhiNY0wJi77ekI+elBL+Zrdd73J0=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-oqwUEbIEl+vpVj3msMat49AYuY/ekuHOuHM45Q6ubPk=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-UK847WCTFRV8O8YfZcS2F6P1zygjE4qDC+xayb/EBhw=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-rdVVnlBsDILn3o9g7Js3b4RLOq1jZSK5HnezpInOFOg=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-T1P8lnEPkbwRh9aTO4EwNzqvEzmLk+Fhlmz9N5LdMfQ=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-fqh5HCxfPsAOj0GOvr87/RKaLleXt7gwWg/aEuHg5lc=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
