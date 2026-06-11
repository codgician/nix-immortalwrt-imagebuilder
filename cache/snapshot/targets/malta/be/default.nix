# snapshot malta/be
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/";
  sha256sums = {
    hash = "sha256-PV4nlYCcWOGDcK3pstkz/Jr21dT50SUGPY9/Pc5Asro=";
    name = "malta_be-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/sha256sums";
  };
  imagebuilder = {
    sha256 = "3f37dd0461322f504e6c510c031d7a8eb7826647b2c8e1eb34304e08337cc6a2";
    filename = "immortalwrt-imagebuilder-malta-be.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-T80NsnG9vc57cor+dIEDeHqarQOHHQDrv3FX/v3XsAE=";
    name = "malta_be-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ba211d285c44b3378b6728221927f354";
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
    kmods_target = "6.18.34-1-ba211d285c44b3378b6728221927f354";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.34-1-ba211d285c44b3378b6728221927f354" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.34-1-ba211d285c44b3378b6728221927f354/";
    sourceInfo = {
      hash = "sha256-Zj6YdbZA69+y9IuqeGWfg6m7cGdgHujqR+zybdk/5cI=";
      name = "kmods-malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.34-1-ba211d285c44b3378b6728221927f354/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/";
    sourceInfo = {
      hash = "sha256-l/sJ4xncU9eKbVHgL33h3uQ0a/CRjO9tUo7T8fQWL3o=";
      name = "malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
