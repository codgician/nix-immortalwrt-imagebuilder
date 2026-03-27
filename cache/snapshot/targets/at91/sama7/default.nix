# snapshot at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-oSncJt4Gr5OuKKUAiFPYm209kmrFRB7Nj2borfgOp2s=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "94c0ecdd895a42f6306b75520b5f024a28d03e6e6a28af2bd79a54cc720ff8c6";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vaYpRjQs6ZbVX+YBCqon8r8RgcC65AxmC0yWZxRzJUw=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "1082f3bf3d343d0a6218021db6da4dc2";
      version = "6.12.77";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.77-1-1082f3bf3d343d0a6218021db6da4dc2";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.77-1-1082f3bf3d343d0a6218021db6da4dc2" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.77-1-1082f3bf3d343d0a6218021db6da4dc2/";
    sourceInfo = {
      hash = "sha256-NFvG0zLNmTgowPdIRmy3Lb1bJw5G9Six8I4hr4q6mrw=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.77-1-1082f3bf3d343d0a6218021db6da4dc2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-mWMPML0nUD2QMpOOf7aQbix2dhfiRpsJKkEsCd5w7vs=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_vfpv4.nix;
}
