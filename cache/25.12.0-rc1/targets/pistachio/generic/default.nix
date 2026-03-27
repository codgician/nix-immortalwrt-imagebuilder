# 25.12.0-rc1 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-ovdq7XEHgre95UJ4K1/A2qcrlQgQMQaTROmbRvTSr/s=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "88587abe13b99769816441f14d4999a1cef97fa188657c458632f822247104a7";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gIgdaFBGnDVB3XdcolMooKmOW5p51TbhhyAo2gLfA5Q=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "4b8f2db903510c0e14f8bf09afb04433";
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
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-4b8f2db903510c0e14f8bf09afb04433";
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
  kmods."6.12.74-1-4b8f2db903510c0e14f8bf09afb04433" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/kmods/6.12.74-1-4b8f2db903510c0e14f8bf09afb04433/";
    sourceInfo = {
      hash = "sha256-kSSbI7sq2rvIeT03rgYRZeYEUrqraTkaGPsMf7h9QUI=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/kmods/6.12.74-1-4b8f2db903510c0e14f8bf09afb04433/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-pQpeM6c5Xg5RKxvwnJmzJiwD7jqTJL4UqgRMQ3D06ts=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/pistachio/generic/packages/packages.adb";
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
