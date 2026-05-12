# 24.10.5 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-VJJslIxHplD5snDW3TwSqCRHMfdtSh+txLJy/l3ffOk=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-xB15bFAUQEWZ2N6SCawB3JWm6Pj4rVbO+ExP7exRrwE=";
      name = "mipsel_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-EtxT0nHEdV7OuO4K6vg4RDHmVSBWiZkdUN3PV+8F0pg=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-5UaSsd1daws5QVUxHa5YNa/TSLDKFLOi5RCekGmxDfs=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-elvub0diehOOeujtMbK4hhPyrKbypLB7UBMFiVIVRh8=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-fTtqe44pc3C9scRBpm1VBjoWR8ictn0lUlT0u07qDoI=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
