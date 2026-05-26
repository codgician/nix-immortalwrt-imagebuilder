# 25.12.0 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-ybXH2v3Mim/u33dcFbBhNCkVW6acs8FbcjHIJajOeQ8=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5214bcb89ecf7bc981ab5f9a3a8ebec2ac64453530dca62cba00cf5e5e3df256";
    filename = "immortalwrt-imagebuilder-25.12.0-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3srRMkc4+d5aDlRzgikfXWR2WTqS9dYtoZffVqAUbZo=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "e3b21caddf25de513fe66f0ee623d6d3";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-e3b21caddf25de513fe66f0ee623d6d3";
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
  kmods."6.12.87-1-e3b21caddf25de513fe66f0ee623d6d3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/kmods/6.12.87-1-e3b21caddf25de513fe66f0ee623d6d3/";
    sourceInfo = {
      hash = "sha256-fZZ6aqo2EeP2aIwgZTPxJ65yllCdwaGzF1q+HWr/3WY=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/kmods/6.12.87-1-e3b21caddf25de513fe66f0ee623d6d3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-FKyawyaZbDiF8+l1IuYR65vBz49mAHFJZxk5TwdqlG4=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/d1/generic/packages/packages.adb";
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
