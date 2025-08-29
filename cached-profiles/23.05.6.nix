{
  apm821xx = {
    nand = {
      arch_packages = "powerpc_464fp";
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
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "2a4d237c8d58b7c82babbee96aa177d1";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        meraki_mr24 = {
          device_packages = [
            "kmod-spi-gpio"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-nand-meraki_mr24";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-meraki_mr24-squashfs-sysupgrade.bin";
              sha256 = "d98521ffd01c149d7faa541a3eda32b71c4c73a91896d53e02828cb457697dc3";
              sha256_unsigned = "a59016a6b73343227f2889fbc990dfdc3b7f9676ede5eaaf6ce78e7eaa59220d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-meraki_mr24-initramfs-kernel.bin";
              sha256 = "9a73ceb90b560e7b645098c4d91d0ded10daaa6c1093000ecd9787e48cc1fb3e";
              sha256_unsigned = "9a73ceb90b560e7b645098c4d91d0ded10daaa6c1093000ecd9787e48cc1fb3e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr24"
            "mr24"
          ];
          titles = [
            {
              model = "MR24";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx60 = {
          device_packages = [
            "kmod-spi-gpio"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-nand-meraki_mx60";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-meraki_mx60-initramfs-kernel.bin";
              sha256 = "8d69f16491a8c33d82423d9263a9fa9aa897007feac7524fa35c26f913ec7775";
              sha256_unsigned = "8d69f16491a8c33d82423d9263a9fa9aa897007feac7524fa35c26f913ec7775";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-meraki_mx60-squashfs-sysupgrade.bin";
              sha256 = "8cfd4512eb5dcba2e188c30cb8e27d9db2d371cf4db46ae7f7fb3bef984926a2";
              sha256_unsigned = "501705c59b079283507c5a6165fd8685ae7da8867faf5b133fc89ef653ecef7f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx60"
          ];
          titles = [
            {
              model = "MX60";
              vendor = "Cisco Meraki";
            }
            {
              model = "MX60W";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_wndap620 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap620";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap620-squashfs-factory.img";
              sha256 = "263189b31e5370daa7ea443679ce01f2fe5c5e715221fbc554c259fd48f8b97a";
              sha256_unsigned = "263189b31e5370daa7ea443679ce01f2fe5c5e715221fbc554c259fd48f8b97a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap620-initramfs-kernel.bin";
              sha256 = "9efc5c7d3d51b583408c248c0d71eb634c9392e0d0a4513572217acf2aa914c6";
              sha256_unsigned = "9efc5c7d3d51b583408c248c0d71eb634c9392e0d0a4513572217acf2aa914c6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap620-squashfs-sysupgrade.bin";
              sha256 = "7c2de23c42197ca547930820290bc71de47404181f607148a62a88a913794784";
              sha256_unsigned = "fac595296129efb1633d762c8eb9f6a232d00227a1557c8f4dbd1e4bee07dc3c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndap620"
          ];
          titles = [
            {
              model = "WNDAP620 (Premium Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndap660 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap660";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap660-squashfs-sysupgrade.bin";
              sha256 = "da29c87eb0e635451c69edfa4ee20733adac088cba1f707ea0ca822c276ce378";
              sha256_unsigned = "bd14a55d5539262d0c264247ab9f4b726e347c5dae8e116a7a33f9b1dbdb5b12";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap660-squashfs-factory.img";
              sha256 = "da2d651382d05f290b6a52607a1414d47a2c465dc6085c9c10b712450448a7d7";
              sha256_unsigned = "da2d651382d05f290b6a52607a1414d47a2c465dc6085c9c10b712450448a7d7";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndap660-initramfs-kernel.bin";
              sha256 = "c5bd6598574f46a9e052caf949cf1a9e3842a435eb4915f7be4595f1f1b43462";
              sha256_unsigned = "c5bd6598574f46a9e052caf949cf1a9e3842a435eb4915f7be4595f1f1b43462";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndap660"
          ];
          titles = [
            {
              model = "WNDAP660 (Dual Radio Dual Band Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4700 = {
          device_packages = [
            "badblocks"
            "block-mount"
            "e2fsprogs"
            "kmod-hwmon-drivetemp"
            "kmod-dm"
            "kmod-fs-ext4"
            "kmod-fs-vfat"
            "kmod-usb-ledtrig-usbport"
            "kmod-md-mod"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-nls-iso8859-15"
            "kmod-nls-utf8"
            "kmod-usb3"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndr4700";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndr4700-initramfs-kernel.bin";
              sha256 = "dfe7fdbd0f307f6c789f701a46adfb654a32c1907861b6848c9aee270b596438";
              sha256_unsigned = "dfe7fdbd0f307f6c789f701a46adfb654a32c1907861b6848c9aee270b596438";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndr4700-squashfs-factory.img";
              sha256 = "f05a849516ff6ad8f44412ea8e65525426adfa1b14187d10dfc03bb5f021cfa9";
              sha256_unsigned = "f05a849516ff6ad8f44412ea8e65525426adfa1b14187d10dfc03bb5f021cfa9";
              type = "factory";
            }
            {
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndr4700-device-tree.dtb";
              sha256 = "135520c3d6007f67b72db7a06cf7b4438c9fcc169044bc23fc07dd050db48e0b";
              sha256_unsigned = "135520c3d6007f67b72db7a06cf7b4438c9fcc169044bc23fc07dd050db48e0b";
              type = "device-tree.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-nand-netgear_wndr4700-squashfs-sysupgrade.bin";
              sha256 = "55252b45b0ec8f5fe92c5e8e556ed6f3f672bd3f27a264bce8b47bda12ff9fde";
              sha256_unsigned = "e06f820903b24dc5912ff17fccbfb3c949d0ae4766ac29b34ec412a92cf2b3aa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4700"
            "wndr4700"
          ];
          titles = [
            {
              model = "Centria N900 WNDR4700";
              vendor = "NETGEAR";
            }
            {
              model = "Centria N900 WNDR4720";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "apm821xx/nand";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
    sata = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "badblocks"
        "base-files"
        "block-mount"
        "block-mount"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dropbear"
        "e2fsprogs"
        "f2fsck"
        "fdisk"
        "fstools"
        "kmod-dm"
        "kmod-gpio-button-hotplug"
        "kmod-hwmon-drivetemp"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-md-mod"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "lsblk"
        "luci"
        "luci-app-opkg"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "mdadm"
        "mkf2fs"
        "mtd"
        "netifd"
        "opkg"
        "partx-utils"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "e560880edf800d4061fa51f11b956064";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        wd_mybooklive = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive";
          images = [
            {
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "28c2a8e0698c7742d14930c5576397c6b37ae1d7c02d494b5e5a7ef5d8e01c04";
              sha256_unsigned = "28c2a8e0698c7742d14930c5576397c6b37ae1d7c02d494b5e5a7ef5d8e01c04";
              type = "apollo3g.dtb";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "c441c405c40d93f0142f460cf5e8086307eb858fea03726613bc1caaccc36f26";
              sha256_unsigned = "26bfff0e8c2dc05c0153a0a99b8dd420f784f7722e3332dc1564b2e401ab4f02";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "89802fc24b1549ade94423acabede2699dc2f1a3756b89a4edac8848094ec5e0";
              sha256_unsigned = "89802fc24b1549ade94423acabede2699dc2f1a3756b89a4edac8848094ec5e0";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "1511c015925804acbc03b44c52fb0b3df57bfe235eac60283399975dbaab1b2f";
              sha256_unsigned = "1511c015925804acbc03b44c52fb0b3df57bfe235eac60283399975dbaab1b2f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "c18212626528f4f134a5f1b4ea750c24509532e01f147fb6da4d41ef762fe479";
              sha256_unsigned = "902a74aa3c7dd17fef7c5b00c820f39841be897051ecf9819cf7459a4ebd359e";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "345740b44d45455ca8f01a3dbe8bd2a7bc22cca21ced696a4f876c5b58fbe51f";
              sha256_unsigned = "345740b44d45455ca8f01a3dbe8bd2a7bc22cca21ced696a4f876c5b58fbe51f";
              type = "factory";
            }
          ];
          supported_devices = [
            "wd,mybooklive"
            "mbl"
            "wd,mybooklive-duo"
          ];
          titles = [
            {
              model = "My Book Live";
              vendor = "Western Digital";
            }
            {
              model = "My Book Live Duo";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "apm821xx/sata";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
  };
  armsr = {
    armv7 = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "base-files"
        "blkid"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci"
        "luci-app-opkg"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
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
      linux_kernel = {
        release = "1";
        vermagic = "e8ef9d54e195fe5c58800169c93491a9";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-thunderx-net"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
          ];
          image_prefix = "immortalwrt-23.05.6-armsr-armv7-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-ext4-rootfs.img.gz";
              sha256 = "869994de5b8aad1e55c27e2d5c31974357cf4a70654bd3430166eba544776e68";
              sha256_unsigned = "869994de5b8aad1e55c27e2d5c31974357cf4a70654bd3430166eba544776e68";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-initramfs-kernel.bin";
              sha256 = "b24071f005931745e9f194cbf3731195eaf99b05c469b51062e1d5244f7e57d4";
              sha256_unsigned = "b24071f005931745e9f194cbf3731195eaf99b05c469b51062e1d5244f7e57d4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-squashfs-rootfs.img.gz";
              sha256 = "bdc94fa8c9e7997a7d7d2e09dc908830a89b61bb1ba734eff04a9f10eb45745b";
              sha256_unsigned = "bdc94fa8c9e7997a7d7d2e09dc908830a89b61bb1ba734eff04a9f10eb45745b";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-squashfs-combined-efi.qcow2";
              sha256 = "a417f42daecb55175af36d5c77b128eab87f1791cb480620ee733063552d36b7";
              sha256_unsigned = "a417f42daecb55175af36d5c77b128eab87f1791cb480620ee733063552d36b7";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-squashfs-combined-efi.vmdk";
              sha256 = "f225ac5cf29f76a65188d5483ccaf77952888060aa1c41f538b50cf72c840776";
              sha256_unsigned = "f225ac5cf29f76a65188d5483ccaf77952888060aa1c41f538b50cf72c840776";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-squashfs-combined-efi.img.gz";
              sha256 = "86b6e896526fbb5407543a4ab0ce7ff1623e9a8dbeb2d3343103fb8eef0913af";
              sha256_unsigned = "392299198332a7cd0aa59e6a98a075a62df617ef27d7558fc658490acfc637c9";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-ext4-combined-efi.img.gz";
              sha256 = "e50825d9752f5df67ea3e16da8ce5d2c6232433da656dadb4e9e8e8d7fe0b9d6";
              sha256_unsigned = "83dab420a57112501bf612475b5783aea93334fae17131b25a81d53e4b42b1ec";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-ext4-combined-efi.vmdk";
              sha256 = "94bbfa52f14e3952d5ede95eb2a82501cc9a0a93b7fd79669bf5e306b776c45b";
              sha256_unsigned = "94bbfa52f14e3952d5ede95eb2a82501cc9a0a93b7fd79669bf5e306b776c45b";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-armsr-armv7-generic-ext4-combined-efi.qcow2";
              sha256 = "90ab5d207b071a561aa1b4fcc75745645b04e31d70c32ca16717e08a853f87ec";
              sha256_unsigned = "90ab5d207b071a561aa1b4fcc75745645b04e31d70c32ca16717e08a853f87ec";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "armsr/armv7";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
  };
  at91 = {
    sam9x = {
      arch_packages = "arm_arm926ej-s";
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
        "odhcp6c"
        "odhcpd-ipv6only"
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
      linux_kernel = {
        release = "1";
        vermagic = "7efb0ff41898d9a53457467ff0ceadd2";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        atmel_at91sam9263ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9263ek"
          ];
          titles = [
            {
              model = "AT91SAM9263-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g15ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g15ek"
          ];
          titles = [
            {
              model = "AT91SAM9G15-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek-2mmc = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek_2mmc"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              variant = "2MMC";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g25ek"
          ];
          titles = [
            {
              model = "AT91SAM9G25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g35ek"
          ];
          titles = [
            {
              model = "AT91SAM9G35-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9m10g45ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9m10g45ek"
          ];
          titles = [
            {
              model = "AT91SAM9M10G45-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "58b5bfd7b4e2472a8e38df26fac3e139f60df133cdf657e6f7354fdb3079feff";
              sha256_unsigned = "58b5bfd7b4e2472a8e38df26fac3e139f60df133cdf657e6f7354fdb3079feff";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x25ek"
          ];
          titles = [
            {
              model = "AT91SAM9X25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "8a2f01e4e59e62623ece9e4bd802ea8b5e282eda95bd9408c0f7768b7fb86e22";
              sha256_unsigned = "8a2f01e4e59e62623ece9e4bd802ea8b5e282eda95bd9408c0f7768b7fb86e22";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x35ek"
          ];
          titles = [
            {
              model = "AT91SAM9X35-EK";
              vendor = "Atmel";
            }
          ];
        };
        calamp_lmu5000 = {
          device_packages = [
            "kmod-rtc-pcf2123"
            "kmod-usb-acm"
            "kmod-usb-serial-option"
            "kmod-usb-serial-sierrawireless"
            "kmod-pinctrl-mcp23s08-spi"
          ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "966f8add44df02187ee567c65c4f93a72942ba60c7cd24b73f6ce56ec1e88962";
              sha256_unsigned = "966f8add44df02187ee567c65c4f93a72942ba60c7cd24b73f6ce56ec1e88962";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "c084de2511f05b59256caf5857bcd0e784c577ed4b8204764ce10c638c2a8941";
              sha256_unsigned = "c084de2511f05b59256caf5857bcd0e784c577ed4b8204764ce10c638c2a8941";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "c9b76e98aa40f022d6cc918354375b213419dde91da9347074e94de3f0ab789e";
              sha256_unsigned = "c9b76e98aa40f022d6cc918354375b213419dde91da9347074e94de3f0ab789e";
              type = "factory";
            }
          ];
          supported_devices = [
            "calamp,lmu5000"
          ];
          titles = [
            {
              model = "LMU5000";
              vendor = "CalAmp";
            }
          ];
        };
        calao_tny-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "6c0c03619a01e6e8786525794f635367f9556b01f3d78d6b5c4682d73d3a6d07";
              sha256_unsigned = "6c0c03619a01e6e8786525794f635367f9556b01f3d78d6b5c4682d73d3a6d07";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "0abd72e9d81d3eb02b9d11ff06c945671243afdca0b9164fb6b3bcdd33967709";
              sha256_unsigned = "0abd72e9d81d3eb02b9d11ff06c945671243afdca0b9164fb6b3bcdd33967709";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "b22682e1a00b852c8a00880e681bc162b70e3f83b1de18919a3923e906b2e6d9";
              sha256_unsigned = "b22682e1a00b852c8a00880e681bc162b70e3f83b1de18919a3923e906b2e6d9";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9260"
          ];
          titles = [
            {
              model = "TNY A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "380feae3d13963307f9be861d4aadf8d3fb1ac9bcaa5fa481a4bb0d35ccd1069";
              sha256_unsigned = "380feae3d13963307f9be861d4aadf8d3fb1ac9bcaa5fa481a4bb0d35ccd1069";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "da4a3b9a10a6ae6b3d1a069e14dfa7d93d4e530bdc3f20c98134cbb01f9264de";
              sha256_unsigned = "da4a3b9a10a6ae6b3d1a069e14dfa7d93d4e530bdc3f20c98134cbb01f9264de";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "29fef1c5b44481d87b27a031c56c1055b977446384d89db976f5427b44c7a9ff";
              sha256_unsigned = "29fef1c5b44481d87b27a031c56c1055b977446384d89db976f5427b44c7a9ff";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,tny-a9263"
          ];
          titles = [
            {
              model = "TNY A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "7bc4ba27c34449f5203b98ddafe2f601c7bc0eaf00eebab7156765c9db7ee52f";
              sha256_unsigned = "7bc4ba27c34449f5203b98ddafe2f601c7bc0eaf00eebab7156765c9db7ee52f";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "ae70cdd0c826c23262c9c52165905e3a30d884f6a149a53e82afe61a7e93955b";
              sha256_unsigned = "ae70cdd0c826c23262c9c52165905e3a30d884f6a149a53e82afe61a7e93955b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "cd2f661a31769f6f2d565995f0b617ec88a9e6a5f71b4fd419e99163f852796c";
              sha256_unsigned = "cd2f661a31769f6f2d565995f0b617ec88a9e6a5f71b4fd419e99163f852796c";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9g20"
          ];
          titles = [
            {
              model = "TNY A9G20";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "09099f2762820e9a993ad5f54a459844066eb5105ad0b02301d4903650315500";
              sha256_unsigned = "09099f2762820e9a993ad5f54a459844066eb5105ad0b02301d4903650315500";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "f731404dcb12c97d0e6fda5d20570cd6630b1ce0f6d06327392997171e7f4d62";
              sha256_unsigned = "f731404dcb12c97d0e6fda5d20570cd6630b1ce0f6d06327392997171e7f4d62";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "aa4e485de153b77811ad1cef4f4e321ee7a8a45164bd321fb4682580b1c66e0d";
              sha256_unsigned = "aa4e485de153b77811ad1cef4f4e321ee7a8a45164bd321fb4682580b1c66e0d";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9260"
          ];
          titles = [
            {
              model = "USB A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "bcf180058fef7acf628715b559c9ccb1f79aee494b180f4424015f8fe1c5ffcd";
              sha256_unsigned = "bcf180058fef7acf628715b559c9ccb1f79aee494b180f4424015f8fe1c5ffcd";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "3a341a9e3b4723f3443fe548795af5b0f20284fd54d2417ff72d12b9849ee641";
              sha256_unsigned = "3a341a9e3b4723f3443fe548795af5b0f20284fd54d2417ff72d12b9849ee641";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "cd0ff67ab04239623459a951eec24ed94b1cbceb9f1331f9c106ea977d0e55e6";
              sha256_unsigned = "cd0ff67ab04239623459a951eec24ed94b1cbceb9f1331f9c106ea977d0e55e6";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,usb-a9263"
          ];
          titles = [
            {
              model = "USB A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "4f0b6040c056035ac0c3fb3e7ce1b203d6b2c81962e4d78e44cd01ac195a3e60";
              sha256_unsigned = "4f0b6040c056035ac0c3fb3e7ce1b203d6b2c81962e4d78e44cd01ac195a3e60";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "c8da4e3f9a549c2553becc2e551ffe94bc7437a93739a7db65bca2861ea52a39";
              sha256_unsigned = "c8da4e3f9a549c2553becc2e551ffe94bc7437a93739a7db65bca2861ea52a39";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "203a5a998e402bc25d53371b8979a29e961d6bbfbc3729d5aa9bc55df4ccc822";
              sha256_unsigned = "203a5a998e402bc25d53371b8979a29e961d6bbfbc3729d5aa9bc55df4ccc822";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9g20"
          ];
          titles = [
            {
              model = "USB A9G20";
              vendor = "Calao";
            }
          ];
        };
        egnite_ethernut5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "175ff0bc0cb87847cbbc224ebde9c87e94c096fe8dfbbe6735c29fce9df55e73";
              sha256_unsigned = "175ff0bc0cb87847cbbc224ebde9c87e94c096fe8dfbbe6735c29fce9df55e73";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "e4d682113245115ac70f0469df070f52808f06b035ad9ca84852495ea6cda905";
              sha256_unsigned = "e4d682113245115ac70f0469df070f52808f06b035ad9ca84852495ea6cda905";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "b5d835e13dabc3ad5fee683e3e7037fda6bcc3e2df02b5796ee471c4077422b1";
              sha256_unsigned = "b5d835e13dabc3ad5fee683e3e7037fda6bcc3e2df02b5796ee471c4077422b1";
              type = "root";
            }
          ];
          supported_devices = [
            "egnite,ethernut5"
          ];
          titles = [
            {
              model = "Ethernut 5";
              vendor = "egnite";
            }
          ];
        };
        laird_wb45n = {
          device_packages = [
            "kmod-mmc-at91"
            "kmod-ath6kl-sdio"
            "ath6k-firmware"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "kmod-fs-msdos"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "6d3a71a8bea76997525435d43fd7ec8857349fc157241dac802d9b8f1106cee9";
              sha256_unsigned = "6d3a71a8bea76997525435d43fd7ec8857349fc157241dac802d9b8f1106cee9";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "c28f3a526597dd0894b42b863d2b39ed5d260ac1d0ebcf3c3eb4ffe52dafbfdb";
              sha256_unsigned = "c28f3a526597dd0894b42b863d2b39ed5d260ac1d0ebcf3c3eb4ffe52dafbfdb";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "42e5174e363e65457f14f40b5fb1d4130d60d4fd9b55a19a5e7cc5efbaf33440";
              sha256_unsigned = "42e5174e363e65457f14f40b5fb1d4130d60d4fd9b55a19a5e7cc5efbaf33440";
              type = "root";
            }
          ];
          supported_devices = [
            "laird,wb45n"
          ];
          titles = [
            {
              model = "WB45N";
              vendor = "Laird";
            }
          ];
        };
        microchip_sam9x60ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "fd70a7fb2b565cf6f0d509d12acce99c135857ba46ba7a9b60ef1ecbe609aefd";
              sha256_unsigned = "fd70a7fb2b565cf6f0d509d12acce99c135857ba46ba7a9b60ef1ecbe609aefd";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              sha256_unsigned = "713c95af0322631c4e19fb1ded117bf1732a4b75d2124e55d4487c368a8f3f73";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              sha256_unsigned = "aa86c4e2aa4c65a81f617ad826b69db915135ef8b836f67df0d92f1a5ac07f1a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              sha256_unsigned = "06da50f3a903f91a012fb97e7cace0ecd78a37fe8df98449c023560cc46a5c73";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sam9x60ek"
          ];
          titles = [
            {
              model = "SAM9X60-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "at91/sam9x";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
    sama5 = {
      arch_packages = "arm_cortex-a5_vfpv4";
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
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "kmod-usb2"
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
        "odhcp6c"
        "odhcpd-ipv6only"
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
      linux_kernel = {
        release = "1";
        vermagic = "735614b53989e9f13dc0646546e28b44";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama5d2-icp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "384bdfaaf33fcc32d30e1f5477ee461399e9b5b87e62bd8b49fda4c6b223e0b2";
              sha256_unsigned = "384bdfaaf33fcc32d30e1f5477ee461399e9b5b87e62bd8b49fda4c6b223e0b2";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sama5d2-icp"
          ];
          titles = [
            {
              model = "SAMA5D2 ICP";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-ptc-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "14f0c6b8c57085693104acacb04ba1adbc9cb1568413105803c2352c07d5f7bc";
              sha256_unsigned = "14f0c6b8c57085693104acacb04ba1adbc9cb1568413105803c2352c07d5f7bc";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-ptc_ek"
          ];
          titles = [
            {
              model = "SAMA5D2 PTC Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "85bfa4a312aac51825824cdbf3cfcd4e38c45eeb6bbdc17f722b54ead9b659bd";
              sha256_unsigned = "85bfa4a312aac51825824cdbf3cfcd4e38c45eeb6bbdc17f722b54ead9b659bd";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-xplained"
          ];
          titles = [
            {
              model = "SAMA5D2 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-som1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "1adaa1d027d966d79554218302baa00c12093ddafffc605606adea104c6830a9";
              sha256_unsigned = "1adaa1d027d966d79554218302baa00c12093ddafffc605606adea104c6830a9";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d27-som1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 SOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-wlsom1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "656c08846afdcd9bcf871b7c2f46d6a98e8a30933147224b1122ff9a4f860f87";
              sha256_unsigned = "656c08846afdcd9bcf871b7c2f46d6a98e8a30933147224b1122ff9a4f860f87";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d27-wlsom1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 WSOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d3-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              sha256_unsigned = "5eebd4cfa44926852638309528b0e415a47ea125c382dfa28a8a28c8fd54c517";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              sha256_unsigned = "ca77d6f255cadaf57b3c6601e72f953205405f5fa35830c483a957f70d403fbf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "1ffd44b131dc7a7bd8da8babd4557d6f60b3cc114838ab0d9dbf0523f2973693";
              sha256_unsigned = "1ffd44b131dc7a7bd8da8babd4557d6f60b3cc114838ab0d9dbf0523f2973693";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              sha256_unsigned = "3a0bce71b46d6d164595be8c3501f5d16752da4cdbc4a2300848f14079cc3a84";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d3-xplained"
          ];
          titles = [
            {
              model = "SAMA5D3 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d4-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "134dd4f254a0f2a94ee0fa34022aa47e816e39695971881f97cc9ab82ebc3f73";
              sha256_unsigned = "134dd4f254a0f2a94ee0fa34022aa47e816e39695971881f97cc9ab82ebc3f73";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "83f74920c3496fadd12c7ba3587c37e0933cb4036e8fcce657ef02eac19df938";
              sha256_unsigned = "83f74920c3496fadd12c7ba3587c37e0933cb4036e8fcce657ef02eac19df938";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "62c7bb37a95f0eb9aa0fd599f99992cd113bf03f9527b0c8a804b7dc90598960";
              sha256_unsigned = "62c7bb37a95f0eb9aa0fd599f99992cd113bf03f9527b0c8a804b7dc90598960";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "d39230657281e6b886dbd401122c5160ca52e267b130c8e3164ca84f07d52e0d";
              sha256_unsigned = "d39230657281e6b886dbd401122c5160ca52e267b130c8e3164ca84f07d52e0d";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d4-xplained"
          ];
          titles = [
            {
              model = "SAMA5D4 Xplained";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "at91/sama5";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
    sama7 = {
      arch_packages = "arm_cortex-a7_vfpv4";
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
        "odhcp6c"
        "odhcpd-ipv6only"
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
      linux_kernel = {
        release = "1";
        vermagic = "50d3a4839327c1a6e5f62525284688d2";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama7g5-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.6-at91-sama7-microchip_sama7g5-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama7-microchip_sama7g5-ek-ext4-root.ubi";
              sha256 = "df768e82628597c971968d7179caf4eecaca240f05df1a911882ea459db7e0e5";
              sha256_unsigned = "df768e82628597c971968d7179caf4eecaca240f05df1a911882ea459db7e0e5";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.6-at91-sama7-microchip_sama7g5-ek-ubifs-root.ubi";
              sha256 = "7d8d53f44973e7b27ef12eb03b07b412c7675c7aaf04c541b4e67eb0a7fd2c33";
              sha256_unsigned = "7d8d53f44973e7b27ef12eb03b07b412c7675c7aaf04c541b4e67eb0a7fd2c33";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.6-at91-sama7-microchip_sama7g5-ek-ext4-sdcard.img.gz";
              sha256 = "d1815a1a5d78ed3f5137c06c20dceec2ef9a1aeda14e4f3da3629db39341081b";
              sha256_unsigned = "d1815a1a5d78ed3f5137c06c20dceec2ef9a1aeda14e4f3da3629db39341081b";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.6-at91-sama7-microchip_sama7g5-ek-squashfs-root.ubi";
              sha256 = "77d665f29416c40cf6324f033f152f5d8eba9a74828d9cdfaf89c692a23caa97";
              sha256_unsigned = "77d665f29416c40cf6324f033f152f5d8eba9a74828d9cdfaf89c692a23caa97";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama7g5ek"
          ];
          titles = [
            {
              model = "SAMA7G5-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1756281355;
      target = "at91/sama7";
      version_code = "r28315-27c9bdb28c7a";
      version_number = "23.05.6";
    };
  };
}