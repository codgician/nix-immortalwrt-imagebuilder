# 25.12.0-rc2 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-KCuVktka489ytfRsLzwLtuFkSxJkajNXMHQse6qyNqI=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "a87d77d2d55dd38340a540541832e58d117f21f7cc279182d030fbe036ce3fa3";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Htv9DNnCH1BYMjfcGTeZrFHGJte8O9R9RQhbaTEpipc=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "a9832be06ea454f3c15a0591159798c9";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-a9832be06ea454f3c15a0591159798c9";
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
  kmods."6.12.79-1-a9832be06ea454f3c15a0591159798c9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/kmods/6.12.79-1-a9832be06ea454f3c15a0591159798c9/";
    sourceInfo = {
      hash = "sha256-DrL/G1YaL2PL4A6393B/UN2GMgPYTAdFQ515uBOSzr4=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/kmods/6.12.79-1-a9832be06ea454f3c15a0591159798c9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-Iux7E5YVnfAFLPToQLRTC7WHYYk079AA7odZimi55sM=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa8/packages/packages.adb";
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
