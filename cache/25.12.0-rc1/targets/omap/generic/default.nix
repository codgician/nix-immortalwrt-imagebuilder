# 25.12.0-rc1 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-GQIraThszM0KcdCJZv5MU08K9TKtgcaABvZF7UYswUU=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d055b72a6aa78de8fcd3c011dd6eaf4e23ecd2e09426eef84904f9e876d202d1";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Jh2tSEsoXMvcZFbbNP+tIxriqJfsSBHiibnJbV876sY=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "af585ba84dee629b4cacaeb140f9382e";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-af585ba84dee629b4cacaeb140f9382e";
    profiles = {
      ti_am335x-bone-black = {
        device_packages = [ ];
      };
      ti_am335x-evm = {
        device_packages = [ ];
      };
      ti_omap3-beagle = {
        device_packages = [
          "kmod-usb-net-asix"
          "kmod-usb-net-asix-ax88179"
          "kmod-usb-net-hso"
          "kmod-usb-net-kaweth"
          "kmod-usb-net-pegasus"
          "kmod-usb-net-mcs7830"
          "kmod-usb-net-smsc95xx"
          "kmod-usb-net-dm9601-ether"
        ];
      };
      ti_omap4-panda = {
        device_packages = [ "kmod-usb-net-smsc95xx" ];
      };
    };
  };
  kmods."6.12.74-1-af585ba84dee629b4cacaeb140f9382e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/kmods/6.12.74-1-af585ba84dee629b4cacaeb140f9382e/";
    sourceInfo = {
      hash = "sha256-C88LzBRVr1nfCaJcpIqwS/cQW3IZUiwTMyyru9VRnl8=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/kmods/6.12.74-1-af585ba84dee629b4cacaeb140f9382e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-EkOECyASGe6cFAwHBjxhZNegw0pZhowpF/FBQNYfoSE=";
      name = "omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/omap/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
