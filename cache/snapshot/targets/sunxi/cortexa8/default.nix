# snapshot sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-DdC2bAHW1nYvHyrNhJL6KWs5GUgaSsVcM8jkVluLmB0=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "e2911a84017b570b1a4d8ae754d617f67da7e016d596c0b4754c5ea03b2989c3";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-b+3vxXK/VUC2yhF/6iDnG6YXTl6ETBxZ3HG2h5W8xuE=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "c93770f59c31043d1e4f66f2ac3175f9";
      version = "6.18.31";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.31-1-c93770f59c31043d1e4f66f2ac3175f9";
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
  kmods."6.18.31-1-c93770f59c31043d1e4f66f2ac3175f9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.31-1-c93770f59c31043d1e4f66f2ac3175f9/";
    sourceInfo = {
      hash = "sha256-qVX8GHdfd3zWLhribkM2/uR2onQsb+xMAXhYHAUVdyM=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.31-1-c93770f59c31043d1e4f66f2ac3175f9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-RFsUDc2wQrGefWg3BAy9ZIZjW8bfAj2l+yggaKZ1R4A=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/packages/packages.adb";
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
