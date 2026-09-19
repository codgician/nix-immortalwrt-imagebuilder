# snapshot sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-JeD5DiaG5PgvFui4Hw/QM7ujpIPeB5ExxTtZJRny8dU=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "d4a969c5ada7c3b7e39f8e570e4e8b443a728f6fc2fc75947db051c95632bb8f";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VRggTTfHwyBR45BCV/92zDho9FU4eWAXFVrvW81Mo/0=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "120fd8e1090c73d46ed0e3e8460198f7";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-120fd8e1090c73d46ed0e3e8460198f7";
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
  kmods."6.18.52-1-120fd8e1090c73d46ed0e3e8460198f7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.52-1-120fd8e1090c73d46ed0e3e8460198f7/";
    sourceInfo = {
      hash = "sha256-Z2PB54CRojw0E4sRIbrAPEstHZOG55ZnuDw8Tyw/Knw=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.52-1-120fd8e1090c73d46ed0e3e8460198f7/packages.adb";
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
      hash = "sha256-Q+0ZHfyX0PtOyee7ndyTpavDWPn9Y2FHKk+GILs5rPs=";
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
