# 25.12.1 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-6VBCXpGybhJutaCkYhipAz05bdpPYfjO+aYdFkDgIhI=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5518c47feef8f98bafba09d367547c4cdfd89c5e8a5b6b53add1b0d77274dd0b";
    filename = "immortalwrt-imagebuilder-25.12.1-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WJ/4lt3ncimqme/pO8TSSKE9dlGrZCUQGMNDCIRmq/o=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "42ec32bde6eaf2ae263909662380e15a";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-42ec32bde6eaf2ae263909662380e15a";
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
  kmods."6.12.94-1-42ec32bde6eaf2ae263909662380e15a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/kmods/6.12.94-1-42ec32bde6eaf2ae263909662380e15a/";
    sourceInfo = {
      hash = "sha256-RAHmaZEEvuxIluhHlasvpeHpO8I4RJjgWxNaVf2rPa0=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/kmods/6.12.94-1-42ec32bde6eaf2ae263909662380e15a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-nSjHJgH2ce3TGRNcOcU8a4OxteMaozPI+wadfQDvYH0=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/d1/generic/packages/packages.adb";
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
