# snapshot at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-y5Vb3ZQLqfnDnLaoo+EFV7wlKw6G4GHuDMFiL2Q+UhA=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "52b3227e588a56adb93a0785f78ada3de8531859826cf00400508ce8f0025a8f";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2ZbvGBvabYF0kw8C2P+paXMJaSFSNLtuAzVZxZXHL0o=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "49ad316261341ff17bec9551ab1301f5";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-49ad316261341ff17bec9551ab1301f5";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-49ad316261341ff17bec9551ab1301f5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.94-1-49ad316261341ff17bec9551ab1301f5/";
    sourceInfo = {
      hash = "sha256-HjUYEx4rxzJeXX5ETvfsjGMKOfEwynWLG3cXyDpEbXQ=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.94-1-49ad316261341ff17bec9551ab1301f5/packages.adb";
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
      hash = "sha256-kzLI5zXIXrbg9I6LW8TgHYjW7h58ltm84SEBVnOBHKg=";
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
