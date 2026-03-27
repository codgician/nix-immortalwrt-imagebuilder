# 25.12.0-rc1 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-10VtvGnB1t+Qs+fyQZnM4h5wrqEJrjUqug21bu13tt4=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "04c1c63b297b2f36343bb79d93c4298ee57e4eb9dd2755913722e0c1921c7ab4";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nszWGSnb+vcHgHKbq+9KnQeS1g66NqvUB/hsN/dnAyI=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "92f019c8f99ef065e94a2cd0238abab1";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-92f019c8f99ef065e94a2cd0238abab1";
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
  kmods."6.12.74-1-92f019c8f99ef065e94a2cd0238abab1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/kmods/6.12.74-1-92f019c8f99ef065e94a2cd0238abab1/";
    sourceInfo = {
      hash = "sha256-DpqxM6Oe6tjQvaGJlTipIPEbqYTN7WCq8VU4OQ8M3cA=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/kmods/6.12.74-1-92f019c8f99ef065e94a2cd0238abab1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-3nsXwqDCsiNlpRiIPDftvF2nYPwZktE/JyLbLYyz55M=";
      name = "sifiveu_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sifiveu/generic/packages/packages.adb";
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
