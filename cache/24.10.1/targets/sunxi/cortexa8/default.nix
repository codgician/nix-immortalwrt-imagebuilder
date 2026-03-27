# 24.10.1 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-UtEjddZSIA+y5dzu+RIKgLCd+I29IQJbk+ZYDLzAg0I=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "f35d333a789ee23d14e604cecd5d84124ba1cc23b0db40d9fd68589e294d6ea6";
    filename = "immortalwrt-imagebuilder-24.10.1-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-66TZ3Z5ddaM+evY4G2cXmc+zzrAQ9T/yWkthP+qLKl8=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "ee821842cbf0f5ba470868e362f2aa59";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-ee821842cbf0f5ba470868e362f2aa59";
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
  kmods."6.6.86-1-ee821842cbf0f5ba470868e362f2aa59" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/kmods/6.6.86-1-ee821842cbf0f5ba470868e362f2aa59/";
    sourceInfo = {
      hash = "sha256-8fon6tN7Sk7z17AP60QvjqUj7RPgeAe9WRxYJadiYiw=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/kmods/6.6.86-1-ee821842cbf0f5ba470868e362f2aa59/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-vi96magcj7AsY9o8DnIVlx7kDbXh9Gf3ygj6xkHaYao=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sunxi/cortexa8/packages/Packages";
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
