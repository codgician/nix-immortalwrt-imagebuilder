# 24.10.0 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-CUUsfGz+UjO/+raiRbYa0PidVTwn5YdGd1qvFJAoaPw=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-f2EmlSGWEZ8tItvHGYn0V4OpGu0Xhsy5rUe19WeSPYQ=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-g3MVJ4HhpzSJf0TIccqvVQqMElXrZN7me16Yaeurb6s=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-vmkOxRMrvuz/EzqpLmcMu9IJ/0Q8zdlT1dLlha7j9bs=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-+lsEJtnw87P2Xm7yt23GL1RS3vrw2heZN1OeVROqz4U=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-w479er+yIbwo/dz1fM5BfksrkNlvK0k42tl+nC28538=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
