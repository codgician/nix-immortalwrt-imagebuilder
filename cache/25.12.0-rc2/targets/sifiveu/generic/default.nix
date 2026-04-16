# 25.12.0-rc2 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-AWJ67rpxWra/0kHh6BIG8ybxQMdMQsjaGlK9zmAb5K0=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2522299db724de7ee7b83472adebf86a8c86b9443afe108ed0149c5c2ac0b89f";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ji5xRY+UtCmyygk75lVE6/yEQdAoYbB5iXLl06qXKuI=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "6bd4c8116629d18be539f66e959f5f9a";
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
    kmods_target = "6.12.79-1-6bd4c8116629d18be539f66e959f5f9a";
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
  kmods."6.12.79-1-6bd4c8116629d18be539f66e959f5f9a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/kmods/6.12.79-1-6bd4c8116629d18be539f66e959f5f9a/";
    sourceInfo = {
      hash = "sha256-+6sx/JSsool1lmu/blJCm+tGrRxdN4LdY6s2266VScs=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/kmods/6.12.79-1-6bd4c8116629d18be539f66e959f5f9a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-l99ENbaey/G1r3Rj82Ek3Najlm83J4PcaQAXo3rlU3k=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sifiveu/generic/packages/packages.adb";
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
