# snapshot sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-lnFHkltYC/D25MVvNKUrNyGol5Weh89x1IK82Dsq8GQ=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "298159d19f5ac11b1a0aa07610598168a172b6f9ccadfc603e690d62c5b51709";
    filename = "immortalwrt-imagebuilder-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bKbkKhQbBLpnv5RWbTwOEBRaszGhLvMUDL7x725kq+o=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "3834130000523854e65de4bce8ebb74f";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-3834130000523854e65de4bce8ebb74f";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.18.37-1-3834130000523854e65de4bce8ebb74f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.37-1-3834130000523854e65de4bce8ebb74f/";
    sourceInfo = {
      hash = "sha256-OCK3Eiqg1u8htO1eYbu03b8MDJVYAFXIfdIFneb5o6A=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/arm926ejs/kmods/6.18.37-1-3834130000523854e65de4bce8ebb74f/packages.adb";
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
      hash = "sha256-WWpbVrd4uZjyBpexarWhYVA7ANJfVWTWXJyl7D2i3Vw=";
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
