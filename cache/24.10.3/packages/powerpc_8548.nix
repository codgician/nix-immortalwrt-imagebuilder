# 24.10.3 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-5X7S0UE0Fq6OJG2riy2hKZkGqqzZJI6hoxTz0CYlxxo=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-vLN2JG9pfGfjWEPomELJcjtYBYN9hAh5525KrPSuZ2s=";
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
      hash = "sha256-h8QWZEyApxqA6Pgml7t1/eiBMliiRPfCwhvsupFvoYU=";
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
      hash = "sha256-+wL4tcr8wUCtL5wF/qEjfO5MukV2X0DIqcSPakh0CfI=";
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
      hash = "sha256-2yWX328UkTBsGewJeMQgDuUYbQK9qQWg0GQjjm6ef8A=";
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
      hash = "sha256-xZSyzfU0H/kbdyYCn+nDOWYcAY6dGI7WltzJz9XFTkM=";
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
