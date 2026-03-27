# 24.10.1 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-HWNUNz+ynjhxjPrQ+DgvQSdOKe/g35vpBsMiHOwunaU=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "73bc46538a2ce99aea30be4538f62e76f343eb68d444073059f5c629b51d6f7e";
    filename = "immortalwrt-imagebuilder-24.10.1-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/ata0XOGqNfkp8lGARZR2HbGTtEGV1WLZaB3ubRr7A8=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "bdaca659c462708c48616fb6921eaaca";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-bdaca659c462708c48616fb6921eaaca";
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
  kmods."6.6.86-1-bdaca659c462708c48616fb6921eaaca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/kmods/6.6.86-1-bdaca659c462708c48616fb6921eaaca/";
    sourceInfo = {
      hash = "sha256-NjcPp3AsyttTCMvoJPM7PQWbGZhixWELnJCRbnWw/8A=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/kmods/6.6.86-1-bdaca659c462708c48616fb6921eaaca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-IL/QOWDoEkVdEyO0oJGv359VzKBg+/VSwFD152875go=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/sifiveu/generic/packages/Packages";
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
