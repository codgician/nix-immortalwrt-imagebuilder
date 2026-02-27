# 23.05.7 sunxi/cortexa8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-SdkDlf58BBGNJCESx6f7DbIsp6cjE5RyCeZoYiwNQoQ=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "ed5c981cd9a8cbe1d6800dd0f364ba00338fdc390fa4d78a76c42c86a1318a26";
    filename = "immortalwrt-imagebuilder-23.05.7-sunxi-cortexa8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-pklZqZk4btdAkWl4n3/yYDrjUMVsMGW6PjTP7WUnklI=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "ca7933a1a19440b0c6229449cf35e960";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-ca7933a1a19440b0c6229449cf35e960";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-MhNBWvXZCi4Hz+A9dzeis0qxsyZwkHHcpDqvQUZtIyg=";
      name = "sunxi_cortexa8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa8/packages/Packages";
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
