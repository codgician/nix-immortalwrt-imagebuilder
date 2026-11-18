# snapshot sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-7IB25uiUj7FvCSnslenFC2SC9kY/02dhtDnRt/Oq/0w=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "337748037a5bd8fde05f32af56a17d87e40ddcf7d3d55cd91504c467e7f49cc1";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5kluHBITWiP9qr9jMsyiyxdL4NcBk4MGzTW26w7Ue0c=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "059e79a3c5fd30b622b2fc19939fc893";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-059e79a3c5fd30b622b2fc19939fc893";
    profiles = {
      friendlyarm_nanopi-neo-plus2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r1s-h5 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-usb-net-rtl8152"
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_sopine-baseboard = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      radxa_cubie-a5e = {
        device_packages = [
          "kmod-aic8800-sdio"
          "kmod-nvme"
          "wpad-openssl"
        ];
      };
      xunlong_orangepi-one-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-pc2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero2 = {
        device_packages = [
          "kmod-uwe5622"
          "wpad-openssl"
        ];
      };
      xunlong_orangepi-zero2w = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero3 = {
        device_packages = [
          "kmod-uwe5622"
          "wpad-openssl"
        ];
      };
      yuzukihd_avaota-a1 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.60-1-059e79a3c5fd30b622b2fc19939fc893" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.60-1-059e79a3c5fd30b622b2fc19939fc893/";
    sourceInfo = {
      hash = "sha256-EvUpzSpUSiAIbcWBsjm3rrSqqz8m54WqhxpuaYBC5lM=";
      name = "kmods-sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.60-1-059e79a3c5fd30b622b2fc19939fc893/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-Wg5pSvvnZRV4XNNPESOnyva69q8zWRABwSZICIUzQyI=";
      name = "sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
