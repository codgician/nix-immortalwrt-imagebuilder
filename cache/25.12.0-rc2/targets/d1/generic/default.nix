# 25.12.0-rc2 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-bVywAKAAynVyP8cvNJ5Vc9R26VhTsz3yHIUkGhGUZes=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "45c638a9cb7738483ceda9b3660546c5f312f594f1eab476903a9982e13d68ca";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4LHglKAm4tNuDGuql4ukCwE3Kdz8qmCRpHolDVbwn8E=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "341a604814a7528ea71be28d59fd7b83";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-341a604814a7528ea71be28d59fd7b83";
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
  kmods."6.12.79-1-341a604814a7528ea71be28d59fd7b83" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/kmods/6.12.79-1-341a604814a7528ea71be28d59fd7b83/";
    sourceInfo = {
      hash = "sha256-o4RRayDrI/CerEVyPlmSRj2KHlr2XmGQ97RaaKfDzbM=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/kmods/6.12.79-1-341a604814a7528ea71be28d59fd7b83/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-Bv/Lw18/vpflUY+Z03w71F1EvBngOYD60T/eTsMrDHk=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/d1/generic/packages/packages.adb";
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
