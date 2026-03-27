# 24.10.0 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-Xi7D4/ZS4hAm06Fs4zKcxdlmMRPKFuQmWAeEOdmhC+A=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "f4e29d2f5b199a5c8a4d475280a99638b19eab17c0fd91eb3528272173157097";
    filename = "immortalwrt-imagebuilder-24.10.0-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GD1FeEyP1j5PSwmSD7WSsGd2uM4t8X95J8om8/XxXfc=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "d38a61c990df1f6fe9a62fc0d586ce09";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-d38a61c990df1f6fe9a62fc0d586ce09";
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
  kmods."6.6.73-1-d38a61c990df1f6fe9a62fc0d586ce09" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/kmods/6.6.73-1-d38a61c990df1f6fe9a62fc0d586ce09/";
    sourceInfo = {
      hash = "sha256-d7ALteLfeEU+HeRjjhwfTAO1RqXUMURTQPKxKsvxWgs=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/kmods/6.6.73-1-d38a61c990df1f6fe9a62fc0d586ce09/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-sBWMnBeSwpuaQ8+EuEpZ1WNZYYwf6eJSx6VFH5YZ9kQ=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sunxi/cortexa8/packages/Packages";
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
