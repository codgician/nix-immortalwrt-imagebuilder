# snapshot d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-+nBQNLBAtQJdrZmR0hQWzjuKhyxn85wEzaeGXNyaa20=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c8e676881d7d4a328e0a2d379275d0c9901c893cbf9d7036cfe2528d05c41d75";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VZLnh3xFZMhYGEuJtZVghgRedb2Haco6sHoNGWM2Q7w=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "c7e8fc346b3e644230af32997bc45137";
      version = "6.18.37";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.37-1-c7e8fc346b3e644230af32997bc45137";
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
  kmods."6.18.37-1-c7e8fc346b3e644230af32997bc45137" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.37-1-c7e8fc346b3e644230af32997bc45137/";
    sourceInfo = {
      hash = "sha256-QR7CKhNkDZJQFaeIDz2zeKjHILaHlqoOSoDE8Bagi8I=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.37-1-c7e8fc346b3e644230af32997bc45137/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-i/9sZl9W7z0MJ0Ah8L9NOuovxYeMcF5274u739jlMT8=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/packages/packages.adb";
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
