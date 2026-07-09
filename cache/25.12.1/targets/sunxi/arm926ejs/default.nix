# 25.12.1 sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-XcLJZx6Z9pF9fGM8GzNs86gdeBf9y38GQHOrsWZ8t3k=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "ba5512436a8ac8ce97adfe89bc8ab2bd1df52f523ee196d30d9270bc99ce3f5d";
    filename = "immortalwrt-imagebuilder-25.12.1-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2ePpO1w+12V5LfPJNKZ8E+Hd7k+kyjHZ77uBHnWmLsw=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "bd96e984ff772601dec76c0c00833ac0";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-bd96e984ff772601dec76c0c00833ac0";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.94-1-bd96e984ff772601dec76c0c00833ac0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/kmods/6.12.94-1-bd96e984ff772601dec76c0c00833ac0/";
    sourceInfo = {
      hash = "sha256-7N98rmI+i2LAVsuYP8TVi+lr5jL9Vct9kRJEpwOXn9o=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/kmods/6.12.94-1-bd96e984ff772601dec76c0c00833ac0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-qumNusMHCaqPkRlZ1Tf9Uy6E3dHpE1AuhewWYBI8myc=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/sunxi/arm926ejs/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}
