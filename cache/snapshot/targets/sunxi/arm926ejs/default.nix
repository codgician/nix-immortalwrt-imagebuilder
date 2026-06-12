# snapshot sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-vy4fy7EVbOHDuEKDYpRxfjBu/fNmmZwRdD5rxPdLDv0=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "d30709d562bc1cbf9664172a33a2a9dd2fc6ef243342919d732dd85edc62c332";
    filename = "immortalwrt-imagebuilder-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NNW+neSKRrNjNCvOuOHZw0LkGAhJfcoZiOc7olnHqY4=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "8e6b3456f6f6e756bdd62012335b93db";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-8e6b3456f6f6e756bdd62012335b93db";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.18.34-1-8e6b3456f6f6e756bdd62012335b93db" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.34-1-8e6b3456f6f6e756bdd62012335b93db/";
    sourceInfo = {
      hash = "sha256-kQU2GvlpXN8e+C0/M5CeHh2lZ/pQWUkTjrR2bdo+l2A=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.34-1-8e6b3456f6f6e756bdd62012335b93db/packages.adb";
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
      hash = "sha256-iqvBvmWOLEbsgO0oQcqPqqzQ6OHBLxmzsM/Qu/rRQdA=";
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
