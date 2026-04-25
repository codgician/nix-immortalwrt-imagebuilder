# 24.10.3 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-z310Bp5vApNf6d0e6F4aRBaTAMk83v86B4LrnKDExZM=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-bV1bJzY/ir7V7uKC8maLfpOPxDv7tHQ3d3KE2TLgBcs=";
      name = "powerpc_464fp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-oFTncZ5+ptgGBREFmXBJcriK7BMR4P+Z6xSv/mfW0PY=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-/u+KcDTShUsE3/gBqpXQC/C4Ov5zAWM9SJO59iOnYQo=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-7D/5BXefOR1/BaBNg8mmUigEmMJYhmKQxG3+LioyFNw=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-xugjG8bvPUlGQkpz1BZY+y9yJeAVflx/e/BP/skwDXg=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
