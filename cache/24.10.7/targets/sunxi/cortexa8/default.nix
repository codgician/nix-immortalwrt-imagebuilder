# 24.10.7 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-dnHkuNZyN1o7pPjqHbPEhmGCfTjQIiO0xpJh1Z+jyAQ=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "821364aa23847992233a3fc82bb2a48c14b8f3b508b0b0f0e65b2059595d044b";
    filename = "immortalwrt-imagebuilder-24.10.7-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-w9hwvP7LsBRmix0YGvdL4O7n4dyf/lhoF7ZalW8c9PI=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "84e7fb67fc86cd7ae418a7db51d015b9";
      version = "6.6.159";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.159-1-84e7fb67fc86cd7ae418a7db51d015b9";
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
      olimex_a13-olimex-som = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  kmods."6.6.159-1-84e7fb67fc86cd7ae418a7db51d015b9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/kmods/6.6.159-1-84e7fb67fc86cd7ae418a7db51d015b9/";
    sourceInfo = {
      hash = "sha256-aKuDqA7lwCfqnXS23VBZYsVi+JxDXy3b/l5Vmye+Ffg=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/kmods/6.6.159-1-84e7fb67fc86cd7ae418a7db51d015b9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-va7nY/OSUhAaku11a8uewEcv2niTgM4f7vqOURehUWU=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sunxi/cortexa8/packages/Packages";
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
