# 24.10.0 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-5VHTh8tD9xr0b1qwY1uzo9sfP5QCWz98ogjgxINHg94=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ed28fc8968c327c42c08d7b7e5c0250486f17760193c66d7398968b34fd01f37";
    filename = "immortalwrt-imagebuilder-24.10.0-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1SmRCJVdZ2lUZt/7uIRgD+FbJYXIAq/X0yQz6xKZQpA=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "42e3dfa825470e42f7d546af54a93633";
      version = "6.6.73";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-42e3dfa825470e42f7d546af54a93633";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-basic-mbedtls"
          "iwinfo"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-basic-mbedtls"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-42e3dfa825470e42f7d546af54a93633" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/kmods/6.6.73-1-42e3dfa825470e42f7d546af54a93633/";
    sourceInfo = {
      hash = "sha256-4NflUHJZlfRDGtxR9kf8HXLY7rJ4zfdx0T4h5prnFT8=";
      name = "kmods-d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/kmods/6.6.73-1-42e3dfa825470e42f7d546af54a93633/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-70T1Qr9NlWkSoK54Kf9gHyR0F6m/WPBfA/0nqfQYXQI=";
      name = "d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/d1/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_riscv64";
  feeds = import ./../../../packages/riscv64_riscv64.nix;
}
