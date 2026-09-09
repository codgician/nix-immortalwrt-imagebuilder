# 25.12.2 sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-74CZ0Hd+gTmM0KQXnpu5SI0m0bro8827R6y24+gf2vU=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "746632370f8faae719a055c692e6e11eb80ae8040d39f3eb48327bf2d4018757";
    filename = "immortalwrt-imagebuilder-25.12.2-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-iDBuQe8+4ETV8TWU1OaLd7+kUNdDuaNjY5Ax245xJmo=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "bd96e984ff772601dec76c0c00833ac0";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-bd96e984ff772601dec76c0c00833ac0";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.103-1-bd96e984ff772601dec76c0c00833ac0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/kmods/6.12.103-1-bd96e984ff772601dec76c0c00833ac0/";
    sourceInfo = {
      hash = "sha256-vcc1upstg5gqdMiyC+idq2BcIs6IFL6Fy465vpAzzUg=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/kmods/6.12.103-1-bd96e984ff772601dec76c0c00833ac0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-I5ZSC4xotNgeiYLG4zEytlagxtO9wR08dCREI+LHNZc=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/sunxi/arm926ejs/packages/packages.adb";
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
