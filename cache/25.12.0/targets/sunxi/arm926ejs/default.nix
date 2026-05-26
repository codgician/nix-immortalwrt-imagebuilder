# 25.12.0 sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-BYTsSn6dNLzlCP/JMwKiAWA5qSS8Y8cuNy40AbhRg+k=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "7cff907478d22b2b260cf5e4ef444ab90c46d8dfb475e5fa88f4e526e9c13473";
    filename = "immortalwrt-imagebuilder-25.12.0-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-m0CC7NME11mLKceUvbZVZrk4ONAvLApKbsD3BAYND2I=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "c98843e5528b9fe40580f7834c03fbfd";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-c98843e5528b9fe40580f7834c03fbfd";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.87-1-c98843e5528b9fe40580f7834c03fbfd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/kmods/6.12.87-1-c98843e5528b9fe40580f7834c03fbfd/";
    sourceInfo = {
      hash = "sha256-CK/VGlraxqK12B4NdASEg//DBoZrP5AwwqHVDXHkoas=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/kmods/6.12.87-1-c98843e5528b9fe40580f7834c03fbfd/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-JbfONGYCjHqIA+cMI7Gt0dR9LnzgM9wKHsqVCAQ0NZg=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/arm926ejs/packages/packages.adb";
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
