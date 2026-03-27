# 24.10.0 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-MbJ7oHCyg4FIHkSVRnRQcglgDnRf7nD9BUM/gNlBPv8=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4441d8de56952b3615f807e91b826d0496ee2088035bcd03172f8ec8ebfd5a9c";
    filename = "immortalwrt-imagebuilder-24.10.0-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RSGf8MxPHuOceI5kHDwxVRJIUr+zxXfWFfNrEhSqSSI=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "5d6350119c07b12cb3a138090ca01e32";
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
    kmods_target = "6.6.73-1-5d6350119c07b12cb3a138090ca01e32";
    profiles = {
      sifive_unleashed = {
        device_packages = [ ];
      };
      sifive_unmatched = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-lm90"
        ];
      };
    };
  };
  kmods."6.6.73-1-5d6350119c07b12cb3a138090ca01e32" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/kmods/6.6.73-1-5d6350119c07b12cb3a138090ca01e32/";
    sourceInfo = {
      hash = "sha256-mc+M/uJjBzG6Q3uFQLDuewP/uVsINQkGsSy5DmCL84k=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/kmods/6.6.73-1-5d6350119c07b12cb3a138090ca01e32/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-kXuUX3F37Iy+bonOB0pX4ELS/S7XOwBS/TPOEQDWcso=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/sifiveu/generic/packages/Packages";
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
