# snapshot pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-kuymaopXtdqQk3mRXC8JVU1WzyVlpJxaNOc4oXY+sks=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "77ab3b727a459bbf6bf5ff3e6dc579873a2716fd215b7ca91356e03ccf8e27e3";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZyKHJ2hHBMAuzpeTmX14moz36qrMkgTPlur8lXRo+7o=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "da4fb06ff06df2d001ee60ab4486cc77";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-da4fb06ff06df2d001ee60ab4486cc77";
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
  kmods."6.18.44-1-da4fb06ff06df2d001ee60ab4486cc77" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.44-1-da4fb06ff06df2d001ee60ab4486cc77/";
    sourceInfo = {
      hash = "sha256-P0fRMQnIcIDCy0Csjvrns3Pl19K4kWu5CaYBZLUfTqA=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.44-1-da4fb06ff06df2d001ee60ab4486cc77/packages.adb";
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
      hash = "sha256-F5DvEbL815hPKvFcdYspzxBht1IsJ3clYl7IYxLCOT4=";
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
