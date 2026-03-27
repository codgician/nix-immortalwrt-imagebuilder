# 23.05.1 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-7ghysuzF5ZVro87yvCi3tf6fkwKkIIbaCUMpLQaPKOY=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2a97d88d6b03cde4d76b75cef2a6802dc0b43013e27d5c3079f19c7c86a4133f";
    filename = "immortalwrt-imagebuilder-23.05.1-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-iibyyhIhz8X+CEJwVxllzvDR+1sqOjo+6jZBPDQP148=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sifiveu/generic/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-X3j1dywl2rJMAQmkwfmXkBfiy7sgitpUtz/MPpQCO4s=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sifiveu/generic/packages/Packages";
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
