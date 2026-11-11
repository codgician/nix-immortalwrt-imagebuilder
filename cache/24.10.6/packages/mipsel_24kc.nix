# 24.10.6 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-1U9mu9GbOBLorJGkYZ4GcqKLFUSottvcuuMwzszBRLw=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-vOeRyj4B+jlK+eneGfSHxucR1LFzLPbbboGSkvB2ubM=";
      name = "mipsel_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-9xq+TiLWXj4oZSLVuVpawnirme6NmQbJKXxUE41wQmc=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-alfm0z87w/Lf1pEWi/4cPy8xZtUtb1Rtd5bYurbtJ3E=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-O+zyJCGJU4oSNrsPgdGQdVii93ZDLLaqCJocfPnn50k=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-nCjxPPfJg9xiUYUrMxkJRMFq0e53tDajUz7p0daWcl0=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
