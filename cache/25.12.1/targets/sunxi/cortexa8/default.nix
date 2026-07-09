# 25.12.1 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-m5yVaHwfezplXoU5Cq2bFMWU8ZCD/nw/tPUxZ3Awmdw=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "0cdb441173468567cbf056078ef7e6e7661f1099e5104227183a832cfed5dc10";
    filename = "immortalwrt-imagebuilder-25.12.1-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EaZvqWySEtGr9PYoAsuVw45MPwPVSIkVx9s01AYKgMk=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "653f16ca0f5e1c28e5b5be6c0612417d";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-653f16ca0f5e1c28e5b5be6c0612417d";
    profiles = {
      cubietech_a10-cubieboard = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      haoyu_a10-marsboard = {
        device_packages = [
          "kmod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-sound-core"
          "kmod-sound-soc-sunxi"
        ];
      };
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a10-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  kmods."6.12.94-1-653f16ca0f5e1c28e5b5be6c0612417d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/kmods/6.12.94-1-653f16ca0f5e1c28e5b5be6c0612417d/";
    sourceInfo = {
      hash = "sha256-jlK1p8zvp+NVjNzKUFASCUubM2TXjBo021mhjX3dFFk=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/kmods/6.12.94-1-653f16ca0f5e1c28e5b5be6c0612417d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-OHnb9++SlCv2kVq77Bh5PXdnvoo84O3YEVFzgPEfbcs=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/cortexa8/packages/packages.adb";
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
