# snapshot malta/le
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/";
  sha256sums = {
    hash = "sha256-UldsRWwrzE7GiiFgoFhBM0kVzPVdvKYbidH9Kp3GUMk=";
    name = "malta_le-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/sha256sums";
  };
  imagebuilder = {
    sha256 = "8ce03912f8f4c8c524723c45b242d34fcf0d4164d3af090a22ce856ad3b14a95";
    filename = "immortalwrt-imagebuilder-malta-le.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tiTvUyHtHhopiZ1ntbdb9JUmzN5lKqxpB221W5cZqLU=";
    name = "malta_le-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "b0e379f666b3c6fad4d2707946b0c127";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-b0e379f666b3c6fad4d2707946b0c127";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.34-1-b0e379f666b3c6fad4d2707946b0c127" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.34-1-b0e379f666b3c6fad4d2707946b0c127/";
    sourceInfo = {
      hash = "sha256-S641OErzNcJ5n1msqNn0IbAOzxWwzJf2YRbHS9JZeFU=";
      name = "kmods-malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.34-1-b0e379f666b3c6fad4d2707946b0c127/packages.adb";
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
      hash = "sha256-1puT0mwn7i9qC7rNClZEYuH5RSUIv1Sz1zRrEN99DCs=";
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
