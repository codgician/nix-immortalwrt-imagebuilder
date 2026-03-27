# snapshot malta/le
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/";
  sha256sums = {
    hash = "sha256-NoFKkjhHO/19ip/SSNxj9Z+gQdsqq3lIm8BUpxRIeDQ=";
    name = "malta_le-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/sha256sums";
  };
  imagebuilder = {
    sha256 = "c7f16ec3f91dd2a7be6e36672af9f4c734451a29cc08dbd40d7f87c41e710718";
    filename = "immortalwrt-imagebuilder-malta-le.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HlEBJqgnYuetBqw6BvgXUtv8KILGtTOtIXsciYqhAxg=";
    name = "malta_le-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "9da99525905de89c0188cb9f15f40b55";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-9da99525905de89c0188cb9f15f40b55";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.77-1-9da99525905de89c0188cb9f15f40b55" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.12.77-1-9da99525905de89c0188cb9f15f40b55/";
    sourceInfo = {
      hash = "sha256-Tw7wFEVNXT6KgjgBVdruGYrbxQUmqgK2O77RlzeBUjY=";
      name = "kmods-malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.12.77-1-9da99525905de89c0188cb9f15f40b55/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/packages/";
    sourceInfo = {
      hash = "sha256-tXwudRVJMyv/HhYDJSeIRM3f9/KMi9Q9z3bDNDZekOo=";
      name = "malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
