# 24.10.6 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-90VeUILk46tuh/9yQ7C7vbenvgxX9VA4dHnyD4pGYsA=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-vYoUlAiKKlFCJQDrvOdaqtHPqMXOQpvLpjinDkfSK0I=";
      name = "powerpc64_e5500-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/base/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-k6x8PTigomRTNL50fay4D9dWy3sYqxqQQ5IFxLsob4Y=";
      name = "powerpc64_e5500-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/luci/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-h8G9diSi+JxWoRcj4xmwseNWly8cLRLkiSW3xmEK1E4=";
      name = "powerpc64_e5500-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/packages/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-zhrooelv9mzVt+53JqAjwzubP4guBkFd3/l2REqdIWE=";
      name = "powerpc64_e5500-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/routing/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-ZVsXm2K0cEFfkNJRVy7lBFY8tx1uMAqfWB/P6tttNjA=";
      name = "powerpc64_e5500-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc64_e5500/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
