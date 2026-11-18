# snapshot sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-4loG7/bucvICQyTZCw2PkD5jO6RAJbrm6CTV9iZx7JA=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "ab2ecb3f78566389106d26d68168a551609d3308f6f15603328cb6db74bb398d";
    filename = "immortalwrt-imagebuilder-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HgO5EjKmqtXjL9q9bmbSZQVpqDoLXxQ4alC1ojX1pTg=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "22293abb8efbd2dc2ed97d57b5fd72cf";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-22293abb8efbd2dc2ed97d57b5fd72cf";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.18.60-1-22293abb8efbd2dc2ed97d57b5fd72cf" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.60-1-22293abb8efbd2dc2ed97d57b5fd72cf/";
    sourceInfo = {
      hash = "sha256-DEJJrNNRwtimc9bgm6wsPpg9uwWSCSfBIzwI2G6gCB0=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.60-1-22293abb8efbd2dc2ed97d57b5fd72cf/packages.adb";
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
      hash = "sha256-MsII6vW55W7ekbRA4tuhCTrHGInOSxbG+eNw6xv0Uzw=";
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
