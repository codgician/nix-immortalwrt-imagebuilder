# 24.10.3 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-Wlq4u9uVfkk8MmLOs3R3VQA4Lr0XwcnZ9khsuaxyCIk=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-Nz37st+MR5cWUGZjjzn0tf+CHIVD7kzummMauEKA9kY=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-WV1AEU2vZJuW0WLzrQh3NyFqEg3YAGfWyHsIoRui+WU=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-SNJsMaQGp6UAVLny6dUzYfcj98Os3juesRKn6wXaZ78=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-pXZSUDjneALBJYxBl0JgBUx6PtxNqSmAt4zwgzuD53U=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-9EdN1mnEdtmkzc9q6J0fZ35y6SVm2XeF15t00gbjmo0=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
