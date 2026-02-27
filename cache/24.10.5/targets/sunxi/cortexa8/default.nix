# 24.10.5 sunxi/cortexa8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-5KibxqIZ8S+nKJHuQT1bytmkTiFd4xiDTud2fMmk+gw=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "39285eceef2c467e8afe2bd3706bdcf2873b26bd36a42dfcd0af3659564e14e1";
    filename = "immortalwrt-imagebuilder-24.10.5-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-k7o/KLOsfUXU8B54SIYW4EXQZbAfCkhydZYcc/GfVnU=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "ccf03edc549226afacfcdfcb899bec85";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-ccf03edc549226afacfcdfcb899bec85";
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
  kmods."6.6.122-1-ccf03edc549226afacfcdfcb899bec85" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/kmods/6.6.122-1-ccf03edc549226afacfcdfcb899bec85/";
    sourceInfo = {
      hash = "sha256-SaNVoPKHMsSKyCvPaRe1S9yFlHXTvVwgRoYaPTuuP7w=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/kmods/6.6.122-1-ccf03edc549226afacfcdfcb899bec85/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-HLg6xUaTwi3Bk9I9yqs0mX0nlGQf1eSUeOIpXhyx1L4=";
      name = "sunxi_cortexa8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sunxi/cortexa8/packages/Packages";
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
