# 24.10.6 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-sVOVio1enkekthUiVbyBzBKbmXl3Lq7OUUtEbEO/6B0=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-WWBXTYqqvoGe5U8C5MdQ5w0ZeM2KEmIYAeS9eom8kpg=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-Uk+6mz/U7/Ku//ZWmfTKqhXZV11jXPnMe3CdXB+WTGI=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-A3aqu+CogjzUf9Rig4GFXeM/5pk7pZrALLGCGw02F3c=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-TmaElemXHGu0Obtr2JDHQJQYgFqmq1rEJqxAN9WTELc=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-6TViJQfpjw8ADqMpXsLYvyMR9kAPAG7hNHGco9gp3kA=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
