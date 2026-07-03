# snapshot malta/be64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/";
  sha256sums = {
    hash = "sha256-YWDfWU7oPi5IwvWY5LRfzjF43CxzPQazO3AmoGeESaU=";
    name = "malta_be64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/sha256sums";
  };
  imagebuilder = {
    sha256 = "b0e15e998ef5f004a1ceab7edb203c249c5e59f5b1be210a611093c479adc637";
    filename = "immortalwrt-imagebuilder-malta-be64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/bO6PpnH0xYzvWskSuNz3hEj/rxnHyV1mbMRYfo7mj4=";
    name = "malta_be64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "b387ec109e8d6330706ad7e3022cc799";
      version = "6.18.37";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-mac80211-hwsim"
      "kmod-nft-offload"
      "kmod-pcnet32"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "wpad-openssl"
    ];
    kmods_target = "6.18.37-1-b387ec109e8d6330706ad7e3022cc799";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.37-1-b387ec109e8d6330706ad7e3022cc799" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.37-1-b387ec109e8d6330706ad7e3022cc799/";
    sourceInfo = {
      hash = "sha256-yypX0qBLg6kqXzaORck0Ya1VYV6gUo9xXFVDNZyXvvU=";
      name = "kmods-malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.37-1-b387ec109e8d6330706ad7e3022cc799/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/";
    sourceInfo = {
      hash = "sha256-jd78bh1vADRkyl1DTw3vYPSnGdvEPX+LlvuhdYcwS9k=";
      name = "malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_mips64r2";
  feeds = import ./../../../packages/mips64_mips64r2.nix;
}
