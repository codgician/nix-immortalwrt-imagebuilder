# snapshot sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-PXAEvmGuVmkcKWVxQk53MLdjJfA5PF3lnQobs+ENJ+E=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "a7cf689100eb37a905c7620c85aef3e44020c22fe6f621db8325beffb56f9f5c";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HCVmplse5Wr4YVkY8XWJH803UjjofzCdxLRDBJPIhks=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "2766fe074496bd7a45f09621185e308c";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-2766fe074496bd7a45f09621185e308c";
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
          "audio-support"
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
  kmods."6.18.55-1-2766fe074496bd7a45f09621185e308c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.55-1-2766fe074496bd7a45f09621185e308c/";
    sourceInfo = {
      hash = "sha256-kUxMwuu2K+oL0sedx25o5Y5oJxDMaBRZrjvyQLrIp3g=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.55-1-2766fe074496bd7a45f09621185e308c/packages.adb";
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
      hash = "sha256-Nl2cbwgpjMWUUq51oaZfaPR8awhZWzM6+pvF9TykI5w=";
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
