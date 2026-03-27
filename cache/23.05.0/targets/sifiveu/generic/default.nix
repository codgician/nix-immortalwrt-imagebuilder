# 23.05.0 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-5nOcrtyNHxSbFq8WDERKx8d+MPQx/+Fqpj2YnY8Q8Y4=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3c28dc5d5d67b31f96f9bfb5697588fc5a8d7fb24c27cb23b47a5e9cfec0ced4";
    filename = "immortalwrt-imagebuilder-23.05.0-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-uFVCYSXLW2X16xpeczewWCBWO8P6eqHYC0gQP0W3OGU=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-FzuKSGSqpxdbOYZghRwGRT7FnC43KkwabTHm+D9W66k=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sifiveu/generic/packages/Packages";
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
