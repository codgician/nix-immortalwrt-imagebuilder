# 25.12.0 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-U67Nd1cS5TEjEBmy1/nvBgTTWX0YIxxD2Zz6k8o8icY=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "04d8cfe462753209d8e71ac89666fe8d56a8ae45c6203542f46aa3b732f71ef5";
    filename = "immortalwrt-imagebuilder-25.12.0-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JsATa1YgvDxSn5I60mot/Fhod9E1Pg0+EitLBwj29sg=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "f2eb7201952fe4d98493d4c01cc7f5e5";
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
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.87-1-f2eb7201952fe4d98493d4c01cc7f5e5";
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
  kmods."6.12.87-1-f2eb7201952fe4d98493d4c01cc7f5e5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/kmods/6.12.87-1-f2eb7201952fe4d98493d4c01cc7f5e5/";
    sourceInfo = {
      hash = "sha256-xwjujcZcIT4qI1cOkbTdWX86ppk+lyQbfQsYOsLaZL8=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/kmods/6.12.87-1-f2eb7201952fe4d98493d4c01cc7f5e5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-lpdRMW5xLfO+H1HCo0lyJQtEVZ0V7qXVIBWSoPR8c1M=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sifiveu/generic/packages/packages.adb";
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
