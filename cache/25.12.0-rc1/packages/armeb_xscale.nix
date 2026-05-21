# 25.12.0-rc1 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-dSbDW18FwdOZzYa6GdGff1XHDxMKUUJfC9rWEh/py3c=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-pUxnhyud+lVqZBUq9HZpqbkNZUGoSUcWB8zUaOifFWk=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-3m470zRlnqcoLVoZ6vhVMP2zVKjYydIIEN5IKuhf1Jw=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-BPynI6rvvCuIDwvl0TeygneXoT+uLE6w8AOMzOkjZew=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-+NkYIbXRGbY7Rl8RKzZdmDGQ4kBY13yRrfYBvAHSwrY=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-ciHsTWRpfPEi2BHOnBEUKgnhQVE2dDJFSYCQ6pH7Naw=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
