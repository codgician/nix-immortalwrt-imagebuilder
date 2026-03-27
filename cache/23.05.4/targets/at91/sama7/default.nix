# 23.05.4 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-IGc+QpkNE8yKF7sYyXMpwJCuVWwL4CohvbZAxnQcyvg=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "95f6e1b49fcb258f5af08bcf0e49785cb37a61888a331b12d85bda5588467361";
    filename = "immortalwrt-imagebuilder-23.05.4-at91-sama7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-CxvyuU9Qo6RF+g7O8BGkO4poR8g65nvJwGJg4Vs5XX4=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-s4GXxhlPSxNA1QkRfWHp3Mbjvz6ZWO6qqB3cE+ed1Eg=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama7/packages/Packages";
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
