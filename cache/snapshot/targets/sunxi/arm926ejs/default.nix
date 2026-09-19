# snapshot sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-tEMtjaU42x9OL1QfMdXrqerYg+tssgGM7A/eB96qgAU=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "0d3506dc76ce558867ecf7764551fd9296a37142356079ac8bdd8465eef9446b";
    filename = "immortalwrt-imagebuilder-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-c02tw9GgjihdxdqlEBU+E6Yg6F7D/CzbAHfZVG1WiJc=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "453752456978189e255a0fdfb6619ace";
      version = "6.18.52";
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
    ];
    kmods_target = "6.18.52-1-453752456978189e255a0fdfb6619ace";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.18.52-1-453752456978189e255a0fdfb6619ace" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.52-1-453752456978189e255a0fdfb6619ace/";
    sourceInfo = {
      hash = "sha256-qE1nkd6UOoYFojPaASq7QF7L9x+U2DPo/hur8yzxdTw=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.52-1-453752456978189e255a0fdfb6619ace/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-K1lBzgTYRrQDz169D90AbBAXSqiLpJfdwwI3gUnFOpQ=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/packages/packages.adb";
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
