# 24.10.3 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-7cLPHpY9k4Plt24Ax2C9ZbeccCQXcowC5gxPWiSWbqI=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "a5d1bddde64698c498c087cd9c2c212aad315bd538cde9820f877fd972f85f45";
    filename = "immortalwrt-imagebuilder-24.10.3-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NhtVUO0mlpq7dT83LMqzIX/1n9OHAnCgv3iTBC+svzk=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "fa01002daaf58f1f1392150ddddde308";
      version = "6.6.104";
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
      "kmod-at91-udc"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
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
    kmods_target = "6.6.104-1-fa01002daaf58f1f1392150ddddde308";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.104-1-fa01002daaf58f1f1392150ddddde308" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/kmods/6.6.104-1-fa01002daaf58f1f1392150ddddde308/";
    sourceInfo = {
      hash = "sha256-rZ2yawZliamIWy/h4j9pUlNOEzJeuje4S0QXDuJm/xo=";
      name = "kmods-at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/kmods/6.6.104-1-fa01002daaf58f1f1392150ddddde308/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-Kl3dG/UWwJWSqn8a5qr7sn2V7V+diKHoxY3gnrDLmoc=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama7/packages/Packages";
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
