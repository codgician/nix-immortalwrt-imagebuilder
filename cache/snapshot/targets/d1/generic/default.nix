# snapshot d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-hTJ6A3g9YYWL7xh10LOx3JFxUO5kB2d9KHOIk04s6ao=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b148e4d81243641edd07e65a32483f079e61afd9cc10debf6b571e11c1da8e6f";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uaCbxhGooeY5psuS+YDyO2EjHacDEKNz83iyjRnhr+g=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "abeb2e4483b43ee2f78f93d239a5cb01";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-abeb2e4483b43ee2f78f93d239a5cb01";
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
  kmods."6.18.55-1-abeb2e4483b43ee2f78f93d239a5cb01" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.55-1-abeb2e4483b43ee2f78f93d239a5cb01/";
    sourceInfo = {
      hash = "sha256-hJ6FkaHXuiuaW9SqjKya8R38mGgu4lPXaj4KXQ0buSs=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.55-1-abeb2e4483b43ee2f78f93d239a5cb01/packages.adb";
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
      hash = "sha256-q7FJSC1wYZKuvrxzu3baQYNEIHN84kGg9JCr72/s23Y=";
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
