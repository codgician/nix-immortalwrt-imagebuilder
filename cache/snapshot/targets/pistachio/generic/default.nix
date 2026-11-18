# snapshot pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-+qo0FLKcTYNf5iTDwTXr4ooVMaC4J8/iLO20MNAmyCw=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5728029ef99c8266dc1f6a7ee8d0bbe7ddaa39c58a7436416c09b4ff93bb9e09";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zItC0GIfPlRXQg5sjhfMrj0vlpOU5cLW0FwrjVsExOo=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "b7d0c0feb1794d5b72765c09dde74857";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.60-1-b7d0c0feb1794d5b72765c09dde74857";
    profiles = {
      img_creator-ci40 = {
        device_packages = [
          "kmod-tpm-i2c-infineon"
          "kmod-ca8210"
          "wpan-tools"
        ];
      };
    };
  };
  kmods."6.18.60-1-b7d0c0feb1794d5b72765c09dde74857" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.60-1-b7d0c0feb1794d5b72765c09dde74857/";
    sourceInfo = {
      hash = "sha256-+kgO1KStF1/zLkRYiFn61E5NHxbGWGfJzy+fSvcIxLo=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.60-1-b7d0c0feb1794d5b72765c09dde74857/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-jZuGN3OmX78WE74gBJhgSabMuqRB3kA9N6EnwfWyysg=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc_24kf";
  feeds = import ./../../../packages/mipsel_24kc_24kf.nix;
}
