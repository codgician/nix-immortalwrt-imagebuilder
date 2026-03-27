# 25.12.0-rc1 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-2B9mktsYuW2HGXuVQLHKRoA7Ms81Mwfj8+OeLVjIXe0=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "da3423bd9c35c571d48db46c2ce8e4ad9dfd9dc819eed430b9d153e1b39adb02";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9D9XQUtalNw61Uq3LTJAfskzCQGLOB8gaVh+F4mZ5vQ=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "5468eb4636e7cdc06fc908ecca50fde9";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-5468eb4636e7cdc06fc908ecca50fde9";
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
  kmods."6.12.74-1-5468eb4636e7cdc06fc908ecca50fde9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/kmods/6.12.74-1-5468eb4636e7cdc06fc908ecca50fde9/";
    sourceInfo = {
      hash = "sha256-rYlbxmphegoGBYyRqj5l4ddpXVV63J1FvUmjbNXrLk4=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/kmods/6.12.74-1-5468eb4636e7cdc06fc908ecca50fde9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-TyTiRpVsLaizR715H8WbSpFIcJpWEj+p6RWMA2nxeto=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/cortexa8/packages/packages.adb";
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
