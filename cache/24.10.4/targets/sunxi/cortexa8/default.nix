# 24.10.4 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-fGnVPrYsbXHm+czUWvzfWf0jFr/IIbTqxWLqcc9FsHo=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "1e447949463f5ed28e166f93254fd7342e947a3422e94250af6604bd6a3a3ca5";
    filename = "immortalwrt-imagebuilder-24.10.4-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-d8MLHVtJgA5TLLC7e4pS3MviearFj0zTU03Xub9jwyU=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "c8426291d48ad2c2b6a7dd577b968e1a";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-c8426291d48ad2c2b6a7dd577b968e1a";
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
  kmods."6.6.110-1-c8426291d48ad2c2b6a7dd577b968e1a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/kmods/6.6.110-1-c8426291d48ad2c2b6a7dd577b968e1a/";
    sourceInfo = {
      hash = "sha256-5jzipRBy04p9NkzUE0eNBvUE5IgHkCO3bqlZJYnWcWU=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/kmods/6.6.110-1-c8426291d48ad2c2b6a7dd577b968e1a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-DGx606Kgfjrc4tYT3ubY/o7Sb7CrdHhIWwxUOxzaYbo=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sunxi/cortexa8/packages/Packages";
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
