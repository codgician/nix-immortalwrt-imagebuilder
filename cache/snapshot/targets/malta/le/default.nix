# snapshot malta/le
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/";
  sha256sums = {
    hash = "sha256-2BEM0H0nLAJJmyP0DcuB+VMM7087uFl4Y4ezxgYquKI=";
    name = "malta_le-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/sha256sums";
  };
  imagebuilder = {
    sha256 = "18ac37c28921a9664c5057514defd219884c6b2164a6fb4f58b5afd495b0b304";
    filename = "immortalwrt-imagebuilder-malta-le.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2p9nXeBi4M2ZrZCOc4Ei//hxsaIfreIMzn4TCRy+S4g=";
    name = "malta_le-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "70cc24699fed2d2cba6bb485a26136b7";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-70cc24699fed2d2cba6bb485a26136b7";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.31-1-70cc24699fed2d2cba6bb485a26136b7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.31-1-70cc24699fed2d2cba6bb485a26136b7/";
    sourceInfo = {
      hash = "sha256-4nSXm1o1LmSStQaAkI3UUYlpl3FG52joF9h5zRrNbys=";
      name = "kmods-malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.31-1-70cc24699fed2d2cba6bb485a26136b7/packages.adb";
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
      hash = "sha256-3j6o9D6YH91eUr13uNL3vBjUDNyMlrViPbEjh4dMR8Y=";
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
