# 24.10.3 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-CzHbvCprLaO7x47YAJLi4K0UTfBwJKKozZO3mmjfgN0=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-tTOmaexGuZUqM/xXfjWiJdVklGSfFHcEesR6sxlrMRQ=";
      name = "powerpc_8548-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-A2D3RLkfD1SaGpC7KBx0K9s1jjg+rPy7WPlczhwvvxg=";
      name = "powerpc_8548-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-ZvEk6Il6ubalUvp8q9YTThdQNbuaRZsrD5+xSQoyKMA=";
      name = "powerpc_8548-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-Ok+0ZlqopM14bgB9ViRKF/P12TvZOdU5X+1FzaFI9kQ=";
      name = "powerpc_8548-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-+jBprv0oapJodQ98ucP3k0cu7t3BRQiwaw7G88FfZ/Q=";
      name = "powerpc_8548-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
