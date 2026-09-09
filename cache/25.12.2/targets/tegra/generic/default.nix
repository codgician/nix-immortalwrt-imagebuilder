# 25.12.2 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-qaEdd4m/Mphea7DzokIE13LJptr52nwCyyAPj903rGc=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a96d114adf738390affb0822a8ac326a1e5d9b13a0a5b3fe008d8f0f00ae8f18";
    filename = "immortalwrt-imagebuilder-25.12.2-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7YNv4cye3tP74UXWFFnz75oUxevNXCIDmwul/I1B1RA=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "d2fc7ebd25b19e11f02772a91290b9a3";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-d2fc7ebd25b19e11f02772a91290b9a3";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.103-1-d2fc7ebd25b19e11f02772a91290b9a3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/kmods/6.12.103-1-d2fc7ebd25b19e11f02772a91290b9a3/";
    sourceInfo = {
      hash = "sha256-X0TFxjByAxg9PVVpEf10p8JJZht5x2oi+2iCi8MI/cc=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/kmods/6.12.103-1-d2fc7ebd25b19e11f02772a91290b9a3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-q5Wb2/MAqVWaqyeM68G8g3tLVIDNzpXDwU1XbUoR9nY=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
