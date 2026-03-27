# 25.12.0-rc1 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-qpvzGY7cNECQyisRikkvoCTNwMZYrGoH5u6Pa17I5Sc=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4fab3b5313c8f570fa9a36ed41d58e19530137bcfd2c4b31e9bceb7bc4d4f1d1";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rzvaEzLvX4wfK6X1csXfqzp6C/d2KwEEHpwzrPXP7+U=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "f0fda3dea1810c7357d535eefedc969d";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-f0fda3dea1810c7357d535eefedc969d";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ "kmod-gpio-pcf857x" ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.74-1-f0fda3dea1810c7357d535eefedc969d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/kmods/6.12.74-1-f0fda3dea1810c7357d535eefedc969d/";
    sourceInfo = {
      hash = "sha256-rLUfKC4O5jGY7BmKQMNr5oFeB7Fo7CuIDFZMQV2/v8g=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/kmods/6.12.74-1-f0fda3dea1810c7357d535eefedc969d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-+9OGDOY4MDH+yhirvPiuq0TqR+afwhJnyEvl3afIwfk=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/d1/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
