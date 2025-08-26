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
          image_prefix = "immortalwrt-23.05.5-apm821xx-nand-meraki_mr24";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-meraki_mr24-initramfs-kernel.bin";
              sha256 = "7b93982f600e0938f506438becc46bf9bcd1456f4695a4f8713bf999a9254e44";
              sha256_unsigned = "7b93982f600e0938f506438becc46bf9bcd1456f4695a4f8713bf999a9254e44";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-meraki_mr24-squashfs-sysupgrade.bin";
              sha256 = "6eb92c9619eb218f7ceb32334e8bfc31a7e853df7545398a4c47dfeea322fa26";
              sha256_unsigned = "b61a93dca16674c8a8befb31f9bbb80dc7c40b144fc86702f667624ee1f059cd";
              type = "sysupgrade";
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
          image_prefix = "immortalwrt-23.05.5-apm821xx-nand-meraki_mx60";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-meraki_mx60-squashfs-sysupgrade.bin";
              sha256 = "712dfc264cc7e18b8c7dba09b2c9bd21c75262a2d6b39fd0771ab357460ed9ae";
              sha256_unsigned = "78886ee14c2d78741fbc7e9b2f7c1972f18aae9c573e15e777189e6a35e86d7c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-meraki_mx60-initramfs-kernel.bin";
              sha256 = "214f21e2e150f178a9ba7694a44edb85dadfbdfef0e78315821764e9832a1a75";
              sha256_unsigned = "214f21e2e150f178a9ba7694a44edb85dadfbdfef0e78315821764e9832a1a75";
              type = "kernel";
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
          image_prefix = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap620";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap620-squashfs-factory.img";
              sha256 = "c82b2b9bc2b3436ca5d3f78de34af56aa4b68ab1fc4a37f8289bb85b3bff3a99";
              sha256_unsigned = "c82b2b9bc2b3436ca5d3f78de34af56aa4b68ab1fc4a37f8289bb85b3bff3a99";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap620-squashfs-sysupgrade.bin";
              sha256 = "dc142a88dd402ca2e768e23bbd08ffa398eb803d4424975948317d765046c19a";
              sha256_unsigned = "849dd80569c3dfbdbd07941faeffaca935ae039e2c68ba8aa3659a37e2eeb237";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap620-initramfs-kernel.bin";
              sha256 = "528692cc6b93905143a6306e8705e2f7b3e869cedea73ccdb5179664e136fc63";
              sha256_unsigned = "528692cc6b93905143a6306e8705e2f7b3e869cedea73ccdb5179664e136fc63";
              type = "kernel";
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
          image_prefix = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap660";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap660-initramfs-kernel.bin";
              sha256 = "513ac6606e7f71e0efe1be3a5d944eee8b3690965edd995aa5ae8c6500ecb05e";
              sha256_unsigned = "513ac6606e7f71e0efe1be3a5d944eee8b3690965edd995aa5ae8c6500ecb05e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap660-squashfs-sysupgrade.bin";
              sha256 = "cccddb3a6086527849415c90c25f4e648cfdde04cef880b27911c32551cd9efb";
              sha256_unsigned = "50fb1b11dbd0fa6a40785d98e61ada36212105154e4525c0e60e5bbb3036056e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndap660-squashfs-factory.img";
              sha256 = "a90455458659438177ebc8e80fcb13bd26027d1592819fa62d075a57cc37f355";
              sha256_unsigned = "a90455458659438177ebc8e80fcb13bd26027d1592819fa62d075a57cc37f355";
              type = "factory";
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
          image_prefix = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndr4700";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndr4700-initramfs-kernel.bin";
              sha256 = "f47ad1f049e717df33afbfceeec15475f0461e0d6e24b3ec7216f8a25ece453f";
              sha256_unsigned = "f47ad1f049e717df33afbfceeec15475f0461e0d6e24b3ec7216f8a25ece453f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndr4700-squashfs-factory.img";
              sha256 = "0a855359215012c6acd86c304b7ca7b5648e973e44400e9c05c626c13bdd3867";
              sha256_unsigned = "0a855359215012c6acd86c304b7ca7b5648e973e44400e9c05c626c13bdd3867";
              type = "factory";
            }
            {
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndr4700-device-tree.dtb";
              sha256 = "92a397d295cb7c22e18bfc27e3e2fac48024497cef7209f622102429a10c8158";
              sha256_unsigned = "92a397d295cb7c22e18bfc27e3e2fac48024497cef7209f622102429a10c8158";
              type = "device-tree.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-nand-netgear_wndr4700-squashfs-sysupgrade.bin";
              sha256 = "2c768ad1e0c7eceb9fc8909febbb39176e4158198f4316a8e8e6f7a47d7db33b";
              sha256_unsigned = "1ab79f9299b6b14c76ea01d903173c935aa518db9c02193e4d100ce751873985";
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
      source_date_epoch = 1756121843;
      target = "apm821xx/nand";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
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
          image_prefix = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "7df402a6c438726e422cff8e40fec56e384344959ec911db5de0e6e3592d5712";
              sha256_unsigned = "7df402a6c438726e422cff8e40fec56e384344959ec911db5de0e6e3592d5712";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "c823649963f12ad5e75d8d697a1b8f1205bbf9bbf659e57c58bdd1d903df5e48";
              sha256_unsigned = "c823649963f12ad5e75d8d697a1b8f1205bbf9bbf659e57c58bdd1d903df5e48";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "2a06168360261606449fcc0e8aa6e49b1e049e34639538ce1f6ad37e00304f31";
              sha256_unsigned = "ba4bb243f6165f4f03509b877002f32d3912cde49c3e3c75178ed28bd984bde1";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "b5343fcccfb84024cd98f8ce62fa7e192917dc8f487d8c4d6c29784989fa3473";
              sha256_unsigned = "b5343fcccfb84024cd98f8ce62fa7e192917dc8f487d8c4d6c29784989fa3473";
              type = "factory";
            }
            {
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "28c2a8e0698c7742d14930c5576397c6b37ae1d7c02d494b5e5a7ef5d8e01c04";
              sha256_unsigned = "28c2a8e0698c7742d14930c5576397c6b37ae1d7c02d494b5e5a7ef5d8e01c04";
              type = "apollo3g.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "08947e26ed2e13a3f5b2dc8ce274d42b1c0d5bf1fcb25f588cfe16c88b2dc98d";
              sha256_unsigned = "9a5ebd7759297d6d89adc19520d7859c7bcd455dcf43f9d375c862ff8bf5640f";
              type = "sysupgrade";
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
      source_date_epoch = 1756121843;
      target = "apm821xx/sata";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  armsr = {
    armv8 = {
      arch_packages = "aarch64_generic";
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
        vermagic = "f5023b6424d7d658770c39d8cb8c3553";
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
          image_prefix = "immortalwrt-23.05.5-armsr-armv8-generic";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-squashfs-combined-efi.qcow2";
              sha256 = "782c163444917eb01ee8a39d2a4ccf73a3ef2fdd05b091dd0a4ce5539cad28fb";
              sha256_unsigned = "782c163444917eb01ee8a39d2a4ccf73a3ef2fdd05b091dd0a4ce5539cad28fb";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-squashfs-combined-efi.img.gz";
              sha256 = "69a07b9a8db5f52be78128752f5a06d4b12cb95cb17e8189ddffbe1ee3d5eda3";
              sha256_unsigned = "d3942c71440cfbec7cfdebcecae8b2c0aa5a92dc43f804e222d00f7f7d2da206";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-ext4-rootfs.img.gz";
              sha256 = "7a73c80f8eb28c81f56bd2d59c59cab7b15302f2a7b4c25a5d67847af4d025c3";
              sha256_unsigned = "7a73c80f8eb28c81f56bd2d59c59cab7b15302f2a7b4c25a5d67847af4d025c3";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-ext4-combined-efi.vmdk";
              sha256 = "b8ada36cc0b25e2beb1ff8ed193377f619f2264a94f950c1839466fd2f0febac";
              sha256_unsigned = "b8ada36cc0b25e2beb1ff8ed193377f619f2264a94f950c1839466fd2f0febac";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-squashfs-rootfs.img.gz";
              sha256 = "970b519a37aecf1f52a3f00aa0ac7bc20f2226eb993a144a0145e9101aaf7c02";
              sha256_unsigned = "970b519a37aecf1f52a3f00aa0ac7bc20f2226eb993a144a0145e9101aaf7c02";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-initramfs-kernel.bin";
              sha256 = "adc77edceecff1b586ccd83b0335c8bfd6f62bbb8be06b8bbec95fe347042ac8";
              sha256_unsigned = "adc77edceecff1b586ccd83b0335c8bfd6f62bbb8be06b8bbec95fe347042ac8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-squashfs-combined-efi.vmdk";
              sha256 = "263a58e91a87202794be88e7da5acf6e1a7e6b682716525dfc5e13e265159006";
              sha256_unsigned = "263a58e91a87202794be88e7da5acf6e1a7e6b682716525dfc5e13e265159006";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-ext4-combined-efi.img.gz";
              sha256 = "a958804f41f094a6576cda30093a33575a7812b93a8e3899f75777d6d9eb7b50";
              sha256_unsigned = "e2b8ca3932248722403929daa8a5bdf7c6d1233735298abebe866712a1a6045c";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-armsr-armv8-generic-ext4-combined-efi.qcow2";
              sha256 = "3501caefd8d130d67e74ceb5015ac0b95de72e3040211e27433659e7e9e187c3";
              sha256_unsigned = "3501caefd8d130d67e74ceb5015ac0b95de72e3040211e27433659e7e9e187c3";
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
      source_date_epoch = 1756121843;
      target = "armsr/armv8";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "59d58bd85e53cee69316263bebbc358a015bb628d592306f2735cae3bdd07df8";
              sha256_unsigned = "59d58bd85e53cee69316263bebbc358a015bb628d592306f2735cae3bdd07df8";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "b6018957525a524705077c62e1f44ae0d98744cb2a0c8a4357932335863b761f";
              sha256_unsigned = "b6018957525a524705077c62e1f44ae0d98744cb2a0c8a4357932335863b761f";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "1c67f4a686e7081a13a4e04ec1b7bd2688805b64f7bef9e357716c2035b3f0ae";
              sha256_unsigned = "1c67f4a686e7081a13a4e04ec1b7bd2688805b64f7bef9e357716c2035b3f0ae";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "ec9210d85acd404fcdfb61715dd91faaf7f4e6af2c3bc0064dd7468edc5c1457";
              sha256_unsigned = "ec9210d85acd404fcdfb61715dd91faaf7f4e6af2c3bc0064dd7468edc5c1457";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "7f3e4ae4a812a499fad0adb56361a7f325a3a72c9da66a38ec570d1e72b10200";
              sha256_unsigned = "7f3e4ae4a812a499fad0adb56361a7f325a3a72c9da66a38ec570d1e72b10200";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "4fb42c4a13474f5e5914f6056db132f2b1c08288189787376482959fb4b0595c";
              sha256_unsigned = "4fb42c4a13474f5e5914f6056db132f2b1c08288189787376482959fb4b0595c";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "768a59ba39be408d04b56a67a5a855f07ad9606fbcf855541b36700a259f122f";
              sha256_unsigned = "768a59ba39be408d04b56a67a5a855f07ad9606fbcf855541b36700a259f122f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "a36adcd7c9fff48caf95cbddd6685e21ad816b509d9904c704f24e44e84bf420";
              sha256_unsigned = "a36adcd7c9fff48caf95cbddd6685e21ad816b509d9904c704f24e44e84bf420";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "ef778f0399aad723dd9e1235465f30b6016049db0b6d3606442d0bc4b9c8b401";
              sha256_unsigned = "ef778f0399aad723dd9e1235465f30b6016049db0b6d3606442d0bc4b9c8b401";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "005fc14a197e822c11c9acf6d43cf4f37486b1173d1db99d775278c4f0f0694f";
              sha256_unsigned = "005fc14a197e822c11c9acf6d43cf4f37486b1173d1db99d775278c4f0f0694f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "2cde2c3926f9b3d871d490fc1e265039166180ad8873c2b730654536c2f413b9";
              sha256_unsigned = "2cde2c3926f9b3d871d490fc1e265039166180ad8873c2b730654536c2f413b9";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "724496a10a052c22e83196ebfb828de281d5b54db54ff20716419a2771e7a5fd";
              sha256_unsigned = "724496a10a052c22e83196ebfb828de281d5b54db54ff20716419a2771e7a5fd";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "0956043671d38673dafdb1efff95da79788a58e0370286b8ffa6bbe094509759";
              sha256_unsigned = "0956043671d38673dafdb1efff95da79788a58e0370286b8ffa6bbe094509759";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "e2726ad79d01051ab85e12b82129055ec527fffdae619607fd0af85f177eea1e";
              sha256_unsigned = "e2726ad79d01051ab85e12b82129055ec527fffdae619607fd0af85f177eea1e";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "c2cb92551d7ea17bbe93ac6307b3a0ca7d1450701b81378e9edf7c322273495d";
              sha256_unsigned = "c2cb92551d7ea17bbe93ac6307b3a0ca7d1450701b81378e9edf7c322273495d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "0fa0f42660545b313cf980d4b29565fea82a91e0992c671857e4e805481b1ada";
              sha256_unsigned = "0fa0f42660545b313cf980d4b29565fea82a91e0992c671857e4e805481b1ada";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "30c55aca0bc6474a06f173e486eb7d188c82d3a3cda2022bc74b091cad869a41";
              sha256_unsigned = "30c55aca0bc6474a06f173e486eb7d188c82d3a3cda2022bc74b091cad869a41";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "96287c41e42d3ca98d6b39d9aa4b6e2b8bf8576f18ddcdca16cefda0162e475b";
              sha256_unsigned = "96287c41e42d3ca98d6b39d9aa4b6e2b8bf8576f18ddcdca16cefda0162e475b";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "dd7d5e69e72c71443f24353ce7fb206ea893f4215400bfae7ecb302d082fd01f";
              sha256_unsigned = "dd7d5e69e72c71443f24353ce7fb206ea893f4215400bfae7ecb302d082fd01f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "c0ce4a488f198b0ad2b2397ff85c6efce13959acb32e16f2f2422b31b586b189";
              sha256_unsigned = "c0ce4a488f198b0ad2b2397ff85c6efce13959acb32e16f2f2422b31b586b189";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "dc77cc73c26f3c198fe71b82b791401db384dd03749f8386c72a9a14ea64b348";
              sha256_unsigned = "dc77cc73c26f3c198fe71b82b791401db384dd03749f8386c72a9a14ea64b348";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "f20c380ad6709515fb2b0e613ae852ac520c485450cd5f3f3a97e8ce200407ba";
              sha256_unsigned = "f20c380ad6709515fb2b0e613ae852ac520c485450cd5f3f3a97e8ce200407ba";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "38aabc17f1573e39df8d5d018a99eb85640fa3b078162855790b4caf4bfe80a7";
              sha256_unsigned = "38aabc17f1573e39df8d5d018a99eb85640fa3b078162855790b4caf4bfe80a7";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "64e8af32ccd980ed5edcf9901597f5153a68994046e942845594bec21549a0d9";
              sha256_unsigned = "64e8af32ccd980ed5edcf9901597f5153a68994046e942845594bec21549a0d9";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "a1c961ec880c7626e9680543e0723073accdee548927039de843b684f91c7245";
              sha256_unsigned = "a1c961ec880c7626e9680543e0723073accdee548927039de843b684f91c7245";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "5eae823f4f3c5904aecc93cdaece612db5be29d06869797740075391c4274b24";
              sha256_unsigned = "5eae823f4f3c5904aecc93cdaece612db5be29d06869797740075391c4274b24";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "5d6bea8c92a4ee3521f6e1f6181f1fdb116e341520559f3391dd201fc3b462ae";
              sha256_unsigned = "5d6bea8c92a4ee3521f6e1f6181f1fdb116e341520559f3391dd201fc3b462ae";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "196265eeae46e15593821542c4ebae892f333a69941bce82b0803b3b9f15fc64";
              sha256_unsigned = "196265eeae46e15593821542c4ebae892f333a69941bce82b0803b3b9f15fc64";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "b4ff2329cd402f7b56f7da7e79dc93d28781ef85d51fe9bc761844a4586538c3";
              sha256_unsigned = "b4ff2329cd402f7b56f7da7e79dc93d28781ef85d51fe9bc761844a4586538c3";
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
          image_prefix = "immortalwrt-23.05.5-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              sha256_unsigned = "a152fd22c5754b527fe91aeff362b11919f9bc7b445d438ba0b4079a848e0cf1";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              sha256_unsigned = "6690831e64f93d6d0ce567ede8c76cdc48e74ce030613614ca4324e1c699a1ab";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "1eef8ba8509330ea730ecb9a237463c7b4f05915916c560b4c952432d827ab95";
              sha256_unsigned = "1eef8ba8509330ea730ecb9a237463c7b4f05915916c560b4c952432d827ab95";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
              sha256_unsigned = "c6e6af9995f333b01fde7e6b4e60d88e058ad40d9f070933b91fcc0c9e7552f8";
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
      source_date_epoch = 1756121843;
      target = "at91/sam9x";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "c311839cf174a46f0a9d356bb2aee70e74ead1b0eaeca6efb40206ee94ac35a1";
              sha256_unsigned = "c311839cf174a46f0a9d356bb2aee70e74ead1b0eaeca6efb40206ee94ac35a1";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "b78895b8ba88c3a078481a58a7611e6c5fad9b00a34299d055742a5a10f6bad5";
              sha256_unsigned = "b78895b8ba88c3a078481a58a7611e6c5fad9b00a34299d055742a5a10f6bad5";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "294e60a5b3aa8f2db9282ad61992ce9a09c6e79667aa018f7647daf5c394ce7a";
              sha256_unsigned = "294e60a5b3aa8f2db9282ad61992ce9a09c6e79667aa018f7647daf5c394ce7a";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "047594180be33b48dffac63d6707c6445e14a2c106e40c84e607576b0ca1fd2a";
              sha256_unsigned = "047594180be33b48dffac63d6707c6445e14a2c106e40c84e607576b0ca1fd2a";
              type = "sdcard";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "ee353026931e4ecf72204f73f5ee765862488240364000c189069e9d45d1cbbf";
              sha256_unsigned = "ee353026931e4ecf72204f73f5ee765862488240364000c189069e9d45d1cbbf";
              type = "sdcard";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              sha256_unsigned = "877b7a78d2ca4679d253dd4c7c0658fbba5e8a658a721d05d32a42ea984f30f6";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              sha256_unsigned = "d461c61ed6073ab3fc3c7065ba7676165006a3404986160ddeb1e57bc7a5ac39";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              sha256_unsigned = "c9dbdcad3ab84dfb504054133a455dd9241ab13367a49e3bd419edbdb9411190";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "4e89cbb230e9aac99be23aa1b9931d2a424da8921b816deca670f52f7ee1e2d0";
              sha256_unsigned = "4e89cbb230e9aac99be23aa1b9931d2a424da8921b816deca670f52f7ee1e2d0";
              type = "sdcard";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "94bc46aa693d8b68c7b97d6f30f968a517eaed02aa918bbe31902b6cfd42f4f9";
              sha256_unsigned = "94bc46aa693d8b68c7b97d6f30f968a517eaed02aa918bbe31902b6cfd42f4f9";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "6a7deb37bb3e4529717f925182ef8e3d26cbc42e109816b7536c32341978d7a6";
              sha256_unsigned = "6a7deb37bb3e4529717f925182ef8e3d26cbc42e109816b7536c32341978d7a6";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "d7062b5e65169ff1de8cc02036f6cc99ff7fcce78e89c4269b463bf50e5f69f0";
              sha256_unsigned = "d7062b5e65169ff1de8cc02036f6cc99ff7fcce78e89c4269b463bf50e5f69f0";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "6e44274355e3398c90610e4a64a61ca9c09679b39f8e64fb08efb47680165a94";
              sha256_unsigned = "6e44274355e3398c90610e4a64a61ca9c09679b39f8e64fb08efb47680165a94";
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
      source_date_epoch = 1756121843;
      target = "at91/sama5";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
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
          image_prefix = "immortalwrt-23.05.5-at91-sama7-microchip_sama7g5-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama7-microchip_sama7g5-ek-ext4-sdcard.img.gz";
              sha256 = "3a18ae43f68980d06ca2d0b80c817d04b236f2d96c877afcfcd8effed39d5baa";
              sha256_unsigned = "3a18ae43f68980d06ca2d0b80c817d04b236f2d96c877afcfcd8effed39d5baa";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-23.05.5-at91-sama7-microchip_sama7g5-ek-ubifs-root.ubi";
              sha256 = "b3f0157a49f03c6be7808088e6014965d269171b78e9cde2b31a4a74a134576d";
              sha256_unsigned = "b3f0157a49f03c6be7808088e6014965d269171b78e9cde2b31a4a74a134576d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-at91-sama7-microchip_sama7g5-ek-squashfs-root.ubi";
              sha256 = "2e93b242f4148974d08e64cf27f34315353bbecc137823023fd63968af43a4d9";
              sha256_unsigned = "2e93b242f4148974d08e64cf27f34315353bbecc137823023fd63968af43a4d9";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-at91-sama7-microchip_sama7g5-ek-ext4-root.ubi";
              sha256 = "26eeeca56a8b2c6e5ccb4a3b2cac52a455e9de5f62df49c1ec1025d12956d8bc";
              sha256_unsigned = "26eeeca56a8b2c6e5ccb4a3b2cac52a455e9de5f62df49c1ec1025d12956d8bc";
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
      source_date_epoch = 1756121843;
      target = "at91/sama7";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  ath79 = {
    generic = {
      arch_packages = "mips_24kc";
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6a1fb234f042e09a3b1e10ffdeb32ec2";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        "8dev_carambola2" = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-8dev_carambola2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-8dev_carambola2-initramfs-kernel.bin";
              sha256 = "afb2ad4fb626f2cfff98e4b1111eb892b7cb5003593a406872bc827b9aa6a6f0";
              sha256_unsigned = "afb2ad4fb626f2cfff98e4b1111eb892b7cb5003593a406872bc827b9aa6a6f0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-8dev_carambola2-squashfs-sysupgrade.bin";
              sha256 = "e0dfb04e68406732449dcf110ae67d73b2362559c6d2c49726e0bae4ede4f04a";
              sha256_unsigned = "d1bd24efb63673555f9e245d5c4ca985364204b5ba33f62bb47f48b460585fcf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "8dev,carambola2"
            "carambola2"
          ];
          titles = [
            {
              model = "Carambola2";
              vendor = "8devices";
            }
          ];
        };
        "8dev_lima" = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-8dev_lima";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-8dev_lima-initramfs-kernel.bin";
              sha256 = "cdc784ab162a0c595d807f8bb436b7ce9cb1d6bfeaa0ff46c968228a4f90c2cf";
              sha256_unsigned = "cdc784ab162a0c595d807f8bb436b7ce9cb1d6bfeaa0ff46c968228a4f90c2cf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-8dev_lima-squashfs-sysupgrade.bin";
              sha256 = "91fe4f3d5707934f9502fd2aaec5ea8463c5c3d348e5d156ebaf3e4231dd0553";
              sha256_unsigned = "cd7c8d28a3f5a2fa5887287e945f30e8203396f6489bfbf9cdb5af5cc64399a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "8dev,lima"
            "lima"
          ];
          titles = [
            {
              model = "Lima";
              vendor = "8devices";
            }
          ];
        };
        adtran_bsap1800-v2 = {
          device_packages = [
            "-swconfig"
            "-uboot-envtools"
            "fconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1800-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1800-v2-squashfs-rootfs.bin";
              sha256 = "3467f28c7bea8edf5cc95f71c19e0f34a061f520c660fc10ce11c8e5b9906f81";
              sha256_unsigned = "3467f28c7bea8edf5cc95f71c19e0f34a061f520c660fc10ce11c8e5b9906f81";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1800-v2-initramfs-kernel.bin";
              sha256 = "e9c0b41abb83fd9d9e981a4730e20a2bf416612e2f31838c338b4035c5f52fbf";
              sha256_unsigned = "e9c0b41abb83fd9d9e981a4730e20a2bf416612e2f31838c338b4035c5f52fbf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1800-v2-squashfs-kernel.bin";
              sha256 = "70f1f6c4b98188b315f73bbbd695e8f4cb3d9d7b4109a24ac41b5d297889bf4f";
              sha256_unsigned = "70f1f6c4b98188b315f73bbbd695e8f4cb3d9d7b4109a24ac41b5d297889bf4f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1800-v2-squashfs-sysupgrade.bin";
              sha256 = "2b10a33c7f394c1411288e0c35bf899e053c03ab2e4cfa49cb3aa7f7975ad912";
              sha256_unsigned = "0c9bc91e7d06943891b86769853bf35643479c3d154e59af5e68720e49fa8be7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "adtran,bsap1800-v2"
          ];
          titles = [
            {
              model = "BSAP-1800";
              variant = "v2";
              vendor = "Adtran/Bluesocket";
            }
          ];
        };
        adtran_bsap1840 = {
          device_packages = [
            "-swconfig"
            "-uboot-envtools"
            "fconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1840";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1840-squashfs-kernel.bin";
              sha256 = "89d011901a2972cc1a6367ca95edfe0bfae18a4f82bbc9d0d5f01f5a3a3f73cb";
              sha256_unsigned = "89d011901a2972cc1a6367ca95edfe0bfae18a4f82bbc9d0d5f01f5a3a3f73cb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1840-squashfs-rootfs.bin";
              sha256 = "3467f28c7bea8edf5cc95f71c19e0f34a061f520c660fc10ce11c8e5b9906f81";
              sha256_unsigned = "3467f28c7bea8edf5cc95f71c19e0f34a061f520c660fc10ce11c8e5b9906f81";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1840-initramfs-kernel.bin";
              sha256 = "13703028b9a7ba10d3b237b616d0a043b49f3ee28bea50572ac56905c6f92461";
              sha256_unsigned = "13703028b9a7ba10d3b237b616d0a043b49f3ee28bea50572ac56905c6f92461";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-adtran_bsap1840-squashfs-sysupgrade.bin";
              sha256 = "31259566b6c3829b8eb7ad8a39089f78d259612c5f3359c94e2e437d8473b448";
              sha256_unsigned = "e511c0b71299db1c683db50e2ee1fae2cfb3c16a91521a8ee0f8164105e27de7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "adtran,bsap1840"
          ];
          titles = [
            {
              model = "BSAP-1840";
              vendor = "Adtran/Bluesocket";
            }
          ];
        };
        airtight_c-75 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-airtight_c-75";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-airtight_c-75-squashfs-sysupgrade.bin";
              sha256 = "47ed9df0ed2efeb9bccf23bc06a9093052201197c49b97d170c18c275e4ad7cf";
              sha256_unsigned = "d064fc05ecb57915e5f4902b8bfe4c37b62a53f1352e40d70cc04e63ffcf9412";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-airtight_c-75-initramfs-kernel.bin";
              sha256 = "0bb91a81bc03edc4ba025c7dace8dba0dc02679e198dcb7d62706f9c2229eb59";
              sha256_unsigned = "0bb91a81bc03edc4ba025c7dace8dba0dc02679e198dcb7d62706f9c2229eb59";
              type = "kernel";
            }
          ];
          supported_devices = [
            "airtight,c-75"
          ];
          titles = [
            {
              model = "C-75";
              vendor = "AirTight Networks";
            }
            {
              model = "C-75";
              vendor = "Mojo Networks";
            }
            {
              model = "AP320";
              vendor = "WatchGuard";
            }
          ];
        };
        alcatel_hh40v = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-serial-option"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alcatel_hh40v";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alcatel_hh40v-squashfs-sysupgrade.bin";
              sha256 = "ff24345bd74a5366a2ee86523e26eb184b46f772c5d5e82fe506880d10bf6d46";
              sha256_unsigned = "a7957783fc6cbe7fe82ed71f8a1d8bfa66d63d7af44d6023df4d54a25973fd05";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alcatel_hh40v-squashfs-factory.bin";
              sha256 = "1fbe3231a285b36f27068fd8e595972112fa46320dd4f1400462c708a53a6a70";
              sha256_unsigned = "1fbe3231a285b36f27068fd8e595972112fa46320dd4f1400462c708a53a6a70";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alcatel_hh40v-initramfs-kernel.bin";
              sha256 = "927deda13a570436f2dc2092febbcace60854f56564f445e611ba2f169aaccc1";
              sha256_unsigned = "927deda13a570436f2dc2092febbcace60854f56564f445e611ba2f169aaccc1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "alcatel,hh40v"
          ];
          titles = [
            {
              model = "HH40V";
              vendor = "Alcatel";
            }
          ];
        };
        alfa-network_ap121f = {
          device_packages = [
            "kmod-usb-chipidea2"
            "kmod-usb-storage"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121f";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121f-squashfs-sysupgrade.bin";
              sha256 = "10101e8ac206dd6aa6cc5189188526b55c648d7cbb90892cc5f054ed240a3284";
              sha256_unsigned = "147e97074da7054489b9a16b6b7c40a8d45494111f11feba82d735c4af8faffe";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121f-initramfs-kernel.bin";
              sha256 = "aeacf36e6ab339f1930c66f02f42c7bc22df2a2e304330121de26b5e3a277e98";
              sha256_unsigned = "aeacf36e6ab339f1930c66f02f42c7bc22df2a2e304330121de26b5e3a277e98";
              type = "kernel";
            }
          ];
          supported_devices = [
            "alfa-network,ap121f"
            "ap121f"
          ];
          titles = [
            {
              model = "AP121F";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_ap121fe = {
          device_packages = [
            "kmod-usb-chipidea2"
            "kmod-usb-gadget-eth"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121fe";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121fe-initramfs-kernel.bin";
              sha256 = "28a0d593447aa003e103b4e62789b3a1da382b99249880e2209a78d97832bb27";
              sha256_unsigned = "28a0d593447aa003e103b4e62789b3a1da382b99249880e2209a78d97832bb27";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_ap121fe-squashfs-sysupgrade.bin";
              sha256 = "d2ed1f7e6e4e7cccdfc0235b7dadb5cfb9b401dc3d75ee9894e0e325d887c3a8";
              sha256_unsigned = "3273fccf91343b750cee7143459a050dbc42df0ddbe7654c0b4c5dee8fd5bfcc";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "alfa-network,ap121fe"
          ];
          titles = [
            {
              model = "AP121FE";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_n2q = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-gpio-pcf857x"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_n2q";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_n2q-initramfs-kernel.bin";
              sha256 = "5b53918a63e9feaa6a3c7602fab921c67db117ba4060392854546bec59b63aa5";
              sha256_unsigned = "5b53918a63e9feaa6a3c7602fab921c67db117ba4060392854546bec59b63aa5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_n2q-squashfs-sysupgrade.bin";
              sha256 = "a33b0f9be2c2965e311111a21b49ac23b554c675cd6d844678ade5ad3b8693b8";
              sha256_unsigned = "0941268ce6e7030d8fb427be02eec70f8d06504d4f669a05d42971f445ebd0c2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "alfa-network,n2q"
          ];
          titles = [
            {
              model = "N2Q";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_n5q = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_n5q";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_n5q-squashfs-sysupgrade.bin";
              sha256 = "690d5809d700249cc60b988ac6bab1d031c4d88a0bc815a784bf62c719ea0ae9";
              sha256_unsigned = "7b0e914fbc951952eaffc839db8febd633c785787bda7f0c4fc3d50a31cd78d4";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_n5q-initramfs-kernel.bin";
              sha256 = "44293c8e267f4bc49d7c20ca6278c0b33dea94f98c7d7caa88e1246d71b40c5d";
              sha256_unsigned = "44293c8e267f4bc49d7c20ca6278c0b33dea94f98c7d7caa88e1246d71b40c5d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "alfa-network,n5q"
            "n5q"
          ];
          titles = [
            {
              model = "N5Q";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_pi-wifi4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_pi-wifi4";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_pi-wifi4-initramfs-kernel.bin";
              sha256 = "1098a7682f8215a309e4483a2aa2e2197752a217ec4e47fd9ff67bfed4c0f73e";
              sha256_unsigned = "1098a7682f8215a309e4483a2aa2e2197752a217ec4e47fd9ff67bfed4c0f73e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_pi-wifi4-squashfs-sysupgrade.bin";
              sha256 = "1237e0a78426e36ed70a2230fe1c857825d2d72aaedde8fe55abd42f5d67268c";
              sha256_unsigned = "b25ffa43111399d399911e3f3a4e1d3773faf19d9d4348af5d77514cf7b01388";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "alfa-network,pi-wifi4"
          ];
          titles = [
            {
              model = "Pi-WiFi4";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_r36a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_r36a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_r36a-initramfs-kernel.bin";
              sha256 = "8259c50b6b43536fc3282806f55ba7cff63b60f75070efe3a098740d7430bd77";
              sha256_unsigned = "8259c50b6b43536fc3282806f55ba7cff63b60f75070efe3a098740d7430bd77";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_r36a-squashfs-sysupgrade.bin";
              sha256 = "9a11504f0168a84a16833c4ed68888a2912f21e05a22602a4143e495909d0fb3";
              sha256_unsigned = "0e5ef3722c4fecc5210296cde3060f7c3639cb69e2b14fa8f8f1fe5ca6b634d0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "alfa-network,r36a"
            "r36a"
          ];
          titles = [
            {
              model = "R36A";
              vendor = "ALFA Network";
            }
          ];
        };
        alfa-network_tube-2hq = {
          device_packages = [
            "rssileds"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-alfa-network_tube-2hq";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_tube-2hq-squashfs-sysupgrade.bin";
              sha256 = "92ce671385e05d49de50621d0e212025ea05bbcb54b17d217594569e2c618ed6";
              sha256_unsigned = "557e6965666945235674c6b09efc349b5f7a64a0fde76ea8030483ae5fb3c939";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-alfa-network_tube-2hq-initramfs-kernel.bin";
              sha256 = "dae60e7eb2d4825d50c01dd7e427fd0788bd04c1eb898b411b54efe327dd30f3";
              sha256_unsigned = "dae60e7eb2d4825d50c01dd7e427fd0788bd04c1eb898b411b54efe327dd30f3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "alfa-network,tube-2hq"
            "tube-2hq"
          ];
          titles = [
            {
              model = "Tube-2HQ";
              vendor = "ALFA Network";
            }
          ];
        };
        allnet_all-wap02860ac = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-allnet_all-wap02860ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-allnet_all-wap02860ac-initramfs-kernel.bin";
              sha256 = "50a38a4ce8a2ebab2edd9ba8d4d7b4215312a26425d9f1cb25a12c4e44b2780d";
              sha256_unsigned = "50a38a4ce8a2ebab2edd9ba8d4d7b4215312a26425d9f1cb25a12c4e44b2780d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-allnet_all-wap02860ac-squashfs-sysupgrade.bin";
              sha256 = "dbeeb8afa44c53c6613a60471e3d36970e00395b2b577f5a3acce51a35bc4792";
              sha256_unsigned = "e9dfb2599db43bcc228c60683e3cde732e52315cc88f8fd602aa9cf0b4c225b5";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-allnet_all-wap02860ac-squashfs-factory.bin";
              sha256 = "e4827b0818ffac0c8680bf7a69b3a6cadd9983258bc10a510800fa4d83f67870";
              sha256_unsigned = "e4827b0818ffac0c8680bf7a69b3a6cadd9983258bc10a510800fa4d83f67870";
              type = "factory";
            }
          ];
          supported_devices = [
            "allnet,all-wap02860ac"
          ];
          titles = [
            {
              model = "ALL-WAP02860AC";
              vendor = "ALLNET";
            }
          ];
        };
        araknis_an-300-ap-i-n = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-araknis_an-300-ap-i-n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-300-ap-i-n-squashfs-factory.bin";
              sha256 = "118168501e8238b328a5956ae876c009966202c388b2ab7187a016d1d2bb0f62";
              sha256_unsigned = "118168501e8238b328a5956ae876c009966202c388b2ab7187a016d1d2bb0f62";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-300-ap-i-n-initramfs-kernel.bin";
              sha256 = "78c9e987e79ac5bc4fb127a30b9337253aa633841daf4128002dd0f273c8f524";
              sha256_unsigned = "78c9e987e79ac5bc4fb127a30b9337253aa633841daf4128002dd0f273c8f524";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-300-ap-i-n-squashfs-sysupgrade.bin";
              sha256 = "52d330b11511d9ab363743fd2a0d3000d746bc9133a11f63a2af7ba7c7f4913f";
              sha256_unsigned = "6f940a02e1531b8bd37e63f5cabb99b19151461bec6e9b44a45a0d39ce973994";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "araknis,an-300-ap-i-n"
          ];
          titles = [
            {
              model = "AN-300-AP-I-N";
              vendor = "Araknis";
            }
          ];
        };
        araknis_an-500-ap-i-ac = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-araknis_an-500-ap-i-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-500-ap-i-ac-squashfs-sysupgrade.bin";
              sha256 = "9792c6ad8c93f0205328c285f7a78d9d12589a6b2ce728e24c6b55e2b2f90903";
              sha256_unsigned = "5b4868ec3f9ddc7a71c37e5ff4357608ed7e496d337b2cc0a808ed7485692d31";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-500-ap-i-ac-squashfs-factory.bin";
              sha256 = "a82ecf439997b198c6e0337f16e3248fb3253448501992d7f7ae7848b5101439";
              sha256_unsigned = "a82ecf439997b198c6e0337f16e3248fb3253448501992d7f7ae7848b5101439";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-500-ap-i-ac-initramfs-kernel.bin";
              sha256 = "123042e0a80d6cc1ec29df3470becf454291585f2a415c13c2f53940e7fc424f";
              sha256_unsigned = "123042e0a80d6cc1ec29df3470becf454291585f2a415c13c2f53940e7fc424f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "araknis,an-500-ap-i-ac"
          ];
          titles = [
            {
              model = "AN-500-AP-I-AC";
              vendor = "Araknis";
            }
          ];
        };
        araknis_an-700-ap-i-ac = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-araknis_an-700-ap-i-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-700-ap-i-ac-squashfs-sysupgrade.bin";
              sha256 = "a5867d89fbb01f86af31bc11429232f03392055ad7746d2571d81a27580cd514";
              sha256_unsigned = "90c51638e3a734574816300b1bd9d15ab39f25e38034cd7b6d2d1d9135903870";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-700-ap-i-ac-squashfs-factory.bin";
              sha256 = "5f12a1decc337649431fe0834dc66d4dfc2745995b143311e565163921ecd31f";
              sha256_unsigned = "5f12a1decc337649431fe0834dc66d4dfc2745995b143311e565163921ecd31f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-araknis_an-700-ap-i-ac-initramfs-kernel.bin";
              sha256 = "bdcd06d560637144edd14b71553a82b18998cc7e3ad8abb2802ae0bdf59050ee";
              sha256_unsigned = "bdcd06d560637144edd14b71553a82b18998cc7e3ad8abb2802ae0bdf59050ee";
              type = "kernel";
            }
          ];
          supported_devices = [
            "araknis,an-700-ap-i-ac"
          ];
          titles = [
            {
              model = "AN-700-AP-I-AC";
              vendor = "Araknis";
            }
          ];
        };
        arduino_yun = {
          device_packages = [
            "kmod-usb-chipidea2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "block-mount"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-arduino_yun";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-arduino_yun-squashfs-sysupgrade.bin";
              sha256 = "4afc6c926c55b69b61fbbe115cae14689c189679ea2f8ae36abbb0759e0f0df8";
              sha256_unsigned = "2189d8c4b8b14fa1f55596c17f12ad70a75683866200cb66b3292d3facce6cad";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-arduino_yun-initramfs-kernel.bin";
              sha256 = "5317a7c59411152f0108790a9874ecce3aecbbc56f74b7deb0a54e2962108590";
              sha256_unsigned = "5317a7c59411152f0108790a9874ecce3aecbbc56f74b7deb0a54e2962108590";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arduino,yun"
            "arduino-yun"
          ];
          titles = [
            {
              model = "Yun";
              vendor = "Arduino";
            }
          ];
        };
        aruba_ap-105 = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-tpm-i2c-atmel"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-aruba_ap-105";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-105-squashfs-sysupgrade.bin";
              sha256 = "46192c48c6694b2dab562f7db64610e76cabcda72b341be576489fa7170bacdc";
              sha256_unsigned = "c5f789591fe4d8beb2f86c202678a132cd4e7901043ac5f9391c2b6611aa2786";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-105-initramfs-kernel.bin";
              sha256 = "4998950029492f1509e0253223ea0d46901a9878f8cf1898f76baf841d48f716";
              sha256_unsigned = "4998950029492f1509e0253223ea0d46901a9878f8cf1898f76baf841d48f716";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aruba,ap-105"
          ];
          titles = [
            {
              model = "AP-105";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-115 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-aruba_ap-115";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-115-squashfs-sysupgrade.bin";
              sha256 = "0f0584d01d86bece462472bf75959dca089e14ba0028f51defcfea6f4b2f2a5b";
              sha256_unsigned = "ecbaf228eed33a1f7ee55df200d82005e008f6b61683f8316864f406b2dcac41";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-115-initramfs-kernel.bin";
              sha256 = "be9f725e4bc8c1badb5bb176c849dfd0ba9e65669c781f9744f5041e0c5727ff";
              sha256_unsigned = "be9f725e4bc8c1badb5bb176c849dfd0ba9e65669c781f9744f5041e0c5727ff";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aruba,ap-115"
          ];
          titles = [
            {
              model = "AP-115";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-175 = {
          device_packages = [
            "kmod-gpio-pca953x"
            "kmod-hwmon-lm75"
            "kmod-i2c-gpio"
            "kmod-rtc-ds1374"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-aruba_ap-175";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-175-squashfs-sysupgrade.bin";
              sha256 = "59475d44d9fb4eb6eb3c57442aef0924e97855430f349fd6827110d1d2e9ad59";
              sha256_unsigned = "b1a77de8986e2bfbe4f9ce4931ffe11845cb70c91ab4b884f9047218cf4bd219";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-aruba_ap-175-initramfs-kernel.bin";
              sha256 = "c42d4dcfb6649de8fc69e16da3ba166b05a961ae0e6a3242c836a2f85957f34b";
              sha256_unsigned = "c42d4dcfb6649de8fc69e16da3ba166b05a961ae0e6a3242c836a2f85957f34b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aruba,ap-175"
          ];
          titles = [
            {
              model = "AP-175";
              vendor = "Aruba";
            }
          ];
        };
        asus_pl-ac56 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-asus_pl-ac56";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_pl-ac56-squashfs-sysupgrade.bin";
              sha256 = "e933d71657038102ad253bbf747d4352fae8ecee1225482e310d949061b4820c";
              sha256_unsigned = "73088f173200ae584e4ac232b41bda8b8673e0819ae3e7e6350a21d85c47bcd2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_pl-ac56-initramfs-kernel.bin";
              sha256 = "2025773206b97f126bc50001d9601c26790bcc5b6aca703479c0d50c02f4ffd2";
              sha256_unsigned = "2025773206b97f126bc50001d9601c26790bcc5b6aca703479c0d50c02f4ffd2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_pl-ac56-squashfs-factory.bin";
              sha256 = "b86f5ea06dfbb7ef8de5cbaae780d5afcc350f02dc6995d574e15de5d6fbcd1a";
              sha256_unsigned = "b86f5ea06dfbb7ef8de5cbaae780d5afcc350f02dc6995d574e15de5d6fbcd1a";
              type = "factory";
            }
          ];
          supported_devices = [
            "asus,pl-ac56"
          ];
          titles = [
            {
              model = "PL-AC56";
              variant = "A1";
              vendor = "ASUS";
            }
          ];
        };
        asus_rp-ac51 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac51";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac51-squashfs-factory.bin";
              sha256 = "3472579df2325dc13a1d58ddbf982edbfc358a113ac4608fd6e9837e54b1c51a";
              sha256_unsigned = "3472579df2325dc13a1d58ddbf982edbfc358a113ac4608fd6e9837e54b1c51a";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac51-squashfs-sysupgrade.bin";
              sha256 = "6e885b7a8f960cddd384d863ce47652a81d53fadc0a5b5fa6ddfbc95c024cd71";
              sha256_unsigned = "58954a27dd1257352d9101121835fce80348f4f1ee16a938bb5b5b00e3071ebd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac51-initramfs-kernel.bin";
              sha256 = "5803d0df99808963d79d892a9657b483f881f706c496d014b4337963d2ba6a01";
              sha256_unsigned = "5803d0df99808963d79d892a9657b483f881f706c496d014b4337963d2ba6a01";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rp-ac51"
          ];
          titles = [
            {
              model = "RP-AC51";
              vendor = "ASUS";
            }
          ];
        };
        asus_rp-ac66 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac66";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac66-squashfs-sysupgrade.bin";
              sha256 = "d0489c67bf4f40a3f33545c65aeafb011ef25639fabf6b6a2f6958c871a908ba";
              sha256_unsigned = "916827d4b518c82e1d8a3b16ca5f42838cc24a3b1d86f5480de77cf6500f24c5";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac66-squashfs-factory.bin";
              sha256 = "2951ca50b6600e41bc7dbfc46dbec452b74bbd1bfc2794e697428816efd078eb";
              sha256_unsigned = "2951ca50b6600e41bc7dbfc46dbec452b74bbd1bfc2794e697428816efd078eb";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-asus_rp-ac66-initramfs-kernel.bin";
              sha256 = "0407074c2a70a2e907c765935a0726e165109c5395e1c951ef5e2b342cbbc382";
              sha256_unsigned = "0407074c2a70a2e907c765935a0726e165109c5395e1c951ef5e2b342cbbc382";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rp-ac66"
          ];
          titles = [
            {
              model = "RP-AC66";
              vendor = "ASUS";
            }
          ];
        };
        avm_fritz1750e = {
          device_packages = [
            "fritz-tffs"
            "rssileds"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-avm_fritz1750e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz1750e-squashfs-sysupgrade.bin";
              sha256 = "2955d9a688e2a4628f87ce19822594e6d88b2ccaff80bf69a0a60b12f34a3ac1";
              sha256_unsigned = "9f97e1c61c2a8fad85e22bf50b7081f3c0a030818e7defa33de0a882f3c14331";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz1750e-initramfs-kernel.bin";
              sha256 = "968d754f3c182a23dd0941a2aafa2182fd6d750a8873ea465c92ec91cc005c97";
              sha256_unsigned = "968d754f3c182a23dd0941a2aafa2182fd6d750a8873ea465c92ec91cc005c97";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz1750e"
          ];
          titles = [
            {
              model = "FRITZ!WLAN Repeater 1750E";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz300e = {
          device_packages = [
            "fritz-tffs"
            "rssileds"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-avm_fritz300e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz300e-squashfs-sysupgrade.bin";
              sha256 = "9b8c54698fe7a848c8e2bcf86154b6a9a3a08da54b5db3c946d346f17cdbe8e5";
              sha256_unsigned = "fd676a45485028cef596301ba4fe533368bbb410ec32a022c955837a66ca69ee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz300e-initramfs-kernel.bin";
              sha256 = "8948d6d17961d0e958826257f74fcf560b1dc3e9b3291836c4d05387fe7e34fa";
              sha256_unsigned = "8948d6d17961d0e958826257f74fcf560b1dc3e9b3291836c4d05387fe7e34fa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz300e"
            "fritz300e"
          ];
          titles = [
            {
              model = "FRITZ!WLAN Repeater 300E";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz4020 = {
          device_packages = [
            "fritz-tffs"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-avm_fritz4020";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz4020-initramfs-kernel.bin";
              sha256 = "443d24c84d9301f09bd96df102ab4664eb952ba1adc8babf73ab566a1a7acfa2";
              sha256_unsigned = "443d24c84d9301f09bd96df102ab4664eb952ba1adc8babf73ab566a1a7acfa2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz4020-squashfs-sysupgrade.bin";
              sha256 = "fe7c47b1b51e550adf43726c4be4c1d1c0354fa16919142c4afce6e93c9a2fd9";
              sha256_unsigned = "4e84374214e5d3ffa31c2d3b8742b14d99e41d96df393c52b3bda9005a9ed602";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz4020"
            "fritz4020"
          ];
          titles = [
            {
              model = "FRITZ!Box 4020";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz450e = {
          device_packages = [
            "fritz-tffs"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-avm_fritz450e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz450e-squashfs-sysupgrade.bin";
              sha256 = "6a9f7ba9eed9f3b09c1f21512a46995119aff1031c0fcbc4b8c8a2ab7c4af223";
              sha256_unsigned = "cdfc03313f58911b1e0f982ff59bf4f6ee5e1a141f7e213198143df2d8ab84aa";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritz450e-initramfs-kernel.bin";
              sha256 = "7ac17542a034760feba2e667b3e2859f8b736e64aa183f0154b8eeac04a36122";
              sha256_unsigned = "7ac17542a034760feba2e667b3e2859f8b736e64aa183f0154b8eeac04a36122";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz450e"
            "fritz450e"
          ];
          titles = [
            {
              model = "FRITZ!WLAN Repeater 450E";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzdvbc = {
          device_packages = [
            "fritz-tffs"
            "rssileds"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-avm_fritzdvbc";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritzdvbc-initramfs-kernel.bin";
              sha256 = "69e83d1c6622bc6f3045d201d4bee50a1111904ac14c42bff44891d216ad6408";
              sha256_unsigned = "69e83d1c6622bc6f3045d201d4bee50a1111904ac14c42bff44891d216ad6408";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-avm_fritzdvbc-squashfs-sysupgrade.bin";
              sha256 = "4ab4bd4954789737f2a4a2f01f8f7def4154b37c6be3be41d782864be2723b7d";
              sha256_unsigned = "e87337e94aa0770520f9acba71487ca1baf3a9e7766266c6e19e60f8ba455fbe";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzdvbc"
          ];
          titles = [
            {
              model = "FRITZ!WLAN Repeater DVB-C";
              vendor = "AVM";
            }
          ];
        };
        belkin_f9j1108-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-usb3"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-belkin_f9j1108-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9j1108-v2-squashfs-sysupgrade.bin";
              sha256 = "e54784602a24ddf2b656bb20de94dae394197db7503a4d05d6f1539bc91c765c";
              sha256_unsigned = "856fdcb90cd13b59251526abf174a9f122d0d291a56de6b077e03a81a2363a93";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9j1108-v2-squashfs-factory.bin";
              sha256 = "f0e6d8b241d43ae82f9864d85423bd29383d95b77c72b92ec5387c9c5694fb7a";
              sha256_unsigned = "f0e6d8b241d43ae82f9864d85423bd29383d95b77c72b92ec5387c9c5694fb7a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9j1108-v2-initramfs-kernel.bin";
              sha256 = "b56ef56398245b14c86061f9563cce36d056d307e79da3ee085f24013ae24871";
              sha256_unsigned = "b56ef56398245b14c86061f9563cce36d056d307e79da3ee085f24013ae24871";
              type = "kernel";
            }
          ];
          supported_devices = [
            "belkin,f9j1108-v2"
          ];
          titles = [
            {
              model = "F9J1108 v2 (AC1750 DB Wi-Fi)";
              vendor = "Belkin";
            }
          ];
        };
        belkin_f9k1115-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-usb3"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-belkin_f9k1115-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9k1115-v2-squashfs-factory.bin";
              sha256 = "5a533e3961113be7dafa1e71d8dc091638b03783070600f1111f6a972033b50b";
              sha256_unsigned = "5a533e3961113be7dafa1e71d8dc091638b03783070600f1111f6a972033b50b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9k1115-v2-initramfs-kernel.bin";
              sha256 = "dbc2925cb97abbf3e7642d171bf79e90b7f897e21db5e02f198c377b1a67a6d6";
              sha256_unsigned = "dbc2925cb97abbf3e7642d171bf79e90b7f897e21db5e02f198c377b1a67a6d6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-belkin_f9k1115-v2-squashfs-sysupgrade.bin";
              sha256 = "42ea12f62a6168ceba3f8ef17e9beb969dec7cca89d2fc6f0b46aa07dcc62564";
              sha256_unsigned = "35ad06e02226f2a923ad6f6aecc53c9b13112d77c20e951937dd3c2457ff1388";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "belkin,f9k1115-v2"
          ];
          titles = [
            {
              model = "F9K1115 v2 (AC1750 DB Wi-Fi)";
              vendor = "Belkin";
            }
          ];
        };
        buffalo_bhr-4grv = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv-squashfs-tftp.bin";
              sha256 = "f8a025117c52eeca853ac2391046f85fe7ad7c10dedd8e75df134ded3f0ab738";
              sha256_unsigned = "f8a025117c52eeca853ac2391046f85fe7ad7c10dedd8e75df134ded3f0ab738";
              type = "tftp";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv-squashfs-factory.bin";
              sha256 = "687691f90db35cdb9f37fb3764399e7b5cc45fe32fae960aef16fd6622f9a060";
              sha256_unsigned = "687691f90db35cdb9f37fb3764399e7b5cc45fe32fae960aef16fd6622f9a060";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv-squashfs-sysupgrade.bin";
              sha256 = "b328d47557fe24df9706b4907471ce70cfbc1ad3676ac1bc0edb92987b1c606a";
              sha256_unsigned = "b83a43bb9411af2a2e977451527689a3df87794e189d389816821a846ff7316b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv-initramfs-kernel.bin";
              sha256 = "f6ce5848fae2f4ed773c9d16ce8f09baf49bbc47c55497d17f0c80ae0a22d449";
              sha256_unsigned = "f6ce5848fae2f4ed773c9d16ce8f09baf49bbc47c55497d17f0c80ae0a22d449";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,bhr-4grv"
            "wzr-hp-g450h"
          ];
          titles = [
            {
              model = "BHR-4GRV";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_bhr-4grv2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv2-initramfs-kernel.bin";
              sha256 = "8635e0954b69367087781c0a1cc7160b1ef903b9b515cc603e54379dacdf55be";
              sha256_unsigned = "8635e0954b69367087781c0a1cc7160b1ef903b9b515cc603e54379dacdf55be";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_bhr-4grv2-squashfs-sysupgrade.bin";
              sha256 = "381f3d179fd3d2922931d57f958f65919acd69fce9d116eb8d5f57735cf1eb46";
              sha256_unsigned = "c58171b8a3299bebf4fb5e759004fa21b7445978370ebc1db006dd92497cca43";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "buffalo,bhr-4grv2"
          ];
          titles = [
            {
              model = "BHR-4GRV2";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-600dhp = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-600dhp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-600dhp-initramfs-kernel.bin";
              sha256 = "20aabb54591fea157e0d756d331872758236d6bdd9d1e19cd9ab49b9c97c9f5d";
              sha256_unsigned = "20aabb54591fea157e0d756d331872758236d6bdd9d1e19cd9ab49b9c97c9f5d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-600dhp-squashfs-factory.bin";
              sha256 = "1118affa007bcd587f1db7d386c7ee9eb742ab8f6e9fbbeb019d58750fc9dbd2";
              sha256_unsigned = "1118affa007bcd587f1db7d386c7ee9eb742ab8f6e9fbbeb019d58750fc9dbd2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-600dhp-squashfs-sysupgrade.bin";
              sha256 = "5264e93035c9842f9e410d32668d6bee14ec02597a1efd5cb243647d26958a64";
              sha256_unsigned = "71b96fc284957bcca76552fd7796761c520b8e87f00b6294334e9d8522387e1a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-600dhp-squashfs-tftp.bin";
              sha256 = "7990461eedbd3d1a484cd2b23f0530cb7fdedcb83163b5e15af84ef02ca87aed";
              sha256_unsigned = "7990461eedbd3d1a484cd2b23f0530cb7fdedcb83163b5e15af84ef02ca87aed";
              type = "tftp";
            }
          ];
          supported_devices = [
            "buffalo,wzr-600dhp"
            "wzr-hp-ag300h"
          ];
          titles = [
            {
              model = "WZR-600DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-hp-ag300h = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-ag300h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-ag300h-squashfs-tftp.bin";
              sha256 = "49546925851dc52257905a4b3bf3c40c92206a370d4780404b5f55808bc390cc";
              sha256_unsigned = "49546925851dc52257905a4b3bf3c40c92206a370d4780404b5f55808bc390cc";
              type = "tftp";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-ag300h-squashfs-sysupgrade.bin";
              sha256 = "3fcc5d58f5387890a0e1a7768af8e3b739b98255911ac23ffe8d0a9acfbc35d9";
              sha256_unsigned = "38b45dc5898f975bd07c4cf01b9e9b1728906c46b6211b80183b772b15bc08c1";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-ag300h-initramfs-kernel.bin";
              sha256 = "616ea81af34b0517350c1d3e08a68d111aae125616f01bb2a589a153d4c27314";
              sha256_unsigned = "616ea81af34b0517350c1d3e08a68d111aae125616f01bb2a589a153d4c27314";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-ag300h-squashfs-factory.bin";
              sha256 = "63c74f485bc4f0d8b43d6f1259658c6c4df9765db616098c7ade9143134a4784";
              sha256_unsigned = "63c74f485bc4f0d8b43d6f1259658c6c4df9765db616098c7ade9143134a4784";
              type = "factory";
            }
          ];
          supported_devices = [
            "buffalo,wzr-hp-ag300h"
            "wzr-hp-ag300h"
          ];
          titles = [
            {
              model = "WZR-HP-AG300H";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-hp-g300nh-rb = {
          device_packages = [
            "kmod-gpio-cascade"
            "kmod-mux-gpio"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-switch-rtl8366rb"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-rb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-rb-squashfs-sysupgrade.bin";
              sha256 = "9fef6a18c3c2ad43c568d241bddaabacab11a963ee4ccadb073d6a95130af407";
              sha256_unsigned = "cdd0991ae520f2ee0b6fc770d01e964dbce06983431a7795071f5062f4fc8962";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-rb-initramfs-kernel.bin";
              sha256 = "8084e9b9b48da40383a43fc55c7a96852561d5ce1811d98a02dddbe7613d4a1b";
              sha256_unsigned = "8084e9b9b48da40383a43fc55c7a96852561d5ce1811d98a02dddbe7613d4a1b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-rb-squashfs-tftp.bin";
              sha256 = "6d6ed5d43ba08f80d3c8c360ff408c58cc3e001d81de8a5b102e3b079d554c4f";
              sha256_unsigned = "6d6ed5d43ba08f80d3c8c360ff408c58cc3e001d81de8a5b102e3b079d554c4f";
              type = "tftp";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-rb-squashfs-factory.bin";
              sha256 = "ea5ae7773f5ae2ea809821c4e2162e944a764da954a2d9a72e26405b95c8e7ce";
              sha256_unsigned = "ea5ae7773f5ae2ea809821c4e2162e944a764da954a2d9a72e26405b95c8e7ce";
              type = "factory";
            }
          ];
          supported_devices = [
            "buffalo,wzr-hp-g300nh-rb"
            "wzr-hp-g300nh"
          ];
          titles = [
            {
              model = "WZR-HP-G300NH (RTL8366RB switch)";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-hp-g300nh-s = {
          device_packages = [
            "kmod-gpio-cascade"
            "kmod-mux-gpio"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-s";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-s-squashfs-factory.bin";
              sha256 = "5df3bb167d819531d20e5b699c656eba45dbb32c1fde9141f7762da3eb173756";
              sha256_unsigned = "5df3bb167d819531d20e5b699c656eba45dbb32c1fde9141f7762da3eb173756";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-s-squashfs-sysupgrade.bin";
              sha256 = "e475a15250b6ab97f0c6ece27fc420d4a8292a5afea7e136268ed5d9e652aa7d";
              sha256_unsigned = "fba7d849908e31b2755ba4a68e9ef03af86815e455349dfe8fea52639cc9f4f7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-s-initramfs-kernel.bin";
              sha256 = "c43a4b924a9f40df5ff4e85eebfb7b5b3d05ec49c46382929d8a1dfcc700c9ba";
              sha256_unsigned = "c43a4b924a9f40df5ff4e85eebfb7b5b3d05ec49c46382929d8a1dfcc700c9ba";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g300nh-s-squashfs-tftp.bin";
              sha256 = "a240e3fb897616faf4ffb54ab81a9a7e51a4daa39fdfefa371d7d1f7eee9877d";
              sha256_unsigned = "a240e3fb897616faf4ffb54ab81a9a7e51a4daa39fdfefa371d7d1f7eee9877d";
              type = "tftp";
            }
          ];
          supported_devices = [
            "buffalo,wzr-hp-g300nh-s"
            "wzr-hp-g300nh"
          ];
          titles = [
            {
              model = "WZR-HP-G300NH (RTL8366S switch)";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-hp-g302h-a1a0 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g302h-a1a0";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g302h-a1a0-squashfs-sysupgrade.bin";
              sha256 = "ce77edd77176a423cb637b1696376bdf35c95d6ca58180ca8fb51743663786ff";
              sha256_unsigned = "6e7bcc69039f01e688be70beb5cbe53e3aa813489f95e1e8148f7c6fa0bb0909";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g302h-a1a0-initramfs-kernel.bin";
              sha256 = "e7dc6c512dd79d097fdea24bd5d96d22453cde88eec7b2943895c876b708f527";
              sha256_unsigned = "e7dc6c512dd79d097fdea24bd5d96d22453cde88eec7b2943895c876b708f527";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g302h-a1a0-squashfs-factory.bin";
              sha256 = "1d0c1b678cadc8bcaecfd1072e6762882426f725119b03162029d4a592f1a47c";
              sha256_unsigned = "1d0c1b678cadc8bcaecfd1072e6762882426f725119b03162029d4a592f1a47c";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g302h-a1a0-squashfs-tftp.bin";
              sha256 = "ca9a4d12bb72371b4eba7dc02430b4b7b445a677ff19260d9b28690bc253526a";
              sha256_unsigned = "ca9a4d12bb72371b4eba7dc02430b4b7b445a677ff19260d9b28690bc253526a";
              type = "tftp";
            }
          ];
          supported_devices = [
            "buffalo,wzr-hp-g302h-a1a0"
            "wzr-hp-g300nh2"
          ];
          titles = [
            {
              model = "WZR-HP-G302H";
              variant = "A1A0";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-hp-g450h = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g450h";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g450h-initramfs-kernel.bin";
              sha256 = "043149126aa57a76b01e20f4338ff5c5f7ecc793c83f892345d83964620b6795";
              sha256_unsigned = "043149126aa57a76b01e20f4338ff5c5f7ecc793c83f892345d83964620b6795";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g450h-squashfs-factory.bin";
              sha256 = "63822d56cd4846408f4d229abb305f1b21bf08430a7cef900fce09eb7656c042";
              sha256_unsigned = "63822d56cd4846408f4d229abb305f1b21bf08430a7cef900fce09eb7656c042";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g450h-squashfs-sysupgrade.bin";
              sha256 = "cd4ca7de51cea47e07354920724eebb0e4fbda406408ec1675f804ae5900671e";
              sha256_unsigned = "17126f45faafa72b3e9007e37f2a0d62c72be0a292fe792fad546a9cf3308d53";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-buffalo_wzr-hp-g450h-squashfs-tftp.bin";
              sha256 = "f66d3ad3041863429b94740f133835ffa820a04434092707056e17aaa10b9a15";
              sha256_unsigned = "f66d3ad3041863429b94740f133835ffa820a04434092707056e17aaa10b9a15";
              type = "tftp";
            }
          ];
          supported_devices = [
            "buffalo,wzr-hp-g450h"
            "wzr-hp-g450h"
          ];
          titles = [
            {
              model = "WZR-HP-G450H/WZR-450HP";
              vendor = "Buffalo";
            }
          ];
        };
        comfast_cf-e110n-v2 = {
          device_packages = [
            "rssileds"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e110n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e110n-v2-squashfs-sysupgrade.bin";
              sha256 = "2e2630231f7cdafe6490dc172572122b0896c0fad4cda88195215568aed4867c";
              sha256_unsigned = "837e193d556aa43660ae9c09b8ce9c1b653d53790a741281fffb977555e8d0e3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e110n-v2-initramfs-kernel.bin";
              sha256 = "f960d3d89ea2cce6b8acc98dc155221490b9e3bb059a427abdfac9bb8dbaf5ba";
              sha256_unsigned = "f960d3d89ea2cce6b8acc98dc155221490b9e3bb059a427abdfac9bb8dbaf5ba";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e110n-v2"
          ];
          titles = [
            {
              model = "CF-E110N";
              variant = "v2";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e120a-v3 = {
          device_packages = [
            "rssileds"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e120a-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e120a-v3-initramfs-kernel.bin";
              sha256 = "e11d5743854459a70beaad0446aa7d669653ba7c5d4468f190484062818d5ec3";
              sha256_unsigned = "e11d5743854459a70beaad0446aa7d669653ba7c5d4468f190484062818d5ec3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e120a-v3"
          ];
          titles = [
            {
              model = "CF-E120A";
              variant = "v3";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e130n-v2 = {
          device_packages = [
            "rssileds"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e130n-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e130n-v2-initramfs-kernel.bin";
              sha256 = "5171b76c91a7942c21aa2ba63faebe26234a26701d16db9e8fd1403baccbb45e";
              sha256_unsigned = "5171b76c91a7942c21aa2ba63faebe26234a26701d16db9e8fd1403baccbb45e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e130n-v2"
          ];
          titles = [
            {
              model = "CF-E130N";
              variant = "v2";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e313ac = {
          device_packages = [
            "rssileds"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e313ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e313ac-initramfs-kernel.bin";
              sha256 = "831c5b18c745f78b21cb4319d2496e7e76b72e3b8aadc581a59130df0d49e100";
              sha256_unsigned = "831c5b18c745f78b21cb4319d2496e7e76b72e3b8aadc581a59130df0d49e100";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e313ac"
          ];
          titles = [
            {
              model = "CF-E313AC";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e314n-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e314n-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e314n-v2-initramfs-kernel.bin";
              sha256 = "c156b8249a11116633b0cb96094e228737685d6094ca4eb59631e86126aeab68";
              sha256_unsigned = "c156b8249a11116633b0cb96094e228737685d6094ca4eb59631e86126aeab68";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e314n-v2"
          ];
          titles = [
            {
              model = "CF-E314N";
              variant = "v2";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e375ac = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e375ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e375ac-squashfs-sysupgrade.bin";
              sha256 = "534ac234349f7610f39f43b4e735555175869299d985e205762c064dae19d476";
              sha256_unsigned = "d16e3dccf56997cac972aeec6a9b52899e918d8ae3028fd11ff80215b4e28c9d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e375ac-initramfs-kernel.bin";
              sha256 = "18ccb898332077a1cb8814a410d48b363c188f3ad4767319642f36acd58a366f";
              sha256_unsigned = "18ccb898332077a1cb8814a410d48b363c188f3ad4767319642f36acd58a366f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e375ac"
          ];
          titles = [
            {
              model = "CF-E375AC";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e5 = {
          device_packages = [
            "rssileds"
            "kmod-usb2"
            "kmod-usb-net-qmi-wwan"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e5-squashfs-sysupgrade.bin";
              sha256 = "c700f4a82b78e336fe1cf4a89af1c7e50213a83cf2029eda2fdca717795dac69";
              sha256_unsigned = "c8729c4faf8fa21a4c74fefaaf1a2e33734db6fd947dd610a35919f9ce2944a6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e5-initramfs-kernel.bin";
              sha256 = "76d46c843f9f071169fabf7b515481d8ab030b7a3403decc488d1e7e5cd1352e";
              sha256_unsigned = "76d46c843f9f071169fabf7b515481d8ab030b7a3403decc488d1e7e5cd1352e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-e5"
          ];
          titles = [
            {
              model = "CF-E5/E7";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-e560ac = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e560ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e560ac-initramfs-kernel.bin";
              sha256 = "e577810b8d99f77683adbfaade41d7c4b92354d7c3e523ba65964bffdcaae148";
              sha256_unsigned = "e577810b8d99f77683adbfaade41d7c4b92354d7c3e523ba65964bffdcaae148";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-e560ac-squashfs-sysupgrade.bin";
              sha256 = "3570368731619f44a8067d7d2575abff9f3689fadb3e12862ccdb0231185373a";
              sha256_unsigned = "43a6f386e3e40bcddbb217b7734182eb01629a3293fec3830d80a1bff03439ec";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comfast,cf-e560ac"
          ];
          titles = [
            {
              model = "CF-E560AC";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-ew72 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "-uboot-envtools"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-ew72";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-ew72-initramfs-kernel.bin";
              sha256 = "ce2c154bef6a64a1b34eb61dd06998305c5eb2157b21ba348c5ebfa5638c191e";
              sha256_unsigned = "ce2c154bef6a64a1b34eb61dd06998305c5eb2157b21ba348c5ebfa5638c191e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-ew72-squashfs-sysupgrade.bin";
              sha256 = "1c69d97687e6958f909e69e3e1343e313c4172d28d0929c958a7cc031b5616e3";
              sha256_unsigned = "1602299883ce612597c0fd6033a934125b3c6d941a7890189d5fbffdf80cce35";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comfast,cf-ew72"
          ];
          titles = [
            {
              model = "CF-EW72";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-wr650ac-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v1-squashfs-sysupgrade.bin";
              sha256 = "68e456042ed8ff8982a5e9587aad7c953578f4a13d417c35d473bd8c109f3066";
              sha256_unsigned = "2161260db9fa7b2c04390f7ae59450fda3caa39a5e1e3c905e9f45ab01375058";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v1-initramfs-kernel.bin";
              sha256 = "da1076d03b95021a0e3edcf0b234c50a98717a8206a8476e7ba1f5584df53090";
              sha256_unsigned = "da1076d03b95021a0e3edcf0b234c50a98717a8206a8476e7ba1f5584df53090";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-wr650ac-v1"
          ];
          titles = [
            {
              model = "CF-WR650AC";
              variant = "v1";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-wr650ac-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v2-squashfs-sysupgrade.bin";
              sha256 = "5d8f7ac9ca9b38f93af010cfb79145e0347f7217aecd3e153037932b0301487b";
              sha256_unsigned = "057f69bd1d627d75e9febdbd2771bb5a8b47939c287068997e17b997e0ed5f8b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr650ac-v2-initramfs-kernel.bin";
              sha256 = "6cc578fbba3ebf7ec0d161d8f38266be26091a3753ab021cbda25c1c200f78f0";
              sha256_unsigned = "6cc578fbba3ebf7ec0d161d8f38266be26091a3753ab021cbda25c1c200f78f0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-wr650ac-v2"
          ];
          titles = [
            {
              model = "CF-WR650AC";
              variant = "v2";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-wr752ac-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr752ac-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr752ac-v1-squashfs-sysupgrade.bin";
              sha256 = "dc12fb779e3206e820772dbe92bea84ef74700e8cc40bdf1fa5e8c502878c319";
              sha256_unsigned = "b83971fce2d08a1ae596f9f8da9249cf77dd54ce1322f8bda7954742f1e050cf";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-comfast_cf-wr752ac-v1-initramfs-kernel.bin";
              sha256 = "0f86ecb6432cde50e94e7aa3969593af3e42d2b3b2e58b2611beef0477879669";
              sha256_unsigned = "0f86ecb6432cde50e94e7aa3969593af3e42d2b3b2e58b2611beef0477879669";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-wr752ac-v1"
          ];
          titles = [
            {
              model = "CF-WR752AC";
              variant = "v1";
              vendor = "COMFAST";
            }
          ];
        };
        compex_wpj344-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-compex_wpj344-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj344-16m-squashfs-cpximg-6a08.bin";
              sha256 = "6645bc6224daafdc03c31e6b343f27cb8ae43f029120904c05658353148faf0c";
              sha256_unsigned = "6645bc6224daafdc03c31e6b343f27cb8ae43f029120904c05658353148faf0c";
              type = "cpximg-6a08";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj344-16m-initramfs-kernel.bin";
              sha256 = "7f781a30f7e1861110b81e346599c7dbf6fa67b9e480bcf8b1aec482133d7c23";
              sha256_unsigned = "7f781a30f7e1861110b81e346599c7dbf6fa67b9e480bcf8b1aec482133d7c23";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj344-16m-squashfs-sysupgrade.bin";
              sha256 = "6f5581a80d64bc422bbf39dcd44d767bd29bf8cd9eb8258b2721b7604e506d54";
              sha256_unsigned = "e7d91a6bbab31b0a97024eb2e1e51908aa8dd4c26d7488255c620b942c5d7bcb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "compex,wpj344-16m"
            "wpj344"
          ];
          titles = [
            {
              model = "WPJ344";
              variant = "16M";
              vendor = "Compex";
            }
          ];
        };
        compex_wpj531-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-squashfs-cpximg-7a06.bin";
              sha256 = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              sha256_unsigned = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              type = "cpximg-7a06";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-initramfs-kernel.bin";
              sha256 = "6a938d926b09694161007b2c029eb4da0964ea68714a45dc95509efdbce1021b";
              sha256_unsigned = "6a938d926b09694161007b2c029eb4da0964ea68714a45dc95509efdbce1021b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-squashfs-cpximg-7a04.bin";
              sha256 = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              sha256_unsigned = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              type = "cpximg-7a04";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-squashfs-cpximg-7a03.bin";
              sha256 = "f21bd0d87a8046beade65023ea59a169d12af930deb45ce5e86ac75d82ee7abc";
              sha256_unsigned = "f21bd0d87a8046beade65023ea59a169d12af930deb45ce5e86ac75d82ee7abc";
              type = "cpximg-7a03";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-squashfs-sysupgrade.bin";
              sha256 = "6acf911e3ae25d2bf818d274a8857755a9177860510c1df734db3cf777bbe4f8";
              sha256_unsigned = "6f86de9738b10c912e4175f835ddc80a379206559d9a9dc935e422719d1203a5";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj531-16m-squashfs-cpximg-7a07.bin";
              sha256 = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              sha256_unsigned = "58d75d379c3e7de99d8086b6294e44d474c4caa4c976340c5848159414392b1f";
              type = "cpximg-7a07";
            }
          ];
          supported_devices = [
            "compex,wpj531-16m"
            "wpj531"
          ];
          titles = [
            {
              model = "WPJ531";
              variant = "16M";
              vendor = "Compex";
            }
          ];
        };
        compex_wpj558-16m = {
          device_packages = [
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-compex_wpj558-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj558-16m-squashfs-sysupgrade.bin";
              sha256 = "fbf643003cd1bbcdcbd984c6f578e244d9b3e9fad3690e5c64bcf4b390b8da30";
              sha256_unsigned = "70340d7add801a7a4fdda60b839aefcc77c8fe026db6161a407b81cf2f41492f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj558-16m-initramfs-kernel.bin";
              sha256 = "0c0f86edb889f28b3091c21e955df3ae26ac692fca664026496d5fd37ce04012";
              sha256_unsigned = "0c0f86edb889f28b3091c21e955df3ae26ac692fca664026496d5fd37ce04012";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj558-16m-squashfs-cpximg-6a07.bin";
              sha256 = "d6c647b40fac4765e96ff51e6e731667e9c8a3fbe69382db964c113fabe5b83c";
              sha256_unsigned = "d6c647b40fac4765e96ff51e6e731667e9c8a3fbe69382db964c113fabe5b83c";
              type = "cpximg-6a07";
            }
          ];
          supported_devices = [
            "compex,wpj558-16m"
            "wpj558"
          ];
          titles = [
            {
              model = "WPJ558";
              variant = "16M";
              vendor = "Compex";
            }
          ];
        };
        compex_wpj563 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-compex_wpj563";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj563-squashfs-cpximg-7a02.bin";
              sha256 = "f467b9e69860c8aa81403ae0cdba134245ac87f10e7e7649f44f4a03629251bd";
              sha256_unsigned = "f467b9e69860c8aa81403ae0cdba134245ac87f10e7e7649f44f4a03629251bd";
              type = "cpximg-7a02";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj563-initramfs-kernel.bin";
              sha256 = "6596efd1af3df73089e359680a8b0e2159bc6e401f497690b0a7850077750180";
              sha256_unsigned = "6596efd1af3df73089e359680a8b0e2159bc6e401f497690b0a7850077750180";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-compex_wpj563-squashfs-sysupgrade.bin";
              sha256 = "174001c4724ed064a75f2605c95df94d87073c690648a40dd4b5c2c41b8db223";
              sha256_unsigned = "5ecaf6b5ac71ad7b1e54888132571e3f1b217219758d3e87ce5416008053433e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "compex,wpj563"
            "wpj563"
          ];
          titles = [
            {
              model = "WPJ563";
              vendor = "Compex";
            }
          ];
        };
        devolo_dlan-pro-1200plus-ac = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dlan-pro-1200plus-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dlan-pro-1200plus-ac-initramfs-kernel.bin";
              sha256 = "bd256f6a46bbe258768eeb3e5f9dffcd9149ddb948db226b922ee21b5425940e";
              sha256_unsigned = "bd256f6a46bbe258768eeb3e5f9dffcd9149ddb948db226b922ee21b5425940e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dlan-pro-1200plus-ac-squashfs-sysupgrade.bin";
              sha256 = "1b8af8a97e93b22f9221598a67b0001efdf91c3f1c2839ff448002ec84e12e92";
              sha256_unsigned = "fd9660fb6fcc67bcae065829c090f188892e1ca543c2d5f0ec7030ee389e6707";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dlan-pro-1200plus-ac"
          ];
          titles = [
            {
              model = "dLAN pro 1200+ WiFi ac";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1200e = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200e";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200e-initramfs-kernel.bin";
              sha256 = "9db7ae670185a1018f17eea0672286332d17a19e2f6d0e555ea7daa2aa58f2fb";
              sha256_unsigned = "9db7ae670185a1018f17eea0672286332d17a19e2f6d0e555ea7daa2aa58f2fb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200e-squashfs-sysupgrade.bin";
              sha256 = "fb8eab0632a18848a1aaa731ee5430f0cc1fd93e1cd4bd38bf7b7c63d524e9f0";
              sha256_unsigned = "729d4bf04a159c123dfd5c88d76d359d4c6e6ddf437e3ac1877197661343e1e7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dvl1200e"
          ];
          titles = [
            {
              model = "WiFi pro 1200e";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1200i = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200i-initramfs-kernel.bin";
              sha256 = "c631528dbab744fa75e1d1993bab164be28159a06a516343121f6d6aa3c3c996";
              sha256_unsigned = "c631528dbab744fa75e1d1993bab164be28159a06a516343121f6d6aa3c3c996";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1200i-squashfs-sysupgrade.bin";
              sha256 = "b148cb5c4ff6a28a66d3da18358c038eb2f5e1992d127c7893d2af3bab07712a";
              sha256_unsigned = "1daf7a76b736244f8953c30c3586f91550d4c5099f0faeece9aa8f786c7bff61";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dvl1200i"
          ];
          titles = [
            {
              model = "WiFi pro 1200i";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1750c = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750c";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750c-initramfs-kernel.bin";
              sha256 = "c4ecf56a0cd0e8cd974be72aabbea94ae5c6bc67d2301457019d5c7dd8e78e46";
              sha256_unsigned = "c4ecf56a0cd0e8cd974be72aabbea94ae5c6bc67d2301457019d5c7dd8e78e46";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750c-squashfs-sysupgrade.bin";
              sha256 = "2b2243962ca9bbd3c03b3772e3aac4d63b5a8664adfda3888d82b379224faf4c";
              sha256_unsigned = "35282e9d189b9196225ff96f206e4ecdbaeb29a0c51908a7d9800ed4f0194506";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dvl1750c"
          ];
          titles = [
            {
              model = "WiFi pro 1750c";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1750e = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750e";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750e-initramfs-kernel.bin";
              sha256 = "68f19c211765e38eb785f41aa607e135542ee1fda4d37e32fa4dc43b0e0cd382";
              sha256_unsigned = "68f19c211765e38eb785f41aa607e135542ee1fda4d37e32fa4dc43b0e0cd382";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750e-squashfs-sysupgrade.bin";
              sha256 = "0e07f2243529848d81fde68de9f1df9abf43ca9e8b510ed199ad482ade3c703c";
              sha256_unsigned = "daad85b6e46db77af9e9b9ef175e21a2ec3aae93aedbc3af49d7f49163e28818";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dvl1750e"
          ];
          titles = [
            {
              model = "WiFi pro 1750e";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1750i = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750i-initramfs-kernel.bin";
              sha256 = "eb8438ef6f91658ee31ab5a29ec04f5b202e649525b3c459c1bcc14295a62f4f";
              sha256_unsigned = "eb8438ef6f91658ee31ab5a29ec04f5b202e649525b3c459c1bcc14295a62f4f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750i-squashfs-sysupgrade.bin";
              sha256 = "922337940475b5411c1fd6b2058ae1bf901b5b9d4e5e0ec448f2003d4d6a7089";
              sha256_unsigned = "21ca39b4b2d53d6ce5d9d69dcde65442fc9c8f36e4f8963ef1b56049cebf6806";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "devolo,dvl1750i"
          ];
          titles = [
            {
              model = "WiFi pro 1750i";
              vendor = "devolo";
            }
          ];
        };
        devolo_dvl1750x = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750x";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750x-squashfs-sysupgrade.bin";
              sha256 = "50b280cd43a5159b6c1985ab027bc640fb7690b91babffa3af525a4325966419";
              sha256_unsigned = "f6964b8fb116bcbb2164587ca3ca462d12e3bb9e93cc353795cc7a7e8e1e40de";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_dvl1750x-initramfs-kernel.bin";
              sha256 = "e71f875b1fc9c77aa05476795ab5b53a853cfe345ae2254b07ec3032f83fcad0";
              sha256_unsigned = "e71f875b1fc9c77aa05476795ab5b53a853cfe345ae2254b07ec3032f83fcad0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "devolo,dvl1750x"
          ];
          titles = [
            {
              model = "WiFi pro 1750x";
              vendor = "devolo";
            }
          ];
        };
        devolo_magic-2-wifi = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-devolo_magic-2-wifi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_magic-2-wifi-squashfs-sysupgrade.bin";
              sha256 = "9618b7bd55fdb11a3bcf98194f44434bdaf59f81254f170cc810bd71185caac2";
              sha256_unsigned = "be0e9ac8c86c797d54a21817667662f63ad62e4cc773ad7cd7a9feaaca3f617c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-devolo_magic-2-wifi-initramfs-kernel.bin";
              sha256 = "12fae068c3d0ef7be9551c4d5f1818a4e84478ce71ced19d47a1ada7dded5c00";
              sha256_unsigned = "12fae068c3d0ef7be9551c4d5f1818a4e84478ce71ced19d47a1ada7dded5c00";
              type = "kernel";
            }
          ];
          supported_devices = [
            "devolo,magic-2-wifi"
          ];
          titles = [
            {
              model = "Magic 2 WiFi";
              vendor = "devolo";
            }
          ];
        };
        dlink_dap-2230-a1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2230-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2230-a1-squashfs-factory.img";
              sha256 = "2eed40ffda729efee76d04348fd72b95f3a84696d3f6fa165acfe892422264cb";
              sha256_unsigned = "2eed40ffda729efee76d04348fd72b95f3a84696d3f6fa165acfe892422264cb";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2230-a1-squashfs-sysupgrade.bin";
              sha256 = "37ae5cf9cbc0df9c014141fa7f6714e749412a95a8c999c98a159cfaf3aa9d91";
              sha256_unsigned = "ae9870e7c59dae90c6bd4696e65faa75a5e7a4a2def4ee453b5d554954ebd047";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2230-a1-initramfs-kernel.bin";
              sha256 = "ea2e3ff3625ab9ac2e105c409dfa5a45734812b4c04f8c638deec2c61dd979e7";
              sha256_unsigned = "ea2e3ff3625ab9ac2e105c409dfa5a45734812b4c04f8c638deec2c61dd979e7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-2230-a1"
          ];
          titles = [
            {
              model = "DAP-2230";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dap-2660-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2660-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2660-a1-initramfs-kernel.bin";
              sha256 = "d08c9f31e54b16f6201b3c1d1573d4fec2f0a133e44f2cf7f6020544cbd50525";
              sha256_unsigned = "d08c9f31e54b16f6201b3c1d1573d4fec2f0a133e44f2cf7f6020544cbd50525";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2660-a1-squashfs-factory.img";
              sha256 = "6d7217d18ddca2fd903e5735530797121eaf5766eae0193eec9068b0f47d398d";
              sha256_unsigned = "6d7217d18ddca2fd903e5735530797121eaf5766eae0193eec9068b0f47d398d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2660-a1-squashfs-sysupgrade.bin";
              sha256 = "1de1ba949d5f01f32622be0769ce0547200ba2e2547e08eb81521d333b9581be";
              sha256_unsigned = "216ac784131fb5ecfc6186a6d0a7d0da517c52257e9340b7dc15d109b48e35c8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dap-2660-a1"
          ];
          titles = [
            {
              model = "DAP-2660";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dap-2680-a1 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2680-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2680-a1-initramfs-kernel.bin";
              sha256 = "ff65b50dceb1d343a7d0a7d813c3171b2d5e808fbab7a4d07af5debe782d8fe6";
              sha256_unsigned = "ff65b50dceb1d343a7d0a7d813c3171b2d5e808fbab7a4d07af5debe782d8fe6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2680-a1-squashfs-factory.img";
              sha256 = "f6104bb0c7f3ab74760fafdbbecdc311a0b3d5618b5bf9e71469e4db3f0a2882";
              sha256_unsigned = "f6104bb0c7f3ab74760fafdbbecdc311a0b3d5618b5bf9e71469e4db3f0a2882";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2680-a1-squashfs-sysupgrade.bin";
              sha256 = "ea0be021d22f01e05fa6b237eabb590577ab232234006037ec8a251b2b7d0e3d";
              sha256_unsigned = "e0b3087f68fd50e34daa9ca2da87e1006e16edba9bce5bd114db5701a882b7ad";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dap-2680-a1"
          ];
          titles = [
            {
              model = "DAP-2680";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dap-2695-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2695-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2695-a1-squashfs-factory.img";
              sha256 = "0f32240e66bf23f7bd8a5ecf45936c99913dad927b233d7c3eaac0edb3bcea69";
              sha256_unsigned = "0f32240e66bf23f7bd8a5ecf45936c99913dad927b233d7c3eaac0edb3bcea69";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2695-a1-squashfs-sysupgrade.bin";
              sha256 = "8e5b8a95cb2ce0922498e218377fd43b555a77a9279999fbce77f57ad427d526";
              sha256_unsigned = "7185fc037aef7978dffeac91598800ab3bd6ad20889b895db5ee0b95842a0bf7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-2695-a1-initramfs-kernel.bin";
              sha256 = "780f05824564084feb026ddb0dced0c98118fac06156b9ccb56aecc0d712164e";
              sha256_unsigned = "780f05824564084feb026ddb0dced0c98118fac06156b9ccb56aecc0d712164e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-2695-a1"
            "dap-2695-a1"
          ];
          titles = [
            {
              model = "DAP-2695";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dap-3320-a1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3320-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3320-a1-squashfs-factory.img";
              sha256 = "5e92c745dae7221ecc1b442663b5a4536baddc9a898de1efff032b64eb3c45fa";
              sha256_unsigned = "5e92c745dae7221ecc1b442663b5a4536baddc9a898de1efff032b64eb3c45fa";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3320-a1-initramfs-kernel.bin";
              sha256 = "ef635978508c4d6700e0570d105083ca894e6673401fbdc3a1894e348d401d7f";
              sha256_unsigned = "ef635978508c4d6700e0570d105083ca894e6673401fbdc3a1894e348d401d7f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3320-a1-squashfs-sysupgrade.bin";
              sha256 = "a9e2afa0e4876a157e6066dac09f67301fde9af1478c33a19f834f7fad349074";
              sha256_unsigned = "38068b315389ac5916be70225b567c8f6638661ec71c13788151cc8eb11ca30b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dap-3320-a1"
          ];
          titles = [
            {
              model = "DAP-3320";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dap-3662-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3662-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3662-a1-squashfs-sysupgrade.bin";
              sha256 = "e8bae7f54826c044bb4ac8ee5b187effad07606d5b71bc763e80e50468bcb704";
              sha256_unsigned = "18799217e24e48d9e2fd068c4e2292abf26e06722dda05f02c94754de66d9157";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3662-a1-squashfs-factory.img";
              sha256 = "878bb64d4aa90b1215b7c38bb9691ec68db9eb32d46c2b4e21bb47da4d44b530";
              sha256_unsigned = "878bb64d4aa90b1215b7c38bb9691ec68db9eb32d46c2b4e21bb47da4d44b530";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dap-3662-a1-initramfs-kernel.bin";
              sha256 = "5d2c21ecd006633d37629f44272305a9509e742ae86836137a8754dfd1388a5d";
              sha256_unsigned = "5d2c21ecd006633d37629f44272305a9509e742ae86836137a8754dfd1388a5d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-3662-a1"
          ];
          titles = [
            {
              model = "DAP-3662";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dch-g020-a1 = {
          device_packages = [
            "kmod-gpio-pca953x"
            "kmod-i2c-gpio"
            "kmod-usb2"
            "kmod-usb-acm"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dch-g020-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dch-g020-a1-squashfs-factory.bin";
              sha256 = "b3152b392558aec77955e8ee34ec9c541649b262c4533759fe0fff4f9963a8aa";
              sha256_unsigned = "b3152b392558aec77955e8ee34ec9c541649b262c4533759fe0fff4f9963a8aa";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dch-g020-a1-squashfs-sysupgrade.bin";
              sha256 = "d689f39770a94ec7a780e7128aff0b69a7e9988a56e90b0b32156cf2ea1b374b";
              sha256_unsigned = "8f6c8da749687a7e61f0d62681c23c231fdbd46bb88f1ac1fcf305e0f4c4d465";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dch-g020-a1-initramfs-kernel.bin";
              sha256 = "87d6e3d32c89018426529c948a53016d4ba7f56102a857cf6445f7714c48cf6e";
              sha256_unsigned = "87d6e3d32c89018426529c948a53016d4ba7f56102a857cf6445f7714c48cf6e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dch-g020-a1"
          ];
          titles = [
            {
              model = "DCH-G020";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-505 = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-505";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-505-initramfs-kernel.bin";
              sha256 = "4732a3643efbf9817ec1140b569571102d8627fb3063b26eb2ad0cf949738541";
              sha256_unsigned = "4732a3643efbf9817ec1140b569571102d8627fb3063b26eb2ad0cf949738541";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-505"
            "dir-505-a1"
          ];
          titles = [
            {
              model = "DIR-505";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-629-a1 = {
          device_packages = [
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-629-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-629-a1-initramfs-kernel.bin";
              sha256 = "94ef10247681f3f7933d63dab8c8d59aeebbdc8f1dbb83da75bbae5c7fc39b33";
              sha256_unsigned = "94ef10247681f3f7933d63dab8c8d59aeebbdc8f1dbb83da75bbae5c7fc39b33";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-629-a1"
          ];
          titles = [
            {
              model = "DIR-629";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-825-c1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-825-c1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-825-c1-initramfs-kernel.bin";
              sha256 = "b4a92beb6aa44eae0c434c87808814415db3cfb0923cbd6d8c21d89fb8b8f902";
              sha256_unsigned = "b4a92beb6aa44eae0c434c87808814415db3cfb0923cbd6d8c21d89fb8b8f902";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-825-c1-squashfs-factory.bin";
              sha256 = "9955c238819bc1d93c97435d739e53d7616dea24e742deb021f30d062fe28ef8";
              sha256_unsigned = "9955c238819bc1d93c97435d739e53d7616dea24e742deb021f30d062fe28ef8";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-825-c1-squashfs-sysupgrade.bin";
              sha256 = "fe5ea220f78e1895f2199ceea3fc89ff9990e6b28327e3ad74e4ffc9ec494bed";
              sha256_unsigned = "52256b4e71241cf0025ddfb2e513cd89b47b6ec70297dc705f1bb04210691abf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dir-825-c1"
            "dir-825-c1"
          ];
          titles = [
            {
              model = "DIR-825";
              variant = "C1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-835-a1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-leds-reset"
            "kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-835-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-835-a1-squashfs-sysupgrade.bin";
              sha256 = "e2a2db28b17bf1c9cc47ca9d417d3c3e27d19bf68aefbea8f6b3711084de71f1";
              sha256_unsigned = "481a81913aba83d184094a6e7f51c56bf1f61335293193321b04e30dd5548869";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-835-a1-squashfs-factory.bin";
              sha256 = "74ca3d278ef1b5c30a39988aed40cfa9f16959fb3f6b3576a67d4c3931227a3c";
              sha256_unsigned = "74ca3d278ef1b5c30a39988aed40cfa9f16959fb3f6b3576a67d4c3931227a3c";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-835-a1-initramfs-kernel.bin";
              sha256 = "2457612ee71b19d8517988479e5cbbd7af13abfe3f635f98d8c60d10e8b333b4";
              sha256_unsigned = "2457612ee71b19d8517988479e5cbbd7af13abfe3f635f98d8c60d10e8b333b4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-835-a1"
            "dir-835-a1"
          ];
          titles = [
            {
              model = "DIR-835";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-842-c1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c1-initramfs-kernel.bin";
              sha256 = "486f465877a8d6ca8268d35d5a9bea4a1b3512c57e4c8a33c407c42f8f7f226c";
              sha256_unsigned = "486f465877a8d6ca8268d35d5a9bea4a1b3512c57e4c8a33c407c42f8f7f226c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c1-squashfs-sysupgrade.bin";
              sha256 = "71dfd5bd259fe889b7101cefb52146a8eb1158b17230e46e365d45a04e0a6c3a";
              sha256_unsigned = "1d26cb88b50455a06532df67daee5f62ed542cbe19cfcf2517e29c08a5c7bba4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c1-squashfs-factory.bin";
              sha256 = "93eaba26f14111d5c8ee3ce052ccadefc7403c7ba82fbd5311d60fda0ec0da38";
              sha256_unsigned = "93eaba26f14111d5c8ee3ce052ccadefc7403c7ba82fbd5311d60fda0ec0da38";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-842-c1"
          ];
          titles = [
            {
              model = "DIR-842";
              variant = "C1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-842-c2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c2-squashfs-factory.bin";
              sha256 = "7f7042ae072efe91497b803f469e33b9263ff70d028b4ae365699848333ebb12";
              sha256_unsigned = "7f7042ae072efe91497b803f469e33b9263ff70d028b4ae365699848333ebb12";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c2-initramfs-kernel.bin";
              sha256 = "cd2cceac28dbd4dc3e056a1b8cd2197d1933ba20d2d0cccefd30dfe361a5bf63";
              sha256_unsigned = "cd2cceac28dbd4dc3e056a1b8cd2197d1933ba20d2d0cccefd30dfe361a5bf63";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c2-squashfs-sysupgrade.bin";
              sha256 = "db754525f28f1cb40dcbbef926e050ad0bce9d513b33f99944dc574700028b9c";
              sha256_unsigned = "f25445c51e0e4a67fe1f38682f7c7a5ae6433036a9063968c8514582519367bb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dir-842-c2"
          ];
          titles = [
            {
              model = "DIR-842";
              variant = "C2";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-842-c3 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c3-squashfs-factory.bin";
              sha256 = "bfa0e88c1dffc94fef47a2f6e655857eb447da13f2bdb8b0dac9500f56e6f563";
              sha256_unsigned = "bfa0e88c1dffc94fef47a2f6e655857eb447da13f2bdb8b0dac9500f56e6f563";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c3-squashfs-sysupgrade.bin";
              sha256 = "85078d21db15c53cf14245ea7dd2a12729475b634a59e14504df72d761c5dff3";
              sha256_unsigned = "24379ef60d19a5adb0c3ccff4d3e7d503c452a3bd6ad2449af2447265d82b3a2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-842-c3-initramfs-kernel.bin";
              sha256 = "93d42551a58e3bf874ecc538aa6c8d39f6f8a1ee51e0bbe9e6c81f9f6effeee6";
              sha256_unsigned = "93d42551a58e3bf874ecc538aa6c8d39f6f8a1ee51e0bbe9e6c81f9f6effeee6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-842-c3"
          ];
          titles = [
            {
              model = "DIR-842";
              variant = "C3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a1-initramfs-kernel.bin";
              sha256 = "655da598fb0cc52cea0669381b6adeb2d1c01b3588ec717d2f80d8b6ec4beaca";
              sha256_unsigned = "655da598fb0cc52cea0669381b6adeb2d1c01b3588ec717d2f80d8b6ec4beaca";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a1-squashfs-sysupgrade.bin";
              sha256 = "f87067f1fcde898bf52563b3431288d6872cbc15843db78ce6ebe8e9ebbc0958";
              sha256_unsigned = "4806b67a85b91749da5cc61f5210cd68a4e76fa78b77dd55bdbcc75bd50d073b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a1-squashfs-factory.bin";
              sha256 = "5546d1f9009c1ea2ff0e6913c35e049adbfea184d9759a714172cbc0e585d599";
              sha256_unsigned = "5546d1f9009c1ea2ff0e6913c35e049adbfea184d9759a714172cbc0e585d599";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a1"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a3-squashfs-sysupgrade.bin";
              sha256 = "126d2d893d75d1d01ebfbd6a1ea3fb931831b2c17bad9dabd43791478b14b4fb";
              sha256_unsigned = "6b3a5584358c395487b4c38fa825496bf7f32023a2aeb382c4f7805e6ff4142a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a3-initramfs-kernel.bin";
              sha256 = "54b24dbe43216fe2cfc46f40f810d668a42be80257ccccfea1b0a4f37dcf7a8d";
              sha256_unsigned = "54b24dbe43216fe2cfc46f40f810d668a42be80257ccccfea1b0a4f37dcf7a8d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-859-a3-squashfs-factory.bin";
              sha256 = "6374dbc607c54f79bee636a79984e37f19e4e6935a04cf0e3975a19192c86e72";
              sha256_unsigned = "6374dbc607c54f79bee636a79984e37f19e4e6935a04cf0e3975a19192c86e72";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a3"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-869-a1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-dlink_dir-869-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-869-a1-squashfs-sysupgrade.bin";
              sha256 = "bc2e829f4f7a208c5b34260b06a2d5cc92890dc572b6dfd594502e21cb109539";
              sha256_unsigned = "9f5056c19d86f282f0db13f68534a62ce4d02ef43dcdcc1ffac1939a526e539e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-869-a1-initramfs-kernel.bin";
              sha256 = "60e78b4fbf68543856a63b128c1e60ad13b6f27265b6ea775497bebe1f376da9";
              sha256_unsigned = "60e78b4fbf68543856a63b128c1e60ad13b6f27265b6ea775497bebe1f376da9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-dlink_dir-869-a1-squashfs-factory.bin";
              sha256 = "62fd3c83d15b7266212f5f240a4e28ad098f2b0ab0b3c9dd88979fc9390e6528";
              sha256_unsigned = "62fd3c83d15b7266212f5f240a4e28ad098f2b0ab0b3c9dd88979fc9390e6528";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-869-a1"
            "dir-869-a1"
          ];
          titles = [
            {
              model = "DIR-869";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        elecom_wrc-1750ghbk2-i = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-1750ghbk2-i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-1750ghbk2-i-squashfs-sysupgrade.bin";
              sha256 = "c7ab7bef9be5a6453a84512fddc65e9d60eb589a2ac79e8a8b1335792e934aa5";
              sha256_unsigned = "24f57c0530e4195d9a546659c0db42e6362e5a66293bd3f202cce79c2e30f72b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-1750ghbk2-i-initramfs-kernel.bin";
              sha256 = "6fa42dada1621f09b4627c2bc94177bb4189fa54f567f49463258a144383898b";
              sha256_unsigned = "6fa42dada1621f09b4627c2bc94177bb4189fa54f567f49463258a144383898b";
              type = "kernel";
            }
            {
              name = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-1750ghbk2-i-initramfs-factory.bin";
              sha256 = "e24a724e753c2e719ba7c43de52097691aac3fd1d8152dde8def2a07ce532e69";
              sha256_unsigned = "e24a724e753c2e719ba7c43de52097691aac3fd1d8152dde8def2a07ce532e69";
              type = "initramfs-factory.bin";
            }
          ];
          supported_devices = [
            "elecom,wrc-1750ghbk2-i"
          ];
          titles = [
            {
              model = "WRC-1750GHBK2-I/C";
              vendor = "ELECOM";
            }
          ];
        };
        elecom_wrc-300ghbk2-i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-300ghbk2-i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-elecom_wrc-300ghbk2-i-initramfs-kernel.bin";
              sha256 = "b60fce0a57a0eea8251745b83f446b97f5a052290c3fbf38f402a9f9ab8e5290";
              sha256_unsigned = "b60fce0a57a0eea8251745b83f446b97f5a052290c3fbf38f402a9f9ab8e5290";
              type = "kernel";
            }
          ];
          supported_devices = [
            "elecom,wrc-300ghbk2-i"
          ];
          titles = [
            {
              model = "WRC-300GHBK2-I";
              vendor = "ELECOM";
            }
          ];
        };
        embeddedwireless_balin = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_balin";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_balin-squashfs-sysupgrade.bin";
              sha256 = "aa21e9ea6883af6b9a1d30ca07018f04ea042d582d34058dd5aa5e7c4d648d12";
              sha256_unsigned = "e2daf98afae1b00fb6a6055d675aa778d4322609af1ea340ab3019d4740cd717";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_balin-initramfs-kernel.bin";
              sha256 = "afd365df0e2b8473767c60c412dd6d427c0cedf00b0703f2b32b05d22c8f1258";
              sha256_unsigned = "afd365df0e2b8473767c60c412dd6d427c0cedf00b0703f2b32b05d22c8f1258";
              type = "kernel";
            }
          ];
          supported_devices = [
            "embeddedwireless,balin"
          ];
          titles = [
            {
              model = "Balin";
              vendor = "Embedded Wireless";
            }
          ];
        };
        embeddedwireless_dorin = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_dorin";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_dorin-initramfs-kernel.bin";
              sha256 = "a1c374bf8f3d6604034c8f4e1830233483be958720d973517ce9ef3172120b68";
              sha256_unsigned = "a1c374bf8f3d6604034c8f4e1830233483be958720d973517ce9ef3172120b68";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-embeddedwireless_dorin-squashfs-sysupgrade.bin";
              sha256 = "d0284aeb8a5ff788d9abb9912aa2d4b112acb3618d47b639027872e661661ce7";
              sha256_unsigned = "c97b4b2873886b9228be934e8a2fb3fb24541c1afdec8a45adf0e9c35eae458c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "embeddedwireless,dorin"
          ];
          titles = [
            {
              model = "Dorin";
              vendor = "Embedded Wireless";
            }
          ];
        };
        engenius_eap1200h = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_eap1200h";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1200h-initramfs-kernel.bin";
              sha256 = "58d456b5e1090a9d9017f3d59c6c71c2cc56d67ac69eecfc96deda2a6df881ce";
              sha256_unsigned = "58d456b5e1090a9d9017f3d59c6c71c2cc56d67ac69eecfc96deda2a6df881ce";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1200h-squashfs-sysupgrade.bin";
              sha256 = "9d393fe243250fa07f6d2304f6041e0398d100e0cc51aa78efe6cd6b55782f6a";
              sha256_unsigned = "221f91df87ce788ab059b9635de51a9be55009ef7c29eac99a7ede617838070b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1200h-squashfs-factory.bin";
              sha256 = "0f83339a5d1d3380dc9676aef691bce2adaf828294bf45438639b14875de345f";
              sha256_unsigned = "0f83339a5d1d3380dc9676aef691bce2adaf828294bf45438639b14875de345f";
              type = "factory";
            }
          ];
          supported_devices = [
            "engenius,eap1200h"
          ];
          titles = [
            {
              model = "EAP1200H";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_eap1750h = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_eap1750h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1750h-squashfs-sysupgrade.bin";
              sha256 = "50d8ff2b8a18f91a7324d459c4afa7c42e6749b058ac4843bec2241594be04db";
              sha256_unsigned = "51e6c047418929d2aa199a5a68a3a29a1b26922d13bb49797ae23793cae67c54";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1750h-squashfs-factory.bin";
              sha256 = "4ef6332e2f600f913c0b630d0838adcf701c3a40f68d4de8069ec81e03b10742";
              sha256_unsigned = "4ef6332e2f600f913c0b630d0838adcf701c3a40f68d4de8069ec81e03b10742";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap1750h-initramfs-kernel.bin";
              sha256 = "78507d482fa2e6c03ad3f44abb56d5518f3becfb7b9ad44ca4d4a4e9b55fbb5c";
              sha256_unsigned = "78507d482fa2e6c03ad3f44abb56d5518f3becfb7b9ad44ca4d4a4e9b55fbb5c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,eap1750h"
          ];
          titles = [
            {
              model = "EAP1750H";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_eap300-v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_eap300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap300-v2-squashfs-sysupgrade.bin";
              sha256 = "2dd10f1b46a9498c035ab471f49f4ff90f5226e882df5b93af19833250bac471";
              sha256_unsigned = "b65422cafb801b060e13a43ce9fcf92e1f44c6c1fe648d6c557f86d19447b90d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap300-v2-initramfs-kernel.bin";
              sha256 = "6ccf80f381bd650f8146c1e70c7e28d10f759eecf19f03cabde53b24f70ef35c";
              sha256_unsigned = "6ccf80f381bd650f8146c1e70c7e28d10f759eecf19f03cabde53b24f70ef35c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap300-v2-squashfs-factory.bin";
              sha256 = "f0ca7281c1d1fe317cad01b2292aad3bbbd553f8fb76a9dfb8a2532124b45479";
              sha256_unsigned = "f0ca7281c1d1fe317cad01b2292aad3bbbd553f8fb76a9dfb8a2532124b45479";
              type = "factory";
            }
          ];
          supported_devices = [
            "engenius,eap300-v2"
          ];
          titles = [
            {
              model = "EAP300";
              variant = "v2";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_eap600 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_eap600";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap600-squashfs-factory.bin";
              sha256 = "6ad1e47287e6046dd65a9f690e3d57ab1d2623cd3a11e9a96e916b7cedb1f038";
              sha256_unsigned = "6ad1e47287e6046dd65a9f690e3d57ab1d2623cd3a11e9a96e916b7cedb1f038";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap600-squashfs-sysupgrade.bin";
              sha256 = "6f388fecadf882e3c66c8d96c1f1587f236d9ccefc1955d2345d049c2fc182a6";
              sha256_unsigned = "9e0114e1df2d350082d315299a10d437802555be55018df818376d5918993f1a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_eap600-initramfs-kernel.bin";
              sha256 = "88df0a3a20193c52d6d9f478b8f259c7b19df8e6a5636736568ede9ee7e4e129";
              sha256_unsigned = "88df0a3a20193c52d6d9f478b8f259c7b19df8e6a5636736568ede9ee7e4e129";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,eap600"
          ];
          titles = [
            {
              model = "EAP600";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ecb1200 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1200-initramfs-kernel.bin";
              sha256 = "bef69d460ddd7d19ed40443d96ea28b549d057bdc162e1a6c8e34aff819e4932";
              sha256_unsigned = "bef69d460ddd7d19ed40443d96ea28b549d057bdc162e1a6c8e34aff819e4932";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1200-squashfs-factory.bin";
              sha256 = "486ecc96d30a7f74531cca37900289c71129a0d5e78f34d3a561f20a7fa3d244";
              sha256_unsigned = "486ecc96d30a7f74531cca37900289c71129a0d5e78f34d3a561f20a7fa3d244";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1200-squashfs-sysupgrade.bin";
              sha256 = "da001f6e9dca81db07f07b4a4734c4ef174f654d789b8c781223fb2e2cd5f66d";
              sha256_unsigned = "8369a86b35e7d9fe4469b88c974eb77ef2819ba1ea6e4643c7516799890baa63";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,ecb1200"
          ];
          titles = [
            {
              model = "ECB1200";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ecb1750 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1750-squashfs-sysupgrade.bin";
              sha256 = "35be4fe00c2eef452c09bd912f99ecd426db07bc764d52e211deb3b497921a1b";
              sha256_unsigned = "9bcfa08c8e0a6affb1702ddd2c7a65510a08ffe30c6a7ef7242e5beb980b65fd";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1750-squashfs-factory.bin";
              sha256 = "f37615f1180f9683f1ca3d0eed8967246a6378a03cf06c720991fb1790f123fe";
              sha256_unsigned = "f37615f1180f9683f1ca3d0eed8967246a6378a03cf06c720991fb1790f123fe";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb1750-initramfs-kernel.bin";
              sha256 = "a49a22872567d23240295be874f9dafb4b6fa0da7f11685f511536878bb85425";
              sha256_unsigned = "a49a22872567d23240295be874f9dafb4b6fa0da7f11685f511536878bb85425";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,ecb1750"
          ];
          titles = [
            {
              model = "ECB1750";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ecb600 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ecb600";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb600-squashfs-factory.bin";
              sha256 = "4bc2394de8f25a10659ebd77ac029a3ba009f00430ec5855c699e58186651886";
              sha256_unsigned = "4bc2394de8f25a10659ebd77ac029a3ba009f00430ec5855c699e58186651886";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb600-squashfs-sysupgrade.bin";
              sha256 = "eedc905bceb328e201c0542d04296cd7984a572112615004b7efc92394701553";
              sha256_unsigned = "c68a5c96d3c3bb83435e626b210197caef14fee1db6d766ef878bc0bc6270ae8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ecb600-initramfs-kernel.bin";
              sha256 = "e5a56f1f0bc44c47875ba9d3f7389981d29613419a9711e327092eb10c2f9c30";
              sha256_unsigned = "e5a56f1f0bc44c47875ba9d3f7389981d29613419a9711e327092eb10c2f9c30";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,ecb600"
          ];
          titles = [
            {
              model = "ECB600";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ens202ext-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ens202ext-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ens202ext-v1-squashfs-sysupgrade.bin";
              sha256 = "dc75bb8d741fef497ba790acd0df0b2ab1b36868602a9df2ee6cadcaa909f447";
              sha256_unsigned = "060b7c916d0f58f80d605db0f5806446e2ececd6d1c81f8c86411e11b4fa8613";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ens202ext-v1-initramfs-kernel.bin";
              sha256 = "6c0004adae97226e4550d8bee4553e94329ba961733db18d080b8ce23be12fe5";
              sha256_unsigned = "6c0004adae97226e4550d8bee4553e94329ba961733db18d080b8ce23be12fe5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ens202ext-v1-squashfs-factory.bin";
              sha256 = "524cde27782190000718edf75905817c1fc2675def4457b28da3ec4474a8c0bf";
              sha256_unsigned = "524cde27782190000718edf75905817c1fc2675def4457b28da3ec4474a8c0bf";
              type = "factory";
            }
          ];
          supported_devices = [
            "engenius,ens202ext-v1"
          ];
          titles = [
            {
              model = "ENS202EXT";
              variant = "v1";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_enstationac-v1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_enstationac-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_enstationac-v1-initramfs-kernel.bin";
              sha256 = "793fe367a06237839856973f0e1cc6410feb9d0c853e2878f64489b8e1fa1cf0";
              sha256_unsigned = "793fe367a06237839856973f0e1cc6410feb9d0c853e2878f64489b8e1fa1cf0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_enstationac-v1-squashfs-factory.bin";
              sha256 = "5de8950a360ae83301e60dd55390cc5a82deef88cb15c6519f692bf88643cf45";
              sha256_unsigned = "5de8950a360ae83301e60dd55390cc5a82deef88cb15c6519f692bf88643cf45";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_enstationac-v1-squashfs-sysupgrade.bin";
              sha256 = "6f2e09fe2b4cefa0a1ecd5d94f7421adee49036da47e2c27b6590e49f8f67431";
              sha256_unsigned = "d940cb794bad599cb7ccfb865cacfc1d3fd0b8396e1b617d7aa7e439dddd8540";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,enstationac-v1"
          ];
          titles = [
            {
              model = "EnStationAC";
              variant = "v1";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_epg5000 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_epg5000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_epg5000-squashfs-sysupgrade.bin";
              sha256 = "7b69b06849fd4350db7637bf53ad5fc5bf1f956e4fa81d569b8fc164c3ae0061";
              sha256_unsigned = "4aaa2634aea460ecff4df1bb47b292de54c4259a04fae84ea3f889b82935f6c5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_epg5000-initramfs-kernel.bin";
              sha256 = "c088a7d4145f87918d6e90e189bd4bd09beb1a767e85318420cdfa4e40267265";
              sha256_unsigned = "c088a7d4145f87918d6e90e189bd4bd09beb1a767e85318420cdfa4e40267265";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_epg5000-squashfs-factory.dlf";
              sha256 = "7528759b852ffd02949ff04f85afb9a7a25730f2516f0407b7484de92dd48cea";
              sha256_unsigned = "7528759b852ffd02949ff04f85afb9a7a25730f2516f0407b7484de92dd48cea";
              type = "factory";
            }
          ];
          supported_devices = [
            "engenius,epg5000"
            "epg5000"
          ];
          titles = [
            {
              model = "EPG5000";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_esr1200 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_esr1200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1200-initramfs-kernel.bin";
              sha256 = "a72f8a62cbdd86043f0f52888a76443e410c752fdfe36b11cde455d6c247385b";
              sha256_unsigned = "a72f8a62cbdd86043f0f52888a76443e410c752fdfe36b11cde455d6c247385b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1200-squashfs-factory.dlf";
              sha256 = "10e674535965d75a38d9c520177a2508cf4ee855eee659efcd6d922fc53ece25";
              sha256_unsigned = "10e674535965d75a38d9c520177a2508cf4ee855eee659efcd6d922fc53ece25";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1200-squashfs-sysupgrade.bin";
              sha256 = "85c81b4ce71d3bddd3a42f47d0012a2c31533906720c6cd08845e781dab6aab5";
              sha256_unsigned = "0109188ffed454ddac061b61fba389d6339262276d68568c3001d047d317126c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,esr1200"
            "esr1200"
            "esr1750"
            "engenius,esr1750"
          ];
          titles = [
            {
              model = "ESR1200";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_esr1750 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_esr1750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1750-squashfs-factory.dlf";
              sha256 = "2359295badb0a66b41a30cf49236e866f8021a0fee90a875fed1a214b2d53fd9";
              sha256_unsigned = "2359295badb0a66b41a30cf49236e866f8021a0fee90a875fed1a214b2d53fd9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1750-initramfs-kernel.bin";
              sha256 = "218b49984c4b546b0a20bd3eff99edf33bfa3020077ad2b54b85165861727f05";
              sha256_unsigned = "218b49984c4b546b0a20bd3eff99edf33bfa3020077ad2b54b85165861727f05";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr1750-squashfs-sysupgrade.bin";
              sha256 = "69acd87a38bcb6404ed20dd399e32aba45cfdc1028d829f6e9c34dff5f8037f2";
              sha256_unsigned = "4bae28afc2a7fb2236474c91f8e84f6714e825becb15f461f395d973482f4be7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,esr1750"
            "esr1750"
            "esr1200"
            "engenius,esr1200"
          ];
          titles = [
            {
              model = "ESR1750";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_esr900 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_esr900";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr900-initramfs-kernel.bin";
              sha256 = "5ddf082c4dc314752b786445604efb503480cf854146de57631986f6bffdc41f";
              sha256_unsigned = "5ddf082c4dc314752b786445604efb503480cf854146de57631986f6bffdc41f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr900-squashfs-factory.dlf";
              sha256 = "dbc3d2e2da99bf18417b15a080087908db2a0ceac1dc377732f729cfca447557";
              sha256_unsigned = "dbc3d2e2da99bf18417b15a080087908db2a0ceac1dc377732f729cfca447557";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_esr900-squashfs-sysupgrade.bin";
              sha256 = "578fa01c79eecc4a5b7ab4137fef78fb56e1da772fc178b0be9dc27de99c9dcd";
              sha256_unsigned = "66d46377b3b117e15a2340a3fdce59fa2adcbe6343f7b66bc4a1f6d9b1d34b53";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,esr900"
            "esr900"
          ];
          titles = [
            {
              model = "ESR900";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ews511ap = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ews511ap";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ews511ap-initramfs-kernel.bin";
              sha256 = "b7348d0fa996424a6fda6e9e9c5322af85d258a3acb446d3e281023d69001f9e";
              sha256_unsigned = "b7348d0fa996424a6fda6e9e9c5322af85d258a3acb446d3e281023d69001f9e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ews511ap-squashfs-sysupgrade.bin";
              sha256 = "fdcaffa342828ee38bae0923acdab1eb5bc556f53f690584f256400802fb7688";
              sha256_unsigned = "981ec6d0a2efa1c61e9b37e7d4c4321cd443872ec0d4af4af28c278264fba336";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "engenius,ews511ap"
          ];
          titles = [
            {
              model = "EWS511AP";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ews660ap = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-engenius_ews660ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ews660ap-squashfs-sysupgrade.bin";
              sha256 = "8e5f1d77a3f814f9339636d4b6cadbc7e9611817df93f678eca523910d516c4a";
              sha256_unsigned = "bed96656e810e175b12295da7761c0f44144c6911227cf37d5c2b2f55488e82b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ews660ap-squashfs-factory.bin";
              sha256 = "4ade35cd96f3d4559379a959bd6227c8f9b017feaa30912a36ae2ebb0691a824";
              sha256_unsigned = "4ade35cd96f3d4559379a959bd6227c8f9b017feaa30912a36ae2ebb0691a824";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-engenius_ews660ap-initramfs-kernel.bin";
              sha256 = "7516ed06fabefdff7cfd9b5479400504a4d7e643a4e884d9505de3cb9d4204dc";
              sha256_unsigned = "7516ed06fabefdff7cfd9b5479400504a4d7e643a4e884d9505de3cb9d4204dc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,ews660ap"
          ];
          titles = [
            {
              model = "EWS660AP";
              vendor = "EnGenius";
            }
          ];
        };
        enterasys_ws-ap3705i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-enterasys_ws-ap3705i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-enterasys_ws-ap3705i-squashfs-sysupgrade.bin";
              sha256 = "aa1e1f198c0c195a4fec6c9f29a4fca804dcab05e2583f44035773b122eb0f25";
              sha256_unsigned = "1aaea551e731d44af0829dfc0b2f513d93ba0255d44104febcaabe8e66f78090";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-enterasys_ws-ap3705i-initramfs-kernel.bin";
              sha256 = "4e44e73b98bbd68168da12c5624aae9f65fae64b7a44fc7774d5c4d6dbb2ea56";
              sha256_unsigned = "4e44e73b98bbd68168da12c5624aae9f65fae64b7a44fc7774d5c4d6dbb2ea56";
              type = "kernel";
            }
          ];
          supported_devices = [
            "enterasys,ws-ap3705i"
          ];
          titles = [
            {
              model = "WS-AP3705i";
              vendor = "Enterasys";
            }
          ];
        };
        etactica_eg200 = {
          device_packages = [
            "kmod-usb-chipidea2"
            "kmod-ledtrig-oneshot"
            "kmod-usb-serial-ftdi"
            "kmod-usb-storage"
            "kmod-fs-ext4"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-etactica_eg200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-etactica_eg200-squashfs-sysupgrade.bin";
              sha256 = "881a61678953b7784c40aed6c4f3842e82af01fa81c23acf5843fdc86add2ef4";
              sha256_unsigned = "aeaf789bfdf007a7458f4a11dde753a5e56b5620a074120592883698543963a6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-etactica_eg200-initramfs-kernel.bin";
              sha256 = "e7860cb7ccad26968b0f68e6a9dc31bac59fda36f659520315cc5a2268666c37";
              sha256_unsigned = "e7860cb7ccad26968b0f68e6a9dc31bac59fda36f659520315cc5a2268666c37";
              type = "kernel";
            }
          ];
          supported_devices = [
            "etactica,eg200"
            "rme-eg200"
          ];
          titles = [
            {
              model = "EG200";
              vendor = "eTactica";
            }
          ];
        };
        extreme-networks_ws-ap3805i = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-extreme-networks_ws-ap3805i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-extreme-networks_ws-ap3805i-initramfs-kernel.bin";
              sha256 = "f103a0e4105f8c4e128a66e6c3454c72a57e9bbb49ab071dbaf25183f0d49805";
              sha256_unsigned = "f103a0e4105f8c4e128a66e6c3454c72a57e9bbb49ab071dbaf25183f0d49805";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-extreme-networks_ws-ap3805i-squashfs-sysupgrade.bin";
              sha256 = "d527d948933d85af4dbb13906c94f8d797c715160786121528e6beb85a80ae43";
              sha256_unsigned = "35ec5391db08ccb3f4ae960272f3054ca0a710e515f071ef9e8de0966fb8732b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap3805i"
          ];
          titles = [
            {
              model = "WS-AP3805i";
              vendor = "Extreme Networks";
            }
          ];
        };
        fortinet_fap-221-b = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-fortinet_fap-221-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-fortinet_fap-221-b-squashfs-sysupgrade.bin";
              sha256 = "0551e11a19a2d60fc46afd943f3327e7f8a7cfd7f9fc030a7cbd20ca05c291a1";
              sha256_unsigned = "96fde85336c58692b9f2a117cd4951081d59d4a3017a91ea0b01590aa686eda7";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-fortinet_fap-221-b-squashfs-factory.bin";
              sha256 = "83b63ced12cc3d719924ae1d970ecb661f209cdc68cb7dba6983a3ffa20f3b7f";
              sha256_unsigned = "83b63ced12cc3d719924ae1d970ecb661f209cdc68cb7dba6983a3ffa20f3b7f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-fortinet_fap-221-b-initramfs-kernel.bin";
              sha256 = "7802e61a0ed28a113f9835aa65cebd0320b8db2a8a829d327663aa211f2c6eb8";
              sha256_unsigned = "7802e61a0ed28a113f9835aa65cebd0320b8db2a8a829d327663aa211f2c6eb8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fap-221-b"
          ];
          titles = [
            {
              model = "FAP-221-B";
              vendor = "Fortinet";
            }
          ];
        };
        glinet_6408 = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_6408";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_6408-initramfs-kernel.bin";
              sha256 = "3094aa8b261f0b47dc38b621eb868350f966f452e718221da19e5acbbf31c2a2";
              sha256_unsigned = "3094aa8b261f0b47dc38b621eb868350f966f452e718221da19e5acbbf31c2a2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,6408"
            "gl-inet"
          ];
          titles = [
            {
              model = "6408";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_6416 = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_6416";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_6416-squashfs-sysupgrade.bin";
              sha256 = "4a3a114962916505ef10b6c8e113c1ab6d7d51f254e9e1b10b99441282fad7ca";
              sha256_unsigned = "e1a23f419031cf972944415f8d25fe13b77e94fb9488d818a13e00f98a1a421d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_6416-initramfs-kernel.bin";
              sha256 = "540aadf7a6802a19504c4a2b172d27c4cb9d81b4654484782f1b80830c6c0462";
              sha256_unsigned = "540aadf7a6802a19504c4a2b172d27c4cb9d81b4654484782f1b80830c6c0462";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,6416"
            "gl-inet"
          ];
          titles = [
            {
              model = "6416";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar150 = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar150-squashfs-sysupgrade.bin";
              sha256 = "9338cacce4507e45180d4fdf802925b64f09d6e5d6473b96b176560ec7d4bcc8";
              sha256_unsigned = "661a0d3c353c0addfeb653fdc2cef7e01892332f3988d4639d764b383e477093";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar150-initramfs-kernel.bin";
              sha256 = "ccba2f462f9a67400833f5fa0562b921971faf66a14c93cbc07a7b40b6492fc3";
              sha256_unsigned = "ccba2f462f9a67400833f5fa0562b921971faf66a14c93cbc07a7b40b6492fc3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-ar150"
            "gl-ar150"
          ];
          titles = [
            {
              model = "GL-AR150";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar300m-lite = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m-lite";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m-lite-squashfs-sysupgrade.bin";
              sha256 = "08689107504e5282c391441ccf8fef63c78771e2b3d02aa9568ec1eb3f4b9e7e";
              sha256_unsigned = "0458458350593cc17260712d3122ff0ce6adeeca1dfba05e6379d215c49ef57c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m-lite-initramfs-kernel.bin";
              sha256 = "aef661e012327a274864d84fca9b4b38711a8e002d545103633d9daaff59976a";
              sha256_unsigned = "aef661e012327a274864d84fca9b4b38711a8e002d545103633d9daaff59976a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-lite"
            "gl-ar300m"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "Lite";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar300m16 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m16";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m16-initramfs-kernel.bin";
              sha256 = "3d212d1f219241d84a87d043840bc172ae294f122a2bf6f819def4952b785610";
              sha256_unsigned = "3d212d1f219241d84a87d043840bc172ae294f122a2bf6f819def4952b785610";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar300m16-squashfs-sysupgrade.bin";
              sha256 = "5f776b1f8d75f3787b47aa6697245e2359272cf56d2b8fb1b9d7a0d261428c55";
              sha256_unsigned = "052f5686dc634c41c14599ca3530fbb8199cb2c77fc58813210d297519067d22";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m16"
            "gl-ar300m"
          ];
          titles = [
            {
              model = "GL-AR300M16";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar750-squashfs-sysupgrade.bin";
              sha256 = "9dac43300353650fe2bf3d836bf80d60d44b0f5bf768185642e5f6511f025e90";
              sha256_unsigned = "567f0b0a9979cb80f620e66d7e29acc8162f913319bacbe7b400fff6176167e5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-ar750-initramfs-kernel.bin";
              sha256 = "8a4f1900652cb3263e2f2b37092f23f88a7998a5a638b592afbdf340a7c23d08";
              sha256_unsigned = "8a4f1900652cb3263e2f2b37092f23f88a7998a5a638b592afbdf340a7c23d08";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750"
            "gl-ar750"
          ];
          titles = [
            {
              model = "GL-AR750";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-mifi = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-mifi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-mifi-squashfs-sysupgrade.bin";
              sha256 = "f8d53753947fc39c375cbf770dcfd79e2ebd5711b82cbbe4041d7851f2328da0";
              sha256_unsigned = "29ab4716bf60513a9bb856029cab452ce697a6f8f5973c4d9bf19568cafa2d30";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-mifi-initramfs-kernel.bin";
              sha256 = "7a568871084130787843b5247bd29c66e2c23db4199711a924c9e63509532431";
              sha256_unsigned = "7a568871084130787843b5247bd29c66e2c23db4199711a924c9e63509532431";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-mifi"
            "gl-mifi"
          ];
          titles = [
            {
              model = "GL-MiFi";
              vendor = "GL.iNET";
            }
          ];
        };
        glinet_gl-usb150 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-usb150";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-usb150-initramfs-kernel.bin";
              sha256 = "67c1d05ebf49e57e32da571b80d5ffceae0915b936f97c968012501e5fa19c76";
              sha256_unsigned = "67c1d05ebf49e57e32da571b80d5ffceae0915b936f97c968012501e5fa19c76";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-usb150-squashfs-sysupgrade.bin";
              sha256 = "96e026897fdac35f0bf9ed4776a8ca3d415463044ab3cc38166b11bdf96449f8";
              sha256_unsigned = "653ea6e4f4a8598cd3d50a65fdc4e05054594a433e5eff4670c447c4e3ab4e99";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-usb150"
            "gl-usb150"
          ];
          titles = [
            {
              model = "GL-USB150";
              vendor = "GL.iNET";
            }
          ];
        };
        glinet_gl-x300b = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x300b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x300b-squashfs-sysupgrade.bin";
              sha256 = "45663e29f6ccc82ced8736d63b14dbd19579e32de784fcc5b4d144ffabc8d707";
              sha256_unsigned = "94e59881881b038a6a83432b1873b14c6cb0a19338e6a655fb106befaa98493d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x300b-initramfs-kernel.bin";
              sha256 = "92532398bb957ca7d4e6a9c43dde1d258446bc315df2fa777eed1fa68a3e7785";
              sha256_unsigned = "92532398bb957ca7d4e6a9c43dde1d258446bc315df2fa777eed1fa68a3e7785";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-x300b"
          ];
          titles = [
            {
              model = "GL-X300B";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x750 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x750-squashfs-sysupgrade.bin";
              sha256 = "62f1147aa65dac296d2a75b2b50c432ddb236d817e53b831154207807f16013c";
              sha256_unsigned = "6cf72970f86297ed5e80613b1933a24d95c255d17c125abe16ce8f0ccbf5b1f5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-glinet_gl-x750-initramfs-kernel.bin";
              sha256 = "7caefafd0929828ed4e1d09d1dad0151ac03c840bd135e82712c0955e4a07db2";
              sha256_unsigned = "7caefafd0929828ed4e1d09d1dad0151ac03c840bd135e82712c0955e4a07db2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-x750"
          ];
          titles = [
            {
              model = "GL-X750";
              vendor = "GL.iNet";
            }
          ];
        };
        hak5_lan-turtle = {
          device_packages = [
            "kmod-usb-chipidea2"
            "-iwinfo"
            "-kmod-ath9k"
            "-swconfig"
            "-uboot-envtools"
            "-wpad-openssl"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-hak5_lan-turtle";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_lan-turtle-initramfs-kernel.bin";
              sha256 = "fcc54e1cf049a5c7d022d21ffb4ce0b5f8bd46befebeaa484f995c3d4c5b1cb8";
              sha256_unsigned = "fcc54e1cf049a5c7d022d21ffb4ce0b5f8bd46befebeaa484f995c3d4c5b1cb8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_lan-turtle-squashfs-sysupgrade.bin";
              sha256 = "ffc568131df1e5e03c7ad90a0a37765091b571bf54060eb9410ba87c389915c7";
              sha256_unsigned = "1529d89e717b422b485d8084935fddbfe1041aa4ceebc3f93c168cba8f707c73";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "hak5,lan-turtle"
            "lan-turtle"
          ];
          titles = [
            {
              model = "LAN Turtle";
              vendor = "Hak5";
            }
          ];
        };
        hak5_packet-squirrel = {
          device_packages = [
            "kmod-usb-chipidea2"
            "-iwinfo"
            "-kmod-ath9k"
            "-swconfig"
            "-uboot-envtools"
            "-wpad-openssl"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-hak5_packet-squirrel";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_packet-squirrel-squashfs-sysupgrade.bin";
              sha256 = "859133913071e556195471ac77637053fd5753fdec9447c2f910ee5dbc73ed29";
              sha256_unsigned = "745d1d4a85e4eca3cfd9dbf09964000642eb0bc7179b8e41d9fd42fe69865aa8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_packet-squirrel-initramfs-kernel.bin";
              sha256 = "c644b83da9af089ade5169bdd3e8994bc8d4425738ff1b223fb31fabef2ba4dc";
              sha256_unsigned = "c644b83da9af089ade5169bdd3e8994bc8d4425738ff1b223fb31fabef2ba4dc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hak5,packet-squirrel"
            "packet-squirrel"
          ];
          titles = [
            {
              model = "Packet Squirrel";
              vendor = "Hak5";
            }
          ];
        };
        hak5_wifi-pineapple-nano = {
          device_packages = [
            "kmod-ath9k-htc"
            "kmod-usb-chipidea2"
            "kmod-usb-storage"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-hak5_wifi-pineapple-nano";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_wifi-pineapple-nano-squashfs-sysupgrade.bin";
              sha256 = "04c16263459c8b4135b372fee4a549844f9044c3358580f873061b82fc3fd2ab";
              sha256_unsigned = "c5a94affe08ad183cdf1dbacdf2fda3258b6da01ae44497e8e1f419fc2df63c5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-hak5_wifi-pineapple-nano-initramfs-kernel.bin";
              sha256 = "f5b084a0ce2ecc4a4f4f4502e669263e960e676b8f20e0d8b0f4e4ab4baf80dd";
              sha256_unsigned = "f5b084a0ce2ecc4a4f4f4502e669263e960e676b8f20e0d8b0f4e4ab4baf80dd";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hak5,wifi-pineapple-nano"
            "wifi-pineapple-nano"
          ];
          titles = [
            {
              model = "WiFi Pineapple NANO";
              vendor = "Hak5";
            }
          ];
        };
        hiwifi_hc6361 = {
          device_packages = [
            "kmod-usb-core"
            "kmod-usb2"
            "kmod-usb-chipidea2"
            "kmod-usb-storage"
            "kmod-fs-ext4"
            "kmod-nls-iso8859-1"
            "e2fsprogs"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-hiwifi_hc6361";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-hiwifi_hc6361-squashfs-sysupgrade.bin";
              sha256 = "3eb84be6b0ee8ab32a118eba4b247fc61ae130a8fac10f9f600bd10e0baf9113";
              sha256_unsigned = "d4f9f7fddaca57a985ff3dcaea9089308a821524399925d9836730e2b76574c4";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-hiwifi_hc6361-initramfs-kernel.bin";
              sha256 = "8548b91b5acebbc8ed99e8ae34c3cc8ceba9f69d569a52ebff9485baf0c9a234";
              sha256_unsigned = "8548b91b5acebbc8ed99e8ae34c3cc8ceba9f69d569a52ebff9485baf0c9a234";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hiwifi,hc6361"
          ];
          titles = [
            {
              model = "HC6361";
              vendor = "HiWiFi";
            }
          ];
        };
        huawei_ap5030dn = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-huawei_ap5030dn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-huawei_ap5030dn-initramfs-kernel.bin";
              sha256 = "641166184c7cf2885b9ec3b421d3ebac720ffe15ff7609da18ec84a80df518a1";
              sha256_unsigned = "641166184c7cf2885b9ec3b421d3ebac720ffe15ff7609da18ec84a80df518a1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-huawei_ap5030dn-squashfs-sysupgrade.bin";
              sha256 = "9f7b5a01771ca79f73811b44ec625b77ebb88df17233b2a6050d8efb0bb44aee";
              sha256_unsigned = "a75d69ebec9f6b37144714bf54fdc8abe5848cc5a46b95486754dc986bd3b6ca";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "huawei,ap5030dn"
          ];
          titles = [
            {
              model = "AP5030DN";
              vendor = "Huawei";
            }
          ];
        };
        huawei_ap6010dn = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-huawei_ap6010dn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-huawei_ap6010dn-initramfs-kernel.bin";
              sha256 = "bb03b715921f41c03c0ea86be5fb84c41d329a4af14ce18c7898496cc163ec75";
              sha256_unsigned = "bb03b715921f41c03c0ea86be5fb84c41d329a4af14ce18c7898496cc163ec75";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-huawei_ap6010dn-squashfs-sysupgrade.bin";
              sha256 = "f6f6a5b48a4cce103b4e66c5a837596454554228821d7963d662d90efa1c6ce9";
              sha256_unsigned = "423a4869b506a277b1ee4d10cf24c8ca9f59d8a8173e41f28f494cb9d44f7d6a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "huawei,ap6010dn"
          ];
          titles = [
            {
              model = "AP6010DN";
              vendor = "Huawei";
            }
          ];
        };
        iodata_etg3-r = {
          device_packages = [
            "-iwinfo"
            "-kmod-ath9k"
            "-wpad-openssl"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-iodata_etg3-r";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_etg3-r-initramfs-kernel.bin";
              sha256 = "c95cc1cdb863a1f080884213e5b4a4c144b64f2147dba2ce89d4abaddd8cbd70";
              sha256_unsigned = "c95cc1cdb863a1f080884213e5b4a4c144b64f2147dba2ce89d4abaddd8cbd70";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_etg3-r-squashfs-sysupgrade.bin";
              sha256 = "676a40d9122e507ffcbf8b686faecae26bff6e069cb295d00d3314d26608fe29";
              sha256_unsigned = "7bbb4f33e31788807cca1f87c8fa27cb487cee6bca5dc5f442f652d6ecd36f6f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iodata,etg3-r"
          ];
          titles = [
            {
              model = "ETG3-R";
              vendor = "I-O DATA";
            }
          ];
        };
        iodata_wn-ac1167dgr = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1167dgr";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1167dgr-initramfs-kernel.bin";
              sha256 = "518a29435afcf98db6ef2eae9b27474d137ed4001b59855661811703b90355bf";
              sha256_unsigned = "518a29435afcf98db6ef2eae9b27474d137ed4001b59855661811703b90355bf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1167dgr-squashfs-sysupgrade.bin";
              sha256 = "4c5b9300e7492ea95bff2a2306e994d7abdc8cb88057ff8025400b4b44309699";
              sha256_unsigned = "193b2163df04a426598d38eed5f47889917bf5704093b7b05604db2817f5c820";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1167dgr-squashfs-factory.bin";
              sha256 = "da55fa158e7efd94ce19efa9d8e10545dd4168fcb89358eb542149eeaba24471";
              sha256_unsigned = "da55fa158e7efd94ce19efa9d8e10545dd4168fcb89358eb542149eeaba24471";
              type = "factory";
            }
          ];
          supported_devices = [
            "iodata,wn-ac1167dgr"
          ];
          titles = [
            {
              model = "WN-AC1167DGR";
              vendor = "I-O DATA";
            }
          ];
        };
        iodata_wn-ac1600dgr = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr-squashfs-sysupgrade.bin";
              sha256 = "110fd61285f0f2d66d00bc6aed88fa27a6271d68dc31a2013a0ab6a8a360f53b";
              sha256_unsigned = "94e3a4a3f2e4c277f027eb15fc3e584690f034ff97eb7bae3e4cde3d9efceb09";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr-squashfs-factory.bin";
              sha256 = "3b11e7db79db294a451f92981918c29bf48a2127090af554fb86e758b64f530b";
              sha256_unsigned = "3b11e7db79db294a451f92981918c29bf48a2127090af554fb86e758b64f530b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr-initramfs-kernel.bin";
              sha256 = "406f3191a0de17110c97d3575c61debd5121133de2ef4d8e9bb493e45876c98a";
              sha256_unsigned = "406f3191a0de17110c97d3575c61debd5121133de2ef4d8e9bb493e45876c98a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iodata,wn-ac1600dgr"
          ];
          titles = [
            {
              model = "WN-AC1600DGR";
              vendor = "I-O DATA";
            }
          ];
        };
        iodata_wn-ac1600dgr2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr2-initramfs-kernel.bin";
              sha256 = "11234ca4481a21c59aef52d2e296c3ab952fc615bff14dd3ae3896f1c4000ef1";
              sha256_unsigned = "11234ca4481a21c59aef52d2e296c3ab952fc615bff14dd3ae3896f1c4000ef1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr2-squashfs-dgr2-dgr3-factory.bin";
              sha256 = "41b0f7f2a1498192e339d86b1e736cf96f3a9519906444227c6cd530afc296b5";
              sha256_unsigned = "41b0f7f2a1498192e339d86b1e736cf96f3a9519906444227c6cd530afc296b5";
              type = "dgr2-dgr3-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ac1600dgr2-squashfs-sysupgrade.bin";
              sha256 = "56ac2292ec5bc3ba7d8eda5de29648389cf12f964c13c86a39b4b8187b1f9672";
              sha256_unsigned = "04e78f5ac5b68dbb327a5faec985a3955f797252629598bc2d8d69189c01e4df";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iodata,wn-ac1600dgr2"
          ];
          titles = [
            {
              model = "WN-AC1600DGR2/DGR3";
              vendor = "I-O DATA";
            }
          ];
        };
        iodata_wn-ag300dgr = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ag300dgr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ag300dgr-squashfs-factory.bin";
              sha256 = "b2f512405fe63cdf591e8c9d4cb4f09f256d7806b479be85d7b7c83d1a5e59a8";
              sha256_unsigned = "b2f512405fe63cdf591e8c9d4cb4f09f256d7806b479be85d7b7c83d1a5e59a8";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ag300dgr-initramfs-kernel.bin";
              sha256 = "44f1f4e38f99636ecda9dcab2ba7b33c4c32f6b9645a33912f76d287c578a7b3";
              sha256_unsigned = "44f1f4e38f99636ecda9dcab2ba7b33c4c32f6b9645a33912f76d287c578a7b3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-iodata_wn-ag300dgr-squashfs-sysupgrade.bin";
              sha256 = "57d623941ebb0be0f91dfaccb1e7c7f263979d0a0cbed4a05b154fa458995b44";
              sha256_unsigned = "3ddc079534937a45286664116a2b2404d561aeea47a6aa407e008541a42d1210";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iodata,wn-ag300dgr"
          ];
          titles = [
            {
              model = "WN-AG300DGR";
              vendor = "I-O DATA";
            }
          ];
        };
        jjplus_ja76pf2 = {
          device_packages = [
            "-kmod-ath9k"
            "-swconfig"
            "-wpad-openssl"
            "-uboot-envtools"
            "fconfig"
            "kmod-hwmon-lm75"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-jjplus_ja76pf2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_ja76pf2-squashfs-sysupgrade.bin";
              sha256 = "1afee3b1a26c6508cea3f5ad944050abc7f16e47ffd5969d16dd6206335b59c1";
              sha256_unsigned = "a03a29785299d2f2b9bed642d858f656063256f5d8db758a823b87df2334249f";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_ja76pf2-loader.bin";
              sha256 = "bb57a1f09b36439f6162e0ad9b0049f005351a2bb90f6f21727ed418968ef100";
              sha256_unsigned = "bb57a1f09b36439f6162e0ad9b0049f005351a2bb90f6f21727ed418968ef100";
              type = "loader.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_ja76pf2-squashfs-firmware.bin";
              sha256 = "e1e1ec3db5b5eff5a7c86267cd28ee4358980534f831d51cb460432809c9b363";
              sha256_unsigned = "e1e1ec3db5b5eff5a7c86267cd28ee4358980534f831d51cb460432809c9b363";
              type = "firmware";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_ja76pf2-initramfs-kernel.bin";
              sha256 = "bf9cc5a4a92d56a823b8c2612bfd9c00de1f9a0c31984344135ae0fe5d6d58cf";
              sha256_unsigned = "bf9cc5a4a92d56a823b8c2612bfd9c00de1f9a0c31984344135ae0fe5d6d58cf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "jjplus,ja76pf2"
          ];
          titles = [
            {
              model = "JA76PF2";
              vendor = "jjPlus";
            }
          ];
        };
        jjplus_jwap230 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-jjplus_jwap230";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_jwap230-initramfs-kernel.bin";
              sha256 = "a2ca7ef9dab4875020efe7abba7ff5f60a4dc0d6b45483a97cffd3212a178d5c";
              sha256_unsigned = "a2ca7ef9dab4875020efe7abba7ff5f60a4dc0d6b45483a97cffd3212a178d5c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-jjplus_jwap230-squashfs-sysupgrade.bin";
              sha256 = "a176fe0bf49089a6bc1d1a4f3c35d1b19a5852ebee36ecd15e98d63578c35652";
              sha256_unsigned = "0f34fd99f84e215f7761d81210bb9c2b62971a2450ac7169cbecf1ff4284c3b9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "jjplus,jwap230"
          ];
          titles = [
            {
              model = "JWAP230";
              vendor = "jjPlus";
            }
          ];
        };
        joyit_jt-or750i = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-joyit_jt-or750i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-joyit_jt-or750i-squashfs-sysupgrade.bin";
              sha256 = "48a4e6c7db6da259de64787103177b7e73be28b7c666843a38ec6c3ef0015686";
              sha256_unsigned = "d232742e5db1fa9bfaa93a08c9ab70f6f2d69cbcb6d866795f1c5eceb7f7b10f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-joyit_jt-or750i-initramfs-kernel.bin";
              sha256 = "97d57ea134ffd176420bff7cca238181b319ca13e39f6294ea7fbd78bb464097";
              sha256_unsigned = "97d57ea134ffd176420bff7cca238181b319ca13e39f6294ea7fbd78bb464097";
              type = "kernel";
            }
          ];
          supported_devices = [
            "joyit,jt-or750i"
          ];
          titles = [
            {
              model = "JT-OR750i";
              vendor = "Joy-IT";
            }
          ];
        };
        kuwfi_c910 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-net-cdc-ether"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-kuwfi_c910";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-kuwfi_c910-initramfs-kernel.bin";
              sha256 = "11a8bba6eaca52ad8594ec0b75a1f3605ad646c9243fd1c64c62a31e5ccf3a9b";
              sha256_unsigned = "11a8bba6eaca52ad8594ec0b75a1f3605ad646c9243fd1c64c62a31e5ccf3a9b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-kuwfi_c910-squashfs-sysupgrade.bin";
              sha256 = "b4db17fa63b92d44e4cc2712d6184915a39e627314aa1e77a4e7ee7e53063168";
              sha256_unsigned = "50e08f0b6a117bfe2c80bf9ccaff6e18533c8c96d1f7355cd7373407c4a7f027";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-kuwfi_c910-squashfs-factory.bin";
              sha256 = "9a1db085b3a1a2174b48f7e072f54cf6a9589cf41f79e2ec90ee35851efd69dd";
              sha256_unsigned = "9a1db085b3a1a2174b48f7e072f54cf6a9589cf41f79e2ec90ee35851efd69dd";
              type = "factory";
            }
          ];
          supported_devices = [
            "kuwfi,c910"
          ];
          titles = [
            {
              model = "C910";
              vendor = "KuWFi";
            }
          ];
        };
        letv_lba-047-ch = {
          device_packages = [
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-letv_lba-047-ch";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-letv_lba-047-ch-initramfs-kernel.bin";
              sha256 = "40eff42b93f089a44dfbf393529f7cd708e8a4173a77a0b157626d6740d7126c";
              sha256_unsigned = "40eff42b93f089a44dfbf393529f7cd708e8a4173a77a0b157626d6740d7126c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-letv_lba-047-ch-squashfs-sysupgrade.bin";
              sha256 = "a93e03dfa224d1627de875db974d08da13b4cba7fed25302a7328fc6299e3af2";
              sha256_unsigned = "c835bbbb6de723065545c8534a65739db4302e7436c7181abfb8d0d3c79debdc";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-letv_lba-047-ch-squashfs-kernel.bin";
              sha256 = "9d7c3abf8ffc10d472893fbb46f1ef40ac4b92db2274e8c5691fd1c9ea9f1a8f";
              sha256_unsigned = "9d7c3abf8ffc10d472893fbb46f1ef40ac4b92db2274e8c5691fd1c9ea9f1a8f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-letv_lba-047-ch-squashfs-rootfs.bin";
              sha256 = "84a68dbc3a20db28d905cd0776c9eda851d914e82ffb9c4a5896f43cfcad1680";
              sha256_unsigned = "84a68dbc3a20db28d905cd0776c9eda851d914e82ffb9c4a5896f43cfcad1680";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "letv,lba-047-ch"
          ];
          titles = [
            {
              model = "LBA-047-CH";
              vendor = "Letv";
            }
          ];
        };
        librerouter_librerouter-v1 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-librerouter_librerouter-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-librerouter_librerouter-v1-initramfs-kernel.bin";
              sha256 = "0a9f6627b2d46fe969129f87f5d0d63d02250e7fecdba51306562c1335a66b49";
              sha256_unsigned = "0a9f6627b2d46fe969129f87f5d0d63d02250e7fecdba51306562c1335a66b49";
              type = "kernel";
            }
          ];
          supported_devices = [
            "librerouter,librerouter-v1"
          ];
          titles = [
            {
              model = "LibreRouter";
              variant = "v1";
              vendor = "Librerouter";
            }
          ];
        };
        meraki_mr12 = {
          device_packages = [
            "kmod-owl-loader"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-meraki_mr12";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-meraki_mr12-initramfs-kernel.bin";
              sha256 = "c5a890bc0abf2cc22a583f183f1013c27b590665e9969488e7b4029a201cce38";
              sha256_unsigned = "c5a890bc0abf2cc22a583f183f1013c27b590665e9969488e7b4029a201cce38";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-meraki_mr12-squashfs-sysupgrade.bin";
              sha256 = "c12bdbbb1b92aa5b01aee250ab73300ad5e5f9f1779e64edee826ee42bd0b4a4";
              sha256_unsigned = "49a0fbcc57fc0a5b39e6ea8f7a429d4b95f6599910954e7f52929410d48e5c13";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr12"
            "mr12"
          ];
          titles = [
            {
              model = "MR12";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mr16 = {
          device_packages = [
            "kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-meraki_mr16";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-meraki_mr16-initramfs-kernel.bin";
              sha256 = "a56e9fde36b9e561efaf67f3e37c866b975c95fbc4a6c3019112051055fd6709";
              sha256_unsigned = "a56e9fde36b9e561efaf67f3e37c866b975c95fbc4a6c3019112051055fd6709";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-meraki_mr16-squashfs-sysupgrade.bin";
              sha256 = "44ccb9ac936d0dd0407f5fb30fa207fedaa612b41ffe5efef295745ba74fbef0";
              sha256_unsigned = "7ccd58152730b215017fafaee8d33c5d8ca75d344c4511b1d6912e83e2a3cf5f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr16"
            "mr16"
          ];
          titles = [
            {
              model = "MR16";
              vendor = "Meraki";
            }
          ];
        };
        mercury_mw4530r-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-mercury_mw4530r-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-mercury_mw4530r-v1-initramfs-kernel.bin";
              sha256 = "2b0a3d92f95a24bdb8aed1a9548b7cabfe00ce876e01f9b96c51f6f914648581";
              sha256_unsigned = "2b0a3d92f95a24bdb8aed1a9548b7cabfe00ce876e01f9b96c51f6f914648581";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mercury,mw4530r-v1"
            "tl-wdr4300"
          ];
          titles = [
            {
              model = "MW4530R";
              variant = "v1";
              vendor = "Mercury";
            }
          ];
        };
        nec_wf1200cr = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-nec_wf1200cr";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-nec_wf1200cr-initramfs-kernel.bin";
              sha256 = "a3dfd753ed4091179a28b8a3ffa66eef030f0fb93085618c780e89c908be0efb";
              sha256_unsigned = "a3dfd753ed4091179a28b8a3ffa66eef030f0fb93085618c780e89c908be0efb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wf1200cr"
          ];
          titles = [
            {
              model = "Aterm WF1200CR";
              vendor = "NEC";
            }
          ];
        };
        nec_wg1200cr = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-nec_wg1200cr";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-nec_wg1200cr-initramfs-kernel.bin";
              sha256 = "8a9e22307093d51b893560ce9d9f014271e1ab8cb25fe19448e6d2ab9787fee6";
              sha256_unsigned = "8a9e22307093d51b893560ce9d9f014271e1ab8cb25fe19448e6d2ab9787fee6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wg1200cr"
          ];
          titles = [
            {
              model = "Aterm WG1200CR";
              vendor = "NEC";
            }
          ];
        };
        netgear_ex7300 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-initramfs-kernel.bin";
              sha256 = "002c54af0ffdb0a4036298063e9282d95af95d9edfb1dfdaa1c39f565f6a0495";
              sha256_unsigned = "002c54af0ffdb0a4036298063e9282d95af95d9edfb1dfdaa1c39f565f6a0495";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-squashfs-factory.img";
              sha256 = "e2cb520bcc80b2475aff21ac99e9d8266a2379d289d5e2fcb7c3f97dfb13cf52";
              sha256_unsigned = "e2cb520bcc80b2475aff21ac99e9d8266a2379d289d5e2fcb7c3f97dfb13cf52";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-squashfs-sysupgrade.bin";
              sha256 = "4a9928f87108a9a79790b0db6f037c560ac72a2f65368dc3e4817372bf6621b9";
              sha256_unsigned = "b50d70901024b11a1ce0c22b77695c20723f35c8862c879f32914395ba3970d5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,ex7300"
            "netgear,ex6400"
          ];
          titles = [
            {
              model = "EX7300";
              vendor = "NETGEAR";
            }
            {
              model = "EX6400";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_ex7300-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-v2-initramfs-kernel.bin";
              sha256 = "6bb9f6a88b8ca76c1fe092c63fdea6cee6146bd6056b500e47b737e1ba1809eb";
              sha256_unsigned = "6bb9f6a88b8ca76c1fe092c63fdea6cee6146bd6056b500e47b737e1ba1809eb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-v2-squashfs-factory.img";
              sha256 = "bedafd2736fef4acc252c6afb976751d29673ede84f275ca29146ee19452a49f";
              sha256_unsigned = "bedafd2736fef4acc252c6afb976751d29673ede84f275ca29146ee19452a49f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_ex7300-v2-squashfs-sysupgrade.bin";
              sha256 = "0b7efab4961c7cc5f794c03f9647ed9cb9148fb6a029c3594f9b0a4a19553d9e";
              sha256_unsigned = "c0eb362f398ddc939727aba281f7156dd12b8615061d76a76dc174a406ea1653";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,ex7300-v2"
          ];
          titles = [
            {
              model = "EX7300";
              variant = "v2";
              vendor = "NETGEAR";
            }
            {
              model = "EX6250";
              vendor = "NETGEAR";
            }
            {
              model = "EX6400";
              variant = "v2";
              vendor = "NETGEAR";
            }
            {
              model = "EX6410";
              vendor = "NETGEAR";
            }
            {
              model = "EX6420";
              vendor = "NETGEAR";
            }
            {
              model = "EX7320";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndap360 = {
          device_packages = [
            "kmod-leds-reset"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndap360";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndap360-initramfs-kernel.bin";
              sha256 = "9fa93b7e5b7a5f0b8bbb22d3f9246f79f739342762c1957be6da3c602f149457";
              sha256_unsigned = "9fa93b7e5b7a5f0b8bbb22d3f9246f79f739342762c1957be6da3c602f149457";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndap360"
          ];
          titles = [
            {
              model = "WNDAP360";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700-initramfs-kernel.bin";
              sha256 = "8c181ca834a1028a82737ad448d06c8dff4b9126a50ab8ff74c21a7d5574ae75";
              sha256_unsigned = "8c181ca834a1028a82737ad448d06c8dff4b9126a50ab8ff74c21a7d5574ae75";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr3700"
            "wndr3700"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700-v2-initramfs-kernel.bin";
              sha256 = "e17106f33e6dbc8d2164c6c72265bbfdb54f09b1d14076dfa78388c85873255c";
              sha256_unsigned = "e17106f33e6dbc8d2164c6c72265bbfdb54f09b1d14076dfa78388c85873255c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700-v2-squashfs-sysupgrade.bin";
              sha256 = "a39fbdeb481bc444e14521a0e5f5e16232712c25bdb5d95fa2e45317c0850129";
              sha256_unsigned = "f1c5877c983de9c53622672a5d82013a6bcb3c9e5c7cfd331d98ceef0f8b402e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3700-v2-squashfs-factory.img";
              sha256 = "6f5a7feebb2d01082a054d9c56934816c8d012d5a0564f3fa49c23732a985c0f";
              sha256_unsigned = "6f5a7feebb2d01082a054d9c56934816c8d012d5a0564f3fa49c23732a985c0f";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v2"
            "wndr3700"
            "netgear,wndr3700v2"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3800 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800-squashfs-factory.img";
              sha256 = "d879abbe1c3f646ccfca2ff88c0af6ca895e8b449742a6ea20ac0ad293aa8951";
              sha256_unsigned = "d879abbe1c3f646ccfca2ff88c0af6ca895e8b449742a6ea20ac0ad293aa8951";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800-squashfs-sysupgrade.bin";
              sha256 = "9ee0c7e3a65b43b416f818e901a44426181ca8a6a1d88c2054f3b02c341ab8a8";
              sha256_unsigned = "65e5d23bc1a7b104e11a6c046a0faddb3f5cd53cc8afbe061608aecb6ea9bda0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800-initramfs-kernel.bin";
              sha256 = "5907462be83470532825777ab475aeb1a48d9276a592d5728737d63c2a4123ef";
              sha256_unsigned = "5907462be83470532825777ab475aeb1a48d9276a592d5728737d63c2a4123ef";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr3800"
            "wndr3700"
          ];
          titles = [
            {
              model = "WNDR3800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3800ch = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800ch";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800ch-squashfs-sysupgrade.bin";
              sha256 = "232ab2ce82810a87e3efe1eb6bad7994b159f7144c7c362c685a8b550a9582fe";
              sha256_unsigned = "42e559e83b518a4483fe3a95ac54dd770a7cfbf46154776242a1f24b63a4070b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800ch-initramfs-kernel.bin";
              sha256 = "f445e66562b1609596518a9db1e0ca10cbb05b3eb2a9277eafb5922877547a18";
              sha256_unsigned = "f445e66562b1609596518a9db1e0ca10cbb05b3eb2a9277eafb5922877547a18";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndr3800ch-squashfs-factory.img";
              sha256 = "56a8f8c1a8c1e65a9fc300d92bca5c4371f7ded1960c1274f75ffca45cb52b51";
              sha256_unsigned = "56a8f8c1a8c1e65a9fc300d92bca5c4371f7ded1960c1274f75ffca45cb52b51";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr3800ch"
            "wndr3700"
          ];
          titles = [
            {
              model = "WNDR3800CH";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndrmac-v1 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v1-initramfs-kernel.bin";
              sha256 = "5fd685169ed5efab666d82fd90840803665a72efc4373637adf9475df04c9b23";
              sha256_unsigned = "5fd685169ed5efab666d82fd90840803665a72efc4373637adf9475df04c9b23";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v1-squashfs-factory.img";
              sha256 = "50672a26d84907a0e8633c9266c6d412b0022c109e75baa6abed73f53ebcb804";
              sha256_unsigned = "50672a26d84907a0e8633c9266c6d412b0022c109e75baa6abed73f53ebcb804";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v1-squashfs-sysupgrade.bin";
              sha256 = "88c8bd7b380c7de860fe1f3ec4dde457a0b23ea179edc53d6426b659ee37d3ca";
              sha256_unsigned = "27c4eca100cb338f9716bc9e676da0fe7c3c85084755c37ab8c81a1e682976e4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndrmac-v1"
            "wndr3700"
          ];
          titles = [
            {
              model = "WNDRMAC";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndrmac-v2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-leds-reset"
            "kmod-owl-loader"
            "kmod-switch-rtl8366s"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v2-squashfs-factory.img";
              sha256 = "71b51a06e388ba4df3d7da6832db31137b0f56c6a368894dae405f822f999c8f";
              sha256_unsigned = "71b51a06e388ba4df3d7da6832db31137b0f56c6a368894dae405f822f999c8f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v2-initramfs-kernel.bin";
              sha256 = "8e9e844c57ad1e4e8da4d8165b5cef36aadfeb6af2218a22199174b0dd2813c1";
              sha256_unsigned = "8e9e844c57ad1e4e8da4d8165b5cef36aadfeb6af2218a22199174b0dd2813c1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wndrmac-v2-squashfs-sysupgrade.bin";
              sha256 = "3bc551fc216faedc70dca13dad53888da1b8d922c5fd47e4836b3f7bb3b8fb77";
              sha256_unsigned = "b81dd51c2a59e467b753576a3cc5394a19b421e47912f1c39842e46b015eed1b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndrmac-v2"
            "wndr3700"
          ];
          titles = [
            {
              model = "WNDRMAC";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr2200-16m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-16m-squashfs-sysupgrade.bin";
              sha256 = "7a8576408eafca8b70cedeb155a52a666c5a82b55dbc24e42cb01296a3d8cbee";
              sha256_unsigned = "bdd51b604fb6ded9f9d5fc6ac2bd7d2f5cfa86f01b387b0b96efbe243318ca14";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-16m-squashfs-factory.img";
              sha256 = "013f21d6d5cba10cb46da1063aeef3c9b2a33f56edcba69e7dc7835c225c8165";
              sha256_unsigned = "013f21d6d5cba10cb46da1063aeef3c9b2a33f56edcba69e7dc7835c225c8165";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-16m-initramfs-kernel.bin";
              sha256 = "82ddffab48ad424787e788d5d3870a15228884496351427769f2f4e3bf075727";
              sha256_unsigned = "82ddffab48ad424787e788d5d3870a15228884496351427769f2f4e3bf075727";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wnr2200-16m"
          ];
          titles = [
            {
              model = "WNR2200";
              variant = "16M";
              vendor = "NETGEAR";
            }
            {
              model = "WNR2200";
              variant = "CN/RU";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr2200-8m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-netgear_wnr2200-8m-initramfs-kernel.bin";
              sha256 = "54d4a7cb2eef2a1775f5fde34411f0cbe797e797a8df8c0a94370499e8382054";
              sha256_unsigned = "54d4a7cb2eef2a1775f5fde34411f0cbe797e797a8df8c0a94370499e8382054";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wnr2200-8m"
            "wnr2200"
          ];
          titles = [
            {
              model = "WNR2200";
              variant = "8M";
              vendor = "NETGEAR";
            }
          ];
        };
        ocedo_koala = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ocedo_koala";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_koala-initramfs-kernel.bin";
              sha256 = "5a13f1dd618f53e4285cacb3bfcb7b48926bc146f45280270d25fece6015a044";
              sha256_unsigned = "5a13f1dd618f53e4285cacb3bfcb7b48926bc146f45280270d25fece6015a044";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_koala-squashfs-sysupgrade.bin";
              sha256 = "93f12629dffa87fc58bd3ca903cf3fbac4983fd50e505ddf288f8db2cccab1bc";
              sha256_unsigned = "1a520e216f733caf6a3463eb110fef92a0fd4a8731eb7e4f0a6e42ef194f1711";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ocedo,koala"
            "koala"
          ];
          titles = [
            {
              model = "Koala";
              vendor = "Ocedo";
            }
          ];
        };
        ocedo_raccoon = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ocedo_raccoon";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_raccoon-initramfs-kernel.bin";
              sha256 = "86de757034ad721d75069d42c85752f0f2582e8bfc345cb9e38bdc6e6726e929";
              sha256_unsigned = "86de757034ad721d75069d42c85752f0f2582e8bfc345cb9e38bdc6e6726e929";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_raccoon-squashfs-sysupgrade.bin";
              sha256 = "de2b591196d24156c20f9d29b3c39901ded7c0432ea9a9ff55e7576076cc2f19";
              sha256_unsigned = "5c12d6fbadd5366e3f9b9313dfe2bae7f635c9da9dc4b48dd3bd261a7dbeafc6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ocedo,raccoon"
          ];
          titles = [
            {
              model = "Raccoon";
              vendor = "Ocedo";
            }
          ];
        };
        ocedo_ursus = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ocedo_ursus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_ursus-squashfs-sysupgrade.bin";
              sha256 = "81621380f17721bf0bc801935ff846346b54833a12d9fc01d6d85f0b7b0cfd43";
              sha256_unsigned = "6e81a1e3d3bc1c1501330b9595a4cd92c21b4ef782fcd9bca37a4f7fa52d284b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ocedo_ursus-initramfs-kernel.bin";
              sha256 = "3d8c39b9add9e105466acdf35c2a9e065ec91168d3f47412dcf16dd714607a69";
              sha256_unsigned = "3d8c39b9add9e105466acdf35c2a9e065ec91168d3f47412dcf16dd714607a69";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ocedo,ursus"
          ];
          titles = [
            {
              model = "Ursus";
              vendor = "Ocedo";
            }
          ];
        };
        onion_omega = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-onion_omega";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-onion_omega-squashfs-sysupgrade.bin";
              sha256 = "b1d898156bd89629b0d1cd1e2be27bce52fd76483a45a94f4673700a28efbaa9";
              sha256_unsigned = "e64359ac5c4b4596a9cf227af6dfabad7054691953518092274426cf6b12cbce";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-onion_omega-squashfs-factory.bin";
              sha256 = "73c4c658133f2a137513a64f35c8018dab95232df42def4b4857fa0d39a119ca";
              sha256_unsigned = "73c4c658133f2a137513a64f35c8018dab95232df42def4b4857fa0d39a119ca";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-onion_omega-initramfs-kernel.bin";
              sha256 = "abe3ff9e21683750a1eed89237d1d697cab182ee3dda5333d0fe663fe18d89f2";
              sha256_unsigned = "abe3ff9e21683750a1eed89237d1d697cab182ee3dda5333d0fe663fe18d89f2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "onion,omega"
            "onion-omega"
          ];
          titles = [
            {
              model = "Omega";
              vendor = "Onion";
            }
          ];
        };
        openmesh_a40 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_a40";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_a40-squashfs-sysupgrade.bin";
              sha256 = "0f8e5e80dce52a3f52a7dc29387a1b6dfb15200a81522e8d0cec172520ff6044";
              sha256_unsigned = "94a9922645529f6e8a604cb9868d1e69ea357da0538ee21ff44964e1524599ab";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_a40-initramfs-kernel.bin";
              sha256 = "edb403f0b84f180723982febb5d913876bc266aee60ab5b531218c487cac9e50";
              sha256_unsigned = "edb403f0b84f180723982febb5d913876bc266aee60ab5b531218c487cac9e50";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,a40"
            "a40"
          ];
          titles = [
            {
              model = "A40";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_a60 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_a60";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_a60-squashfs-sysupgrade.bin";
              sha256 = "96c5fa8934d22449df9ab70141545492249040db806ab594c00f618a2da8b5d7";
              sha256_unsigned = "8f32c9f42009bb82423b0f3c7d4db8ae697622f44e51380eb9ada3202174ae8d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_a60-initramfs-kernel.bin";
              sha256 = "4a883ed8d0c6047e153fe33115cd233a84ebf1e4ca801c02894ec593736e201c";
              sha256_unsigned = "4a883ed8d0c6047e153fe33115cd233a84ebf1e4ca801c02894ec593736e201c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,a60"
            "a60"
          ];
          titles = [
            {
              model = "A60";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr1750-v1 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v1-squashfs-sysupgrade.bin";
              sha256 = "1608c43c4b059a260792f63bfd406516fb8bd39097f04b1ea8ae9dfb3ac05814";
              sha256_unsigned = "e8ca124e8ad85c1725dfe3d7c5ef4decb5ade6aa8a87173cba8ad472a2f5bf2a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v1-initramfs-kernel.bin";
              sha256 = "611abad4ab356d17f43d0fe0c3c32bff203c7183b408c78ab385e03bd6e370d7";
              sha256_unsigned = "611abad4ab356d17f43d0fe0c3c32bff203c7183b408c78ab385e03bd6e370d7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,mr1750-v1"
            "mr1750"
          ];
          titles = [
            {
              model = "MR1750";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr1750-v2 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v2-initramfs-kernel.bin";
              sha256 = "152e810ea2a053af0dbd4ea8f7a8654bd2ae92913b88b97fa29e90acc7ae4010";
              sha256_unsigned = "152e810ea2a053af0dbd4ea8f7a8654bd2ae92913b88b97fa29e90acc7ae4010";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr1750-v2-squashfs-sysupgrade.bin";
              sha256 = "903e76d7baa5652a11a2dca2627744fd35f71c303400a5084a22b8d3006f265b";
              sha256_unsigned = "d18d9491dece064a7b741f1c314259e2db65811adcbbb1a062fe2ec990ca0354";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,mr1750-v2"
            "mr1750v2"
          ];
          titles = [
            {
              model = "MR1750";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr600-v1 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v1-initramfs-kernel.bin";
              sha256 = "41bf02fcce56dfa9bf019e29eeb32abf5a6e832fa11bb7cc4473611e046f5ade";
              sha256_unsigned = "41bf02fcce56dfa9bf019e29eeb32abf5a6e832fa11bb7cc4473611e046f5ade";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v1-squashfs-sysupgrade.bin";
              sha256 = "b82fd877fc0b914f2cd38147d84f4aa0610af7a595e00c35a7735f4574fb8ad5";
              sha256_unsigned = "2730d0cb1d094aca7002e2ee6d9b781485e8822b187cace5280ab67daa1f02bb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,mr600-v1"
            "mr600"
          ];
          titles = [
            {
              model = "MR600";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr600-v2 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v2-squashfs-sysupgrade.bin";
              sha256 = "b25e8fd35740a684a613210bfae71b5d3ef637a752b15b2342f648051a46f8d2";
              sha256_unsigned = "cceb1d08d6a0fe99a902c2c416eb98746d47ad55dfd0a408bb9bccfe78e1ae3b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr600-v2-initramfs-kernel.bin";
              sha256 = "548b7ed29467fb222a983cda99be8fe5c955e079d336ac6e50e9129b07997249";
              sha256_unsigned = "548b7ed29467fb222a983cda99be8fe5c955e079d336ac6e50e9129b07997249";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,mr600-v2"
            "mr600v2"
          ];
          titles = [
            {
              model = "MR600";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr900-v1 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v1-initramfs-kernel.bin";
              sha256 = "a07e75677b06773e303fceba9ad1a390eb604dae7ed81dd53be09495e56010c8";
              sha256_unsigned = "a07e75677b06773e303fceba9ad1a390eb604dae7ed81dd53be09495e56010c8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v1-squashfs-sysupgrade.bin";
              sha256 = "9e2a7c2f1f111365db83de2113b05d90b37095f5630232a1d9c90a70009f3675";
              sha256_unsigned = "a8df2465eb73c13bb61a548c41382eeb22b649e2027ed7debc04748a6f079de3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,mr900-v1"
            "mr900"
          ];
          titles = [
            {
              model = "MR900";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_mr900-v2 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v2-squashfs-sysupgrade.bin";
              sha256 = "69872cc370c4bd17db4c034f66dd895e00ab07d7c38a8f5e59d7fd8c5e2e0fcf";
              sha256_unsigned = "02d8893d1d0847628bee4166f6111e7cde25087ca7111551222912886ece23d3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_mr900-v2-initramfs-kernel.bin";
              sha256 = "9fe126262c49d5985644a5c08aef129ac1eb8f0756cf319a8ff22a6ace120a14";
              sha256_unsigned = "9fe126262c49d5985644a5c08aef129ac1eb8f0756cf319a8ff22a6ace120a14";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,mr900-v2"
            "mr900v2"
          ];
          titles = [
            {
              model = "MR900";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-hs-v1 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v1-squashfs-sysupgrade.bin";
              sha256 = "f3d940545153bb90ba18b80e38293bccbebcf02c371db6818b0a84a911a67cbf";
              sha256_unsigned = "05dd89b644847f5684c1dfd480d24bb7d231407fc173306b287f7342ecf681cf";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v1-initramfs-kernel.bin";
              sha256 = "c0b47788e2631575e9e4bc9221506190bacab45161f31e1ee50197f3684e02cb";
              sha256_unsigned = "c0b47788e2631575e9e4bc9221506190bacab45161f31e1ee50197f3684e02cb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om2p-hs-v1"
            "om2p-hs"
          ];
          titles = [
            {
              model = "OM2P-HS";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-hs-v2 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v2-initramfs-kernel.bin";
              sha256 = "669c7af6505409967b05d0bcc9b2f14fa46f40bdce36db75d7477dee7bcc652c";
              sha256_unsigned = "669c7af6505409967b05d0bcc9b2f14fa46f40bdce36db75d7477dee7bcc652c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v2-squashfs-sysupgrade.bin";
              sha256 = "adcc3550d204871fa3d0d209e08dab0a9aaa0e91a335d2bb019d598f0ed58e0b";
              sha256_unsigned = "41cfb3bea8870c952a607f7fada523f8ab2b450124e49bfa063a35eb61dfe067";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,om2p-hs-v2"
            "om2p-hsv2"
          ];
          titles = [
            {
              model = "OM2P-HS";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-hs-v3 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v3-squashfs-sysupgrade.bin";
              sha256 = "e384bf7971ef35168ae9c9069241f307e73944ee02ebf63a00a1883e10e317f0";
              sha256_unsigned = "5a5eb5d38f83a40e114fb62ac3491a75dd471bde076aea11a433b8780468ad71";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v3-initramfs-kernel.bin";
              sha256 = "16e82b8ab42aa1f83b630c4af1746b328b92c2f529c350c9de29b06d70c96daa";
              sha256_unsigned = "16e82b8ab42aa1f83b630c4af1746b328b92c2f529c350c9de29b06d70c96daa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om2p-hs-v3"
            "om2p-hsv3"
          ];
          titles = [
            {
              model = "OM2P-HS";
              variant = "v3";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-hs-v4 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v4-squashfs-sysupgrade.bin";
              sha256 = "8f033fcf088ba8f0b3148685d53e6a89cc9868a5c6b4c1804e767e9a21c2863e";
              sha256_unsigned = "9e2d9cd696f5fc61b66379fdf8d53732bb2332daee4f36b63936a4b43931d085";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-hs-v4-initramfs-kernel.bin";
              sha256 = "4982cafb3a980a1877871dcf8ac77ea899097ec7a65920c21664b33f2c16dba0";
              sha256_unsigned = "4982cafb3a980a1877871dcf8ac77ea899097ec7a65920c21664b33f2c16dba0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om2p-hs-v4"
            "om2p-hsv4"
          ];
          titles = [
            {
              model = "OM2P-HS";
              variant = "v4";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-lc = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-lc";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-lc-initramfs-kernel.bin";
              sha256 = "2b29c25be0214b2b17d0a169cccccf61c893085e89a1156166ce5f63ff2917e3";
              sha256_unsigned = "2b29c25be0214b2b17d0a169cccccf61c893085e89a1156166ce5f63ff2917e3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-lc-squashfs-sysupgrade.bin";
              sha256 = "57423e83e9571d073c63fa69612d5fd6e540b40445560984676dcf96364276a7";
              sha256_unsigned = "cbb8868a5d5c5744eca10a520c559fb0bcacbfd47ce06149fd9c298b999a1197";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,om2p-lc"
            "om2p-lc"
          ];
          titles = [
            {
              model = "OM2P-LC";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-v1 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v1-initramfs-kernel.bin";
              sha256 = "308ad36a4e8033575b99ad9b57d1ee54287c4da9776b2b403158c2430ff5f063";
              sha256_unsigned = "308ad36a4e8033575b99ad9b57d1ee54287c4da9776b2b403158c2430ff5f063";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v1-squashfs-sysupgrade.bin";
              sha256 = "77e83ea55dda3d0c7b6ba9fa2286e4af154b69074ae43e8d5b5e67c5dbdb9107";
              sha256_unsigned = "fcbab272f422c25c87365039e8aeaa3e2eab77c968522a24c65a1da38b637d2d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,om2p-v1"
            "om2p"
          ];
          titles = [
            {
              model = "OM2P";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-v2 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v2-squashfs-sysupgrade.bin";
              sha256 = "d06acdd5dceef50175d6047fa4aa4155923bf265c82041d1c45327942bc07714";
              sha256_unsigned = "b0d80eea496208acab2a28d159107ad3aa2e1f27d38c0d0e482fd968a3d5238d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v2-initramfs-kernel.bin";
              sha256 = "48d85ad813bab8d77373ba987bd75b8b6eefd9ff3820b308cceadb3d16b388d7";
              sha256_unsigned = "48d85ad813bab8d77373ba987bd75b8b6eefd9ff3820b308cceadb3d16b388d7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om2p-v2"
            "om2pv2"
          ];
          titles = [
            {
              model = "OM2P";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om2p-v4 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v4-squashfs-sysupgrade.bin";
              sha256 = "88d49bb1bc9f8f7f01f5fd03eabddaa4d08a2c140e51ca24704bf0fe45189c05";
              sha256_unsigned = "f24bb071ed3fcd9cfd015b062022ae34dd0c9d2168f36d7878f1add00058f5c7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om2p-v4-initramfs-kernel.bin";
              sha256 = "67043b0da776f6e6b3f45d718767c2640672ad0d819869ec4bea74ab4ec7a8f7";
              sha256_unsigned = "67043b0da776f6e6b3f45d718767c2640672ad0d819869ec4bea74ab4ec7a8f7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om2p-v4"
            "om2pv4"
          ];
          titles = [
            {
              model = "OM2P";
              variant = "v4";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om5p = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-initramfs-kernel.bin";
              sha256 = "bd5d966895a0a0e84ac4cb9fda0137fea6d8312a0c3651ec53acdb18c0d84384";
              sha256_unsigned = "bd5d966895a0a0e84ac4cb9fda0137fea6d8312a0c3651ec53acdb18c0d84384";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-squashfs-sysupgrade.bin";
              sha256 = "0c8e4df72f3e06431432bbbdd47f37ac6a58144b6ee4bf7eaeb28f2d6a4c66d9";
              sha256_unsigned = "b6276185ad0eaf10bf426f578b2ca1dfa7ba03763a9ac7b44235e58fb17f3a1f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,om5p"
            "om5p"
          ];
          titles = [
            {
              model = "OM5P";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om5p-ac-v1 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v1-squashfs-sysupgrade.bin";
              sha256 = "ad9f12411a7d58e1ea6284ee5cbbc0f5e1893a10066bccbb1dacf01da6c2f703";
              sha256_unsigned = "645226ebec3eaf01c7f8cce0d597f408719a78a8737ad6717cf6ecac612c8915";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v1-initramfs-kernel.bin";
              sha256 = "cb4da8df83cdf13575bc2924adccee1181a92f4cb411bc2e72e387c80f458d9f";
              sha256_unsigned = "cb4da8df83cdf13575bc2924adccee1181a92f4cb411bc2e72e387c80f458d9f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om5p-ac-v1"
            "om5p-ac"
          ];
          titles = [
            {
              model = "OM5P-AC";
              variant = "v1";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om5p-ac-v2 = {
          device_packages = [
            "uboot-envtools"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v2-initramfs-kernel.bin";
              sha256 = "6ec067ac4e67e31e155c2ba774822a992e02583e1022a6dd7228be9b636b7f6d";
              sha256_unsigned = "6ec067ac4e67e31e155c2ba774822a992e02583e1022a6dd7228be9b636b7f6d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-ac-v2-squashfs-sysupgrade.bin";
              sha256 = "629dee3a2faebc362238318aba26967f3881cfd2ba45bf12e238c39a65aaaab8";
              sha256_unsigned = "5b4ec025a816bb491a35c918ea645e4540f6e9dbd7495c97f925b163420138be";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "openmesh,om5p-ac-v2"
            "om5p-acv2"
          ];
          titles = [
            {
              model = "OM5P-AC";
              variant = "v2";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_om5p-an = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-an";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-an-squashfs-sysupgrade.bin";
              sha256 = "9c2c9465f2f2239905539423f62581a68a2c9bfe4d273052b1da36657307b110";
              sha256_unsigned = "9b046e6d039ddcc61bad2e7741d1fa0afcfa0a01fb9b711e51a0c42393291f83";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-openmesh_om5p-an-initramfs-kernel.bin";
              sha256 = "652edc331689aedebb681e1c374913e9d48259b0bfb1f9cf1b2ac43d175fc52d";
              sha256_unsigned = "652edc331689aedebb681e1c374913e9d48259b0bfb1f9cf1b2ac43d175fc52d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,om5p-an"
            "om5p-an"
          ];
          titles = [
            {
              model = "OM5P-AN";
              vendor = "OpenMesh";
            }
          ];
        };
        pcs_cap324 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pcs_cap324";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-pcs_cap324-squashfs-sysupgrade.bin";
              sha256 = "2776ac19431a5f1fa12600c37cb88447e9cf705712ff0c9d78d204ab068126a4";
              sha256_unsigned = "84818d50b97aef6d50f9465fa29daa7a8714ef16ab30d8dc767ca67fb8e3d445";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pcs_cap324-initramfs-kernel.bin";
              sha256 = "3524df94e0e4000895ea497e318312f4e3b0fe474ddc5e15c9a5ba4c27a25df7";
              sha256_unsigned = "3524df94e0e4000895ea497e318312f4e3b0fe474ddc5e15c9a5ba4c27a25df7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "pcs,cap324"
            "cap324"
          ];
          titles = [
            {
              model = "CAP324";
              vendor = "PowerCloud Systems";
            }
          ];
        };
        pcs_cr3000 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pcs_cr3000";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pcs_cr3000-initramfs-kernel.bin";
              sha256 = "9795a8fb404826839e05029f5c76205316da8e0da8027ae4d97027057fd1716f";
              sha256_unsigned = "9795a8fb404826839e05029f5c76205316da8e0da8027ae4d97027057fd1716f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "pcs,cr3000"
            "cr3000"
          ];
          titles = [
            {
              model = "CR3000";
              vendor = "PowerCloud Systems";
            }
          ];
        };
        pcs_cr5000 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pcs_cr5000";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pcs_cr5000-initramfs-kernel.bin";
              sha256 = "4aeb111ea3dfab1b4a4d85589e583d12dc22692d54c8efd05b62e87005351745";
              sha256_unsigned = "4aeb111ea3dfab1b4a4d85589e583d12dc22692d54c8efd05b62e87005351745";
              type = "kernel";
            }
          ];
          supported_devices = [
            "pcs,cr5000"
            "cr5000"
          ];
          titles = [
            {
              model = "CR5000";
              vendor = "PowerCloud Systems";
            }
          ];
        };
        phicomm_k2t = {
          device_packages = [
            "kmod-leds-reset"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-phicomm_k2t";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-phicomm_k2t-squashfs-sysupgrade.bin";
              sha256 = "833eeae3b848390bd7500aeac890f345c7ce2d0cf34acf951db2b56dc82eefc5";
              sha256_unsigned = "029f99c38fb4126d6cf67a8ae17f12f392df463bf41228958997605f957e1205";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-phicomm_k2t-initramfs-kernel.bin";
              sha256 = "1584f70d0940ff0c9deb0f95f7df6f412ea7e51e5c84c3f128b3e2288c1a440c";
              sha256_unsigned = "1584f70d0940ff0c9deb0f95f7df6f412ea7e51e5c84c3f128b3e2288c1a440c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "phicomm,k2t"
          ];
          titles = [
            {
              model = "K2T";
              vendor = "Phicomm";
            }
          ];
        };
        pisen_ts-d084 = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pisen_ts-d084";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pisen_ts-d084-initramfs-kernel.bin";
              sha256 = "98f221c3e276637af37e6ebe6cba4ca8a1f5e150c4f01ba2fd02bc1f1806ddea";
              sha256_unsigned = "98f221c3e276637af37e6ebe6cba4ca8a1f5e150c4f01ba2fd02bc1f1806ddea";
              type = "kernel";
            }
          ];
          supported_devices = [
            "pisen,ts-d084"
          ];
          titles = [
            {
              model = "TS-D084";
              vendor = "PISEN";
            }
          ];
        };
        pisen_wmb001n = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pisen_wmb001n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-pisen_wmb001n-squashfs-factory.bin";
              sha256 = "ad5f5a21215d1fc4171145ddf8641fea0cdc31e0d879a5bf76b2cc63945e700f";
              sha256_unsigned = "4c08b8fb747b50267c20fe0b8b22d49494fd3fb1473b6fdb2db59a571e84c323";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pisen_wmb001n-initramfs-kernel.bin";
              sha256 = "6edfc31529a43941406f00066bf32637d9e515f468e3b45f7941a58acbd252a6";
              sha256_unsigned = "6edfc31529a43941406f00066bf32637d9e515f468e3b45f7941a58acbd252a6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-pisen_wmb001n-squashfs-sysupgrade.bin";
              sha256 = "ecd3eb4646f0ccc8502add7bbc6614cf72c562b0ba519965c1d2db9c4583a47e";
              sha256_unsigned = "4c08b8fb747b50267c20fe0b8b22d49494fd3fb1473b6fdb2db59a571e84c323";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "pisen,wmb001n"
          ];
          titles = [
            {
              model = "WMB001N";
              vendor = "PISEN";
            }
          ];
        };
        pisen_wmm003n = {
          device_packages = [
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-pisen_wmm003n";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-pisen_wmm003n-initramfs-kernel.bin";
              sha256 = "1aaaca5b87f72aed6010be4a29af0e2bf9cb82a72c8783656ca9794284a8fead";
              sha256_unsigned = "1aaaca5b87f72aed6010be4a29af0e2bf9cb82a72c8783656ca9794284a8fead";
              type = "kernel";
            }
          ];
          supported_devices = [
            "pisen,wmm003n"
          ];
          titles = [
            {
              model = "Cloud Easy Power (WMM003N)";
              vendor = "PISEN";
            }
          ];
        };
        plasmacloud_pa300 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300-initramfs-kernel.bin";
              sha256 = "0dd0776d45dbdc9a30e7435ffd5b3133ffe2fdaa6e1dcbe9bc20b6cbd939d41e";
              sha256_unsigned = "0dd0776d45dbdc9a30e7435ffd5b3133ffe2fdaa6e1dcbe9bc20b6cbd939d41e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300-squashfs-factory.bin";
              sha256 = "d9fb20c0c6918386cb47e3198e8fea9259034f58b11d43a44c16235f3554576c";
              sha256_unsigned = "d9fb20c0c6918386cb47e3198e8fea9259034f58b11d43a44c16235f3554576c";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300-squashfs-sysupgrade.bin";
              sha256 = "7f510eac14d6d22d8b6345d815b28e3400851ad8e30f2a513e99eaa6ea2aae02";
              sha256_unsigned = "6e2426b24b5603fac1b9a7b142ce498185faab8403cb6e51912e035310abd257";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "plasmacloud,pa300"
          ];
          titles = [
            {
              model = "PA300";
              vendor = "Plasma Cloud";
            }
          ];
        };
        plasmacloud_pa300e = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300e-squashfs-factory.bin";
              sha256 = "f29a4065725b1d1d95c40bc4cec2dd74d0c844329321b0588c4ff0836b53fca4";
              sha256_unsigned = "f29a4065725b1d1d95c40bc4cec2dd74d0c844329321b0588c4ff0836b53fca4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300e-squashfs-sysupgrade.bin";
              sha256 = "0db79f09164aa59dfb8fe89f91d86475ea48f53630abebc7a4443b86099774c9";
              sha256_unsigned = "88057977b49072cd6bf276d1b4f9467a596a325dd68e31af2d0c5e8e659c624b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-plasmacloud_pa300e-initramfs-kernel.bin";
              sha256 = "f65bae642bf722e088e8021cb0a7749ff3263b02caff8b19f21ac1c23426ffc6";
              sha256_unsigned = "f65bae642bf722e088e8021cb0a7749ff3263b02caff8b19f21ac1c23426ffc6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "plasmacloud,pa300e"
          ];
          titles = [
            {
              model = "PA300E";
              vendor = "Plasma Cloud";
            }
          ];
        };
        qca_ap143-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qca_ap143-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qca_ap143-16m-squashfs-sysupgrade.bin";
              sha256 = "46b229d9a54eb5d3679b52051bce73e85d493696671816629902592ade8276a2";
              sha256_unsigned = "e40a8c03a2ada907ac501dbb370fd91ace79bb7c78f9dbfbbf902e76c0ca5580";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qca_ap143-16m-squashfs-factory.bin";
              sha256 = "47e8d6f98e8f0b2a7b431081ce45e00cfc0cdeaafefcc54408e084b92a693665";
              sha256_unsigned = "47e8d6f98e8f0b2a7b431081ce45e00cfc0cdeaafefcc54408e084b92a693665";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qca_ap143-16m-initramfs-kernel.bin";
              sha256 = "65227784835e6a3a2d480dd8da0ea51b4c1ad71c7bb3b20f2c1b93e6986ecaab";
              sha256_unsigned = "65227784835e6a3a2d480dd8da0ea51b4c1ad71c7bb3b20f2c1b93e6986ecaab";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qca,ap143-16m"
            "ap143"
          ];
          titles = [
            {
              model = "AP143";
              variant = "(16M)";
              vendor = "Qualcomm Atheros";
            }
          ];
        };
        qihoo_c301 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qihoo_c301";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qihoo_c301-squashfs-sysupgrade.bin";
              sha256 = "31519439e834e520b699661ad6c56068f53c834f6d90fdf3ad8fb2bed86ef7b2";
              sha256_unsigned = "754b765a890546bdb482d2e7771e42369ef4dea361eef94cc6760c6e504cd6db";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qihoo_c301-squashfs-factory.bin";
              sha256 = "e8c2263a8b2a8ddf41d391211f905974df96b96183ea986eaa8c83b7913c2f28";
              sha256_unsigned = "e8c2263a8b2a8ddf41d391211f905974df96b96183ea986eaa8c83b7913c2f28";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qihoo_c301-initramfs-kernel.bin";
              sha256 = "a55382af64ec7608d7a2531897a29ec11bafff984e845638d1321fbcaa5e3317";
              sha256_unsigned = "a55382af64ec7608d7a2531897a29ec11bafff984e845638d1321fbcaa5e3317";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qihoo,c301"
            "qihoo-c301"
          ];
          titles = [
            {
              model = "C301";
              vendor = "Qihoo";
            }
          ];
        };
        qxwlan_e1700ac-v2-16m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e1700ac-v2-16m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e1700ac-v2-16m-initramfs-kernel.bin";
              sha256 = "73f21b9ed15504e496b822530a5f1406eb9c17106d51028191c8c126ce88fde0";
              sha256_unsigned = "73f21b9ed15504e496b822530a5f1406eb9c17106d51028191c8c126ce88fde0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e1700ac-v2-16m-squashfs-sysupgrade.bin";
              sha256 = "d290f984e36158662b3b5edff49e03f3366b590ea37c6bd6ec034ab003b3b001";
              sha256_unsigned = "47a13f98b882da4305502eef0a49ba2f21deb666fb3ff613c75e87485a787496";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "qxwlan,e1700ac-v2-16m"
            "e1700ac-v2"
          ];
          titles = [
            {
              model = "E1700AC";
              variant = "v2 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e1700ac-v2-8m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e1700ac-v2-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e1700ac-v2-8m-initramfs-kernel.bin";
              sha256 = "f7dc417de2f4f2c223502655d09dc5921622b5f1932d9151845cf2d3b94bcc5a";
              sha256_unsigned = "f7dc417de2f4f2c223502655d09dc5921622b5f1932d9151845cf2d3b94bcc5a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e1700ac-v2-8m"
            "e1700ac-v2"
          ];
          titles = [
            {
              model = "E1700AC";
              variant = "v2 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e558-v2-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e558-v2-16m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e558-v2-16m-initramfs-kernel.bin";
              sha256 = "153e725cf4f9ce661511f4ed18b5a9af5890e8905170818f00d30fdfc5e43823";
              sha256_unsigned = "153e725cf4f9ce661511f4ed18b5a9af5890e8905170818f00d30fdfc5e43823";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e558-v2-16m-squashfs-sysupgrade.bin";
              sha256 = "676ee71ba04f832d0ca9faed96f6e92083497223b9eacd4eb4280a76fb19e5d7";
              sha256_unsigned = "2eac84c9d27cb1571747ebc2b232285074b10c432bbc2f18ba2f7f03e6861de1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "qxwlan,e558-v2-16m"
            "e558-v2"
          ];
          titles = [
            {
              model = "E558";
              variant = "v2 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e558-v2-8m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e558-v2-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e558-v2-8m-initramfs-kernel.bin";
              sha256 = "035a67b465dcd3a3a869fc96e321d61d8dd8fbe4c3535c02602e103be7a7ef0a";
              sha256_unsigned = "035a67b465dcd3a3a869fc96e321d61d8dd8fbe4c3535c02602e103be7a7ef0a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e558-v2-8m"
            "e558-v2"
          ];
          titles = [
            {
              model = "E558";
              variant = "v2 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e600g-v2-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600g-v2-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600g-v2-16m-squashfs-sysupgrade.bin";
              sha256 = "5fddeaca2bfb71997fa3b289d4dfdfa098a164e452ef7d35f20e19a35425aab3";
              sha256_unsigned = "833aa5df004f62e5833fe7a3668ce09dcff465da89d8991230f434875dc9b23f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600g-v2-16m-initramfs-kernel.bin";
              sha256 = "fc01ca5a99f41ed7053ed03bb3406f7ecfa93d1347e43d022e74764a9cfbfd48";
              sha256_unsigned = "fc01ca5a99f41ed7053ed03bb3406f7ecfa93d1347e43d022e74764a9cfbfd48";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e600g-v2-16m"
            "e600g-v2"
          ];
          titles = [
            {
              model = "E600G";
              variant = "v2 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e600g-v2-8m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600g-v2-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600g-v2-8m-initramfs-kernel.bin";
              sha256 = "de8564c43cfb887f194062d7f568fe6f0ae66356ea47bb49438fd0a1e68c5865";
              sha256_unsigned = "de8564c43cfb887f194062d7f568fe6f0ae66356ea47bb49438fd0a1e68c5865";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e600g-v2-8m"
            "e600g-v2"
          ];
          titles = [
            {
              model = "E600G";
              variant = "v2 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e600gac-v2-16m = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600gac-v2-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600gac-v2-16m-squashfs-sysupgrade.bin";
              sha256 = "9cb1627243c33f24b349dc20b9a1d688a39f4f0f17edf40a871044482c46515b";
              sha256_unsigned = "c7d4df3207ae9b36dfc72a0662a535db2fb653a388ddef85e98fb0c53f10cf21";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600gac-v2-16m-initramfs-kernel.bin";
              sha256 = "00d2aa16225dc4e7e6c35027c3354fe6e8787994f28e0ec714e61c59ec935342";
              sha256_unsigned = "00d2aa16225dc4e7e6c35027c3354fe6e8787994f28e0ec714e61c59ec935342";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e600gac-v2-16m"
            "e600gac-v2"
          ];
          titles = [
            {
              model = "E600GAC";
              variant = "v2 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e600gac-v2-8m = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600gac-v2-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e600gac-v2-8m-initramfs-kernel.bin";
              sha256 = "e2fe6ca6e83a85b09bc2a017dc99551566cc870c1f1779b3bbad7442e30dbea3";
              sha256_unsigned = "e2fe6ca6e83a85b09bc2a017dc99551566cc870c1f1779b3bbad7442e30dbea3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e600gac-v2-8m"
            "e600gac-v2"
          ];
          titles = [
            {
              model = "E600GAC";
              variant = "v2 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e750a-v4-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750a-v4-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750a-v4-16m-squashfs-sysupgrade.bin";
              sha256 = "20fbfe172950d09007d29e6e74f6b8dba4e795f3d9cd79834586ea4f7cbfefd0";
              sha256_unsigned = "74eaf7902905a6e235e0482edee35538a5b2d8fbbffb42358f99461d2507b915";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750a-v4-16m-initramfs-kernel.bin";
              sha256 = "24868806d046fbfb5f2904373ccd2392fd5afbd88d9aba0480ff9270b8cd2290";
              sha256_unsigned = "24868806d046fbfb5f2904373ccd2392fd5afbd88d9aba0480ff9270b8cd2290";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e750a-v4-16m"
            "e750a-v4"
          ];
          titles = [
            {
              model = "E750A";
              variant = "v4 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e750a-v4-8m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750a-v4-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750a-v4-8m-initramfs-kernel.bin";
              sha256 = "c4fe27f3666cba4cddbbdd293fae734d7d16b4a47ff9955963a2e232f9615d96";
              sha256_unsigned = "c4fe27f3666cba4cddbbdd293fae734d7d16b4a47ff9955963a2e232f9615d96";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e750a-v4-8m"
            "e750a-v4"
          ];
          titles = [
            {
              model = "E750A";
              variant = "v4 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e750g-v8-16m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750g-v8-16m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750g-v8-16m-initramfs-kernel.bin";
              sha256 = "6ff7caffede038be060cb9742dbfd448278ad024e1bb0746c3db49c22852470a";
              sha256_unsigned = "6ff7caffede038be060cb9742dbfd448278ad024e1bb0746c3db49c22852470a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750g-v8-16m-squashfs-sysupgrade.bin";
              sha256 = "8e67bd2d7b3e5310e96d508c6c8c723b1052f14580cf39f75ca2d534e0577726";
              sha256_unsigned = "12f2fa8a23a8dc0c22c2644e38c6056c6ef055f146770773a8f640f4688d22e8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "qxwlan,e750g-v8-16m"
            "e750g-v8"
          ];
          titles = [
            {
              model = "E750G";
              variant = "v8 (16M)";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e750g-v8-8m = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750g-v8-8m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-qxwlan_e750g-v8-8m-initramfs-kernel.bin";
              sha256 = "a4114a71bc8ee940626075970ad7ef3487e19dfba5918ed6be33f884e2b506bb";
              sha256_unsigned = "a4114a71bc8ee940626075970ad7ef3487e19dfba5918ed6be33f884e2b506bb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e750g-v8-8m"
            "e750g-v8"
          ];
          titles = [
            {
              model = "E750G";
              variant = "v8 (8M)";
              vendor = "Qxwlan";
            }
          ];
        };
        rosinson_wr818 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-rosinson_wr818";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-rosinson_wr818-squashfs-sysupgrade.bin";
              sha256 = "e038fbb6064d9e9f87346a6fcd19b744fa91917184409be704183bafd180ba3b";
              sha256_unsigned = "694e80d565eac53fdb6d18ba6f790b6d34468ed8bad68aa70f4f637bbd889ae8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-rosinson_wr818-initramfs-kernel.bin";
              sha256 = "6a989d99b8db019f85140bda9d65e81213b6532be84f9ffd8883ebad55a2bbd5";
              sha256_unsigned = "6a989d99b8db019f85140bda9d65e81213b6532be84f9ffd8883ebad55a2bbd5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "rosinson,wr818"
          ];
          titles = [
            {
              model = "WR818";
              vendor = "Rosinson";
            }
          ];
        };
        ruckus_zf7025 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7025";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7025-squashfs-sysupgrade.bin";
              sha256 = "f4d11c2e55189067a7153dca614de1d170b03b121b521d620200a7c9d7b70de7";
              sha256_unsigned = "c76f42b953fd6e6b3f901808af8c4c13d1c197a0d4cad91f3a5f0b25b3ce2a20";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7025-initramfs-kernel.bin";
              sha256 = "88888e935be86eab478c6a37ec3e4f19a1d117db44ea94cabb089ed9a7590de9";
              sha256_unsigned = "88888e935be86eab478c6a37ec3e4f19a1d117db44ea94cabb089ed9a7590de9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ruckus,zf7025"
          ];
          titles = [
            {
              model = "ZoneFlex 7025";
              vendor = "Ruckus";
            }
          ];
        };
        ruckus_zf7321 = {
          device_packages = [
            "-swconfig"
            "kmod-usb2"
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7321";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7321-squashfs-sysupgrade.bin";
              sha256 = "58f8cd82d9660d993e899f77bb7bbbf4c35d7cb0073fb1925ffd0756be174025";
              sha256_unsigned = "31d2b12dbb3dc9132355f988163f3721823fa9a990434e9000a3ff7ded6045db";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7321-initramfs-kernel.bin";
              sha256 = "77eb0df9d28540fe924d68b9506c49dd80afbf84b90428df1430d6b3ab6b7375";
              sha256_unsigned = "77eb0df9d28540fe924d68b9506c49dd80afbf84b90428df1430d6b3ab6b7375";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ruckus,zf7321"
          ];
          titles = [
            {
              model = "ZoneFlex 7321[-U]";
              vendor = "Ruckus";
            }
          ];
        };
        ruckus_zf7341 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-chipidea2"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7341";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7341-squashfs-sysupgrade.bin";
              sha256 = "8d7f6cfeec912b8f6eee09fe711bd32803b64e585516ebdf32f1990b9fca47c8";
              sha256_unsigned = "e4307a90aeb5359f4fe78318795b58db9b46319cee5babd497b6fe4cee7e9070";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7341-initramfs-kernel.bin";
              sha256 = "ce307eda3081aa5aa83a4a0667e9c4ebc60058d6e7f5c27cd74d33dd07648d79";
              sha256_unsigned = "ce307eda3081aa5aa83a4a0667e9c4ebc60058d6e7f5c27cd74d33dd07648d79";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ruckus,zf7341"
          ];
          titles = [
            {
              model = "ZoneFlex 7341[-U]";
              vendor = "Ruckus";
            }
          ];
        };
        ruckus_zf7351 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-chipidea2"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7351";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7351-initramfs-kernel.bin";
              sha256 = "b329e3dc55c308429a094184cbe26c70657ab6db97bbfb8d44a5142cb25888d4";
              sha256_unsigned = "b329e3dc55c308429a094184cbe26c70657ab6db97bbfb8d44a5142cb25888d4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7351-squashfs-sysupgrade.bin";
              sha256 = "92686b3d91e82141a242bbce4cfe46ea3b9b61194b258918fa45e7f88dc4faf6";
              sha256_unsigned = "f73fadff4fcd3cdbef208448cd2a966e4df6e610b148258f1c4ca3616089a9be";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ruckus,zf7351"
          ];
          titles = [
            {
              model = "ZoneFlex 7351[-U]";
              vendor = "Ruckus";
            }
          ];
        };
        ruckus_zf7363 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7363";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7363-initramfs-kernel.bin";
              sha256 = "b6bd4c15970a2836f60034798481db51c09a421460bd65b1e44dbd47e96062e5";
              sha256_unsigned = "b6bd4c15970a2836f60034798481db51c09a421460bd65b1e44dbd47e96062e5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7363-squashfs-sysupgrade.bin";
              sha256 = "b43c0a26e3c463558686972f339131e37c2515da70ae41cc9217c2884cf2fd14";
              sha256_unsigned = "325cfb021cde7fcf80a7bd8b802286c121e1dacee2bb4d91c620ec7742bc9781";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ruckus,zf7363"
          ];
          titles = [
            {
              model = "ZoneFlex 7363[-U]";
              vendor = "Ruckus";
            }
            {
              model = "ZoneFlex 7343[-U]";
              vendor = "Ruckus";
            }
          ];
        };
        ruckus_zf7372 = {
          device_packages = [
            "-swconfig"
            "kmod-usb2"
            "kmod-usb-chipidea2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7372";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7372-squashfs-sysupgrade.bin";
              sha256 = "f0be4a3674558931b8c2b26f17c839b9c1295445e4185b4f9e4736b4d177a2e7";
              sha256_unsigned = "80e6b4ebc1de383d2d53b6236cded55feee145a848edef6577b7abfba853d0eb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ruckus_zf7372-initramfs-kernel.bin";
              sha256 = "0818a4a9ba47dfe4a24dcc3d5062f067408def7c69708ce4ac4878cd49e5c024";
              sha256_unsigned = "0818a4a9ba47dfe4a24dcc3d5062f067408def7c69708ce4ac4878cd49e5c024";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ruckus,zf7372"
          ];
          titles = [
            {
              model = "ZoneFlex 7352/7372[-E/-U]";
              vendor = "Ruckus";
            }
          ];
        };
        samsung_wam250 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-samsung_wam250";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-samsung_wam250-squashfs-sysupgrade.bin";
              sha256 = "6bbf4768a59da7aefab66519512e359acae0cef7d311f14d7392d1629adbc1eb";
              sha256_unsigned = "e817b5486cffb7ffb88d43aa46a8698821911d62488638c394775e4f4ff7878b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-samsung_wam250-initramfs-kernel.bin";
              sha256 = "d935340446c3e53cc44956618de083a924868e797d53af8a08f7727f001987c9";
              sha256_unsigned = "d935340446c3e53cc44956618de083a924868e797d53af8a08f7727f001987c9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "samsung,wam250"
            "wam250"
          ];
          titles = [
            {
              model = "WAM250";
              vendor = "Samsung";
            }
          ];
        };
        siemens_ws-ap3610 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-siemens_ws-ap3610";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-siemens_ws-ap3610-initramfs-kernel.bin";
              sha256 = "b7c80599fe05451864f52db2a58afa2d43ea32401ff66d03745a5896165bfd72";
              sha256_unsigned = "b7c80599fe05451864f52db2a58afa2d43ea32401ff66d03745a5896165bfd72";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-siemens_ws-ap3610-squashfs-sysupgrade.bin";
              sha256 = "b8d18640d58ac87a0823d0be05f1516be3dbe034b0946ab05994b68d98821d1c";
              sha256_unsigned = "5ba154a2ec0a4ee657f3ce4c142305bf20356161b94b7ed3e190fcb4ff08c69e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "siemens,ws-ap3610"
          ];
          titles = [
            {
              model = "WS-AP3610";
              vendor = "Siemens";
            }
          ];
        };
        sitecom_wlr-8100 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
            "kmod-usb2"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sitecom_wlr-8100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sitecom_wlr-8100-squashfs-factory.dlf";
              sha256 = "28b8beb0b9082fad72bd54f4568b5eb1d2301ab52e7f6587af3a9c1b098b7e52";
              sha256_unsigned = "28b8beb0b9082fad72bd54f4568b5eb1d2301ab52e7f6587af3a9c1b098b7e52";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sitecom_wlr-8100-squashfs-sysupgrade.bin";
              sha256 = "35d87a02e79ad82787ed650ea176fdc64e0c4c728bec1e9e5262b206a3b345eb";
              sha256_unsigned = "20bfc68d7ddcd9b15d6f56002388a473f18cb52a3a27424ce3b82d4df70102e6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sitecom_wlr-8100-initramfs-kernel.bin";
              sha256 = "76f64487996a38b03bfdd75484012d2e2d0b628f6eefa0567d81a8e4c093fe6a";
              sha256_unsigned = "76f64487996a38b03bfdd75484012d2e2d0b628f6eefa0567d81a8e4c093fe6a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sitecom,wlr-8100"
            "wlr8100"
          ];
          titles = [
            {
              model = "WLR-8100";
              vendor = "Sitecom";
            }
            {
              model = "X8 AC1750";
              vendor = "Sitecom";
            }
          ];
        };
        sophos_ap100 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap100-squashfs-sysupgrade.bin";
              sha256 = "f9f345fec02950c9b130466c2071aeba7ca65a2c0b614f1cee7c596a554a000b";
              sha256_unsigned = "64e1f87af7c80c98a2e246f799cc9920dc2462351435fae30d0685125bab544a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap100-initramfs-kernel.bin";
              sha256 = "f82256c0d2493ccbf0a90ccaa1afe292e0e5fd6bc4b8459d34a317bbd61c6a22";
              sha256_unsigned = "f82256c0d2493ccbf0a90ccaa1afe292e0e5fd6bc4b8459d34a317bbd61c6a22";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sophos,ap100"
          ];
          titles = [
            {
              model = "AP100";
              vendor = "Sophos";
            }
          ];
        };
        sophos_ap100c = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap100c";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap100c-initramfs-kernel.bin";
              sha256 = "b95f60fac47af6583279197d24bf6e59a9e51c3263721dcc0fad36af0abde315";
              sha256_unsigned = "b95f60fac47af6583279197d24bf6e59a9e51c3263721dcc0fad36af0abde315";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap100c-squashfs-sysupgrade.bin";
              sha256 = "f61a2d7332bf545e6773937a9f00e308c69b2f3cc6d75f7cbac70cb862441c8f";
              sha256_unsigned = "5fb557d22e2fd808982e29db0d2b844a1d4564011a3d5c800028ea65012b66f1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sophos,ap100c"
          ];
          titles = [
            {
              model = "AP100C";
              vendor = "Sophos";
            }
          ];
        };
        sophos_ap15 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap15";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap15-initramfs-kernel.bin";
              sha256 = "56894382fe4d8064d42b8bf43362af9060cc99609442dda4dc340980393456e4";
              sha256_unsigned = "56894382fe4d8064d42b8bf43362af9060cc99609442dda4dc340980393456e4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap15-squashfs-sysupgrade.bin";
              sha256 = "5deda1d74f7dbba17ec8861a472d886105ea91dfd636215d977cef8243c92987";
              sha256_unsigned = "09de76b59b3c396827aced2264d998c2b7a73b2bd0a76317566bdac56817382e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sophos,ap15"
          ];
          titles = [
            {
              model = "AP15";
              vendor = "Sophos";
            }
          ];
        };
        sophos_ap15c = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap15c";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap15c-initramfs-kernel.bin";
              sha256 = "56461c4c9ddf585eab600aa2ba8f1f791a4e3f37519c04b47195b5d4ace12c63";
              sha256_unsigned = "56461c4c9ddf585eab600aa2ba8f1f791a4e3f37519c04b47195b5d4ace12c63";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap15c-squashfs-sysupgrade.bin";
              sha256 = "2e411c49909c7e739871b87cee224d66489b63aa909845a8cedcae75e5fce2c3";
              sha256_unsigned = "2180834ebcf3d796cc28f949f1325936bdb1f2cbb64b78a56057dcd599f20db6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sophos,ap15c"
          ];
          titles = [
            {
              model = "AP15C";
              vendor = "Sophos";
            }
          ];
        };
        sophos_ap55 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap55";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap55-initramfs-kernel.bin";
              sha256 = "1fab51b56a3bce9e159aa5b8e79ed62a5ea3911c9a11b9ed55442f3dc428fa1f";
              sha256_unsigned = "1fab51b56a3bce9e159aa5b8e79ed62a5ea3911c9a11b9ed55442f3dc428fa1f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap55-squashfs-sysupgrade.bin";
              sha256 = "df6366b63e469f1a96668f01744ce6bd0ad5ed49c29b9dd5eb20e6e417009082";
              sha256_unsigned = "cafee3ab44ed6ed4baf9ef65088b4e4b0b9278f1cf4c8618695b91543fc7775f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sophos,ap55"
          ];
          titles = [
            {
              model = "AP55";
              vendor = "Sophos";
            }
          ];
        };
        sophos_ap55c = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-sophos_ap55c";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap55c-squashfs-sysupgrade.bin";
              sha256 = "2e63b73f05a4ba7c7fa51dd5bc9db78c4873821f169a5a753bd906c28e10ed08";
              sha256_unsigned = "957bba7bb407a8dcf1b1438c7e3ebfdf0593b839ff238c367a619fd39d189500";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-sophos_ap55c-initramfs-kernel.bin";
              sha256 = "9de01f993d8773c6e2afe7a127f3731ed6bedc074db2d0b21fcfbf1447c4c8dc";
              sha256_unsigned = "9de01f993d8773c6e2afe7a127f3731ed6bedc074db2d0b21fcfbf1447c4c8dc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sophos,ap55c"
          ];
          titles = [
            {
              model = "AP55C";
              vendor = "Sophos";
            }
          ];
        };
        telco_t1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-telco_t1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-telco_t1-initramfs-kernel.bin";
              sha256 = "a25f7e437b13a4daea18f980f813b0f1b6caf1b31c5cf59ede4b17420a16e50b";
              sha256_unsigned = "a25f7e437b13a4daea18f980f813b0f1b6caf1b31c5cf59ede4b17420a16e50b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-telco_t1-squashfs-sysupgrade.bin";
              sha256 = "230e7cf7edae23dd496361fba28effec8f2ddbe91942915070df67400303c279";
              sha256_unsigned = "4a92bff68c3e1cbb3a9b51d72e0fccb497c0ad54b00b8c1a4c4768ac32648987";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "telco,t1"
            "telco_electronics,tel-t1"
          ];
          titles = [
            {
              model = "T1";
              vendor = "Telco";
            }
          ];
        };
        teltonika_rut230-v1 = {
          device_packages = [
            "kmod-usb-chipidea2"
            "kmod-usb-acm"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-teltonika_rut230-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut230-v1-initramfs-kernel.bin";
              sha256 = "11bb1d9ad4a42912868059cc4b1461277c865be30fc186a527757d47e37a8a00";
              sha256_unsigned = "11bb1d9ad4a42912868059cc4b1461277c865be30fc186a527757d47e37a8a00";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut230-v1-squashfs-sysupgrade.bin";
              sha256 = "ab752a785607b5cbe41864e45118b02dd53c78acf80953955235b19515dcda4b";
              sha256_unsigned = "4101646a642a1d29e2d1cb1edc10ea8e3597201532e7c5b28c9cde229de087d4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut230-v1-squashfs-factory.bin";
              sha256 = "bcf5866619d06744e04e9322f0d71b470d9b93b3b8d7a3d2c819fd1c83736ceb";
              sha256_unsigned = "bcf5866619d06744e04e9322f0d71b470d9b93b3b8d7a3d2c819fd1c83736ceb";
              type = "factory";
            }
          ];
          supported_devices = [
            "teltonika,rut230-v1"
          ];
          titles = [
            {
              model = "RUT230";
              variant = "v1";
              vendor = "Teltonika";
            }
          ];
        };
        teltonika_rut300 = {
          device_packages = [
            "-kmod-ath9k"
            "-uboot-envtools"
            "-wpad-openssl"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-teltonika_rut300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut300-initramfs-kernel.bin";
              sha256 = "4908ee47f8a941c11008ea9e5ca041dc65555fc910fdbaf3a3fefb880b44d03a";
              sha256_unsigned = "4908ee47f8a941c11008ea9e5ca041dc65555fc910fdbaf3a3fefb880b44d03a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut300-squashfs-factory.bin";
              sha256 = "eb3a376331e2f53d116e326b3c38ba6b60e9b8017f8c92380c16038d21837543";
              sha256_unsigned = "eb3a376331e2f53d116e326b3c38ba6b60e9b8017f8c92380c16038d21837543";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut300-squashfs-sysupgrade.bin";
              sha256 = "aef05932f32bb7442cfe525e801623cbc4c0888f1f3b21afc254797f208902e4";
              sha256_unsigned = "d880e2bec0fe232aaa0e10a3d4f71a0c019a16685cc2960923bec9a5c4b4dc84";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "teltonika,rut300"
          ];
          titles = [
            {
              model = "RUT300";
              vendor = "Teltonika";
            }
          ];
        };
        teltonika_rut955 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-acm"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "kmod-hwmon-mcp3021"
            "uqmi"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-squashfs-factory.bin";
              sha256 = "b45a26a750133a944a300ce30fc51a7de9a95b84e8531e72a6581965663985f6";
              sha256_unsigned = "b45a26a750133a944a300ce30fc51a7de9a95b84e8531e72a6581965663985f6";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-initramfs-kernel.bin";
              sha256 = "3ad468a806f53ba9a016326f73f026eeb1de81e02752abff789c724c82466fd1";
              sha256_unsigned = "3ad468a806f53ba9a016326f73f026eeb1de81e02752abff789c724c82466fd1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-squashfs-sysupgrade.bin";
              sha256 = "b4a2e24564f9fbb1d64b955c5f2f280b2c157f92cc42e50f7a9a7d7974d75cb7";
              sha256_unsigned = "bf927976ea11bdf72146911bbe0876209313b3f481145554ba6084504bb0d7cb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "teltonika,rut955"
          ];
          titles = [
            {
              model = "RUT955";
              vendor = "Teltonika";
            }
          ];
        };
        teltonika_rut955-h7v3c0 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-acm"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "kmod-hwmon-mcp3021"
            "uqmi"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-h7v3c0";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-h7v3c0-squashfs-sysupgrade.bin";
              sha256 = "19c35ce049aec43c73d5a0a4037e0c12894fec19fd5176f1eff12932e6599e11";
              sha256_unsigned = "c826aad7025b79fc14990f9c749d26fbc67b94679ca1a55844c240a22c5395ff";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-h7v3c0-initramfs-kernel.bin";
              sha256 = "d4771245e0c4e284f9e0d9faabf999b48d34f182717ae41db10a77082ccec833";
              sha256_unsigned = "d4771245e0c4e284f9e0d9faabf999b48d34f182717ae41db10a77082ccec833";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-teltonika_rut955-h7v3c0-squashfs-factory.bin";
              sha256 = "1f4ec804d4b937c840e0dff742a32ef7c0cd86620081c29d291a1586acfa6580";
              sha256_unsigned = "1f4ec804d4b937c840e0dff742a32ef7c0cd86620081c29d291a1586acfa6580";
              type = "factory";
            }
          ];
          supported_devices = [
            "teltonika,rut955-h7v3c0"
          ];
          titles = [
            {
              model = "RUT955";
              variant = "H7V3C0";
              vendor = "Teltonika";
            }
          ];
        };
        tplink_archer-a7-v5 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a7-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a7-v5-squashfs-factory.bin";
              sha256 = "4cfd2387a07f44e9e839fcec79f0b070bd283e102200758a4917dfb3354ffa51";
              sha256_unsigned = "4cfd2387a07f44e9e839fcec79f0b070bd283e102200758a4917dfb3354ffa51";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a7-v5-squashfs-sysupgrade.bin";
              sha256 = "4cf38db853156cf20f57d41879e3fb6c44b22e7bdb9eef366340951ea77df596";
              sha256_unsigned = "e626505a8a533d36c981b8da9692fb48145e8d06cb8565c276d21043204cb3d5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a7-v5-initramfs-kernel.bin";
              sha256 = "abe43ea9954f39a81f5ab943449a4ed9b487f6d89d237108bad6c23656d4c921";
              sha256_unsigned = "abe43ea9954f39a81f5ab943449a4ed9b487f6d89d237108bad6c23656d4c921";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-a7-v5"
          ];
          titles = [
            {
              model = "Archer A7";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-a9-v6 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a9-v6";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a9-v6-squashfs-factory.bin";
              sha256 = "f0acdeb253e4fa4efb878d73bee0fc0e5eda0c9022e48481078ac7dfc6e10ce9";
              sha256_unsigned = "f0acdeb253e4fa4efb878d73bee0fc0e5eda0c9022e48481078ac7dfc6e10ce9";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a9-v6-squashfs-sysupgrade.bin";
              sha256 = "10eca281b68209a831b9a06a90e1d34d686ee5da0913779131a70edef6cfbba7";
              sha256_unsigned = "b2bfb69c11e239dae781a5a067da0d7f9ca9175d0465e5ac10bf5295f2c063ca";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-a9-v6-initramfs-kernel.bin";
              sha256 = "885015a9990977ef8d6e8604f39a1ceb3b0457d220a68d0d7329da25dc561f07";
              sha256_unsigned = "885015a9990977ef8d6e8604f39a1ceb3b0457d220a68d0d7329da25dc561f07";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-a9-v6"
          ];
          titles = [
            {
              model = "Archer A9";
              variant = "v6";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c2-v3 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c2-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c2-v3-initramfs-kernel.bin";
              sha256 = "2a2b9c5c34913599e5af5d0c1a2cf35a1760dedf6260d06c48c84ed333434fe5";
              sha256_unsigned = "2a2b9c5c34913599e5af5d0c1a2cf35a1760dedf6260d06c48c84ed333434fe5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c2-v3"
          ];
          titles = [
            {
              model = "Archer C2";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c25-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c25-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c25-v1-initramfs-kernel.bin";
              sha256 = "8aa88172f467209717267b2ba7f824c04212940f2fa1db675d319aa8d2c030fa";
              sha256_unsigned = "8aa88172f467209717267b2ba7f824c04212940f2fa1db675d319aa8d2c030fa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c25-v1"
            "archer-c25-v1"
          ];
          titles = [
            {
              model = "Archer C25";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c5-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c5-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c5-v1-squashfs-sysupgrade.bin";
              sha256 = "386dfaa059d1672b1cf1a97262dcc69ed7cc2a1e6ccb043fafe63558cd86ded6";
              sha256_unsigned = "57701d257169b97d8a8991acd9342ea3c546aad47e787ace23cefdbc54a1ba68";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c5-v1-initramfs-kernel.bin";
              sha256 = "f3863cfa50820bf8e4cbf9684dba201325a79931d8f8fe94179f10f833808772";
              sha256_unsigned = "f3863cfa50820bf8e4cbf9684dba201325a79931d8f8fe94179f10f833808772";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c5-v1-squashfs-factory.bin";
              sha256 = "cbea60beea6b17d63a15e7553fc5ca10b762882d034121be3109e1dd07ddac7e";
              sha256_unsigned = "cbea60beea6b17d63a15e7553fc5ca10b762882d034121be3109e1dd07ddac7e";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,archer-c5-v1"
            "archer-c5"
          ];
          titles = [
            {
              model = "Archer C5";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c58-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c58-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c58-v1-initramfs-kernel.bin";
              sha256 = "b8b000b7269eeb3f45bb12f574c16d73e8625cf4ece524c0b674e9dd2acff4ee";
              sha256_unsigned = "b8b000b7269eeb3f45bb12f574c16d73e8625cf4ece524c0b674e9dd2acff4ee";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c58-v1"
            "archer-c58-v1"
          ];
          titles = [
            {
              model = "Archer C58";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c59-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v1-squashfs-factory.bin";
              sha256 = "b38c0bf557804fab31df3b2fa6df54e0441f4d546538e158dfa7aa8da5f155a0";
              sha256_unsigned = "b38c0bf557804fab31df3b2fa6df54e0441f4d546538e158dfa7aa8da5f155a0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v1-squashfs-sysupgrade.bin";
              sha256 = "dcb2cb1018680b0c944a11fcd362e38faf494775318a85e6d69d35792669a2e4";
              sha256_unsigned = "8d5ac408a1f55d0451194a72d0ac09216060d61b87689eb2c53b6f5458aa7e8c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v1-initramfs-kernel.bin";
              sha256 = "c825dfd94f562bca437dcaf907a3ee5c86e58ec9c067b1c0f5871a8d383a6290";
              sha256_unsigned = "c825dfd94f562bca437dcaf907a3ee5c86e58ec9c067b1c0f5871a8d383a6290";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c59-v1"
            "archer-c59-v1"
          ];
          titles = [
            {
              model = "Archer C59";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c59-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v2-squashfs-factory.bin";
              sha256 = "93d774836a1a1d1202a29435981d5660c765a6fb65c4fb3c76117a6b74a4f163";
              sha256_unsigned = "93d774836a1a1d1202a29435981d5660c765a6fb65c4fb3c76117a6b74a4f163";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v2-initramfs-kernel.bin";
              sha256 = "95d1e54e9da94d60bb0aecb36437a5ff9eb808336e5810b12814a069ad5721df";
              sha256_unsigned = "95d1e54e9da94d60bb0aecb36437a5ff9eb808336e5810b12814a069ad5721df";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c59-v2-squashfs-sysupgrade.bin";
              sha256 = "0584e3dd10844bc0951e4b8cab7701a3c1cdd93722d4d982f9a4f1c9aa2a10bb";
              sha256_unsigned = "cb637cad892e086d92cb6bf8f4b0d6c627c84bfd225e480fc77184e6db22241a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,archer-c59-v2"
            "archer-c59-v2"
          ];
          titles = [
            {
              model = "Archer C59";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c6-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2-initramfs-kernel.bin";
              sha256 = "4c2b9e81d91c83c2cdcd61b350c62957c4411a38080e61e4e5dccdf19a179b6b";
              sha256_unsigned = "4c2b9e81d91c83c2cdcd61b350c62957c4411a38080e61e4e5dccdf19a179b6b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c6-v2"
          ];
          titles = [
            {
              model = "Archer C6";
              variant = "v2 (EU/RU/JP)";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c6-v2-us = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2-us";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2-us-initramfs-kernel.bin";
              sha256 = "0ba362497fb6c3aacad01a6ee09a930819c0c8ae9b3e44df6e38f15b65a34534";
              sha256_unsigned = "0ba362497fb6c3aacad01a6ee09a930819c0c8ae9b3e44df6e38f15b65a34534";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2-us-squashfs-factory.bin";
              sha256 = "9e0596a0918494e02a57722bea33f5b5baa6d369c48313adb10eee8670e68e0f";
              sha256_unsigned = "9e0596a0918494e02a57722bea33f5b5baa6d369c48313adb10eee8670e68e0f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c6-v2-us-squashfs-sysupgrade.bin";
              sha256 = "0de2e3a677013ec9cdd9b4fa2c1a25d489285b8aa73c3afff616962fbdfa3eb9";
              sha256_unsigned = "b3a99152d3dd4a69d91d185b3a6c99994d85c212a8ed7122ca8f385249b7708e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,archer-c6-v2-us"
          ];
          titles = [
            {
              model = "Archer C6";
              variant = "v2 (US)";
              vendor = "TP-Link";
            }
            {
              model = "Archer A6";
              variant = "v2 (US/TW)";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c60-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v1-initramfs-kernel.bin";
              sha256 = "1eee1c04ed8df081ab913f4ad4a76dcc163b9f867ebdedaacb1b4b7cff303d68";
              sha256_unsigned = "1eee1c04ed8df081ab913f4ad4a76dcc163b9f867ebdedaacb1b4b7cff303d68";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c60-v1"
            "archer-c60-v1"
          ];
          titles = [
            {
              model = "Archer C60";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c60-v2 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v2-initramfs-kernel.bin";
              sha256 = "317d60c9118e42c4b1be1d082b282df81e1e3eb6c7ddbb99ac6b05f7d4afdeb9";
              sha256_unsigned = "317d60c9118e42c4b1be1d082b282df81e1e3eb6c7ddbb99ac6b05f7d4afdeb9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c60-v2"
            "archer-c60-v2"
          ];
          titles = [
            {
              model = "Archer C60";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c60-v3 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c60-v3-initramfs-kernel.bin";
              sha256 = "32ef9f690a3cd3d18d7df669ac35fad056beae6e141b3d7e7cb3e88b19b62dc9";
              sha256_unsigned = "32ef9f690a3cd3d18d7df669ac35fad056beae6e141b3d7e7cb3e88b19b62dc9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c60-v3"
          ];
          titles = [
            {
              model = "Archer C60";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c7-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v1-initramfs-kernel.bin";
              sha256 = "82778dac81faf7f031b8d7caff8fc2bf2972e82a8abf2fad90d22f8d0e637292";
              sha256_unsigned = "82778dac81faf7f031b8d7caff8fc2bf2972e82a8abf2fad90d22f8d0e637292";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c7-v1"
            "archer-c7"
          ];
          titles = [
            {
              model = "Archer C7";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c7-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2-squashfs-factory.bin";
              sha256 = "61721e88dfabac61686e3b36202d87705a75e51311c18f03e16891121ea733b1";
              sha256_unsigned = "61721e88dfabac61686e3b36202d87705a75e51311c18f03e16891121ea733b1";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2-initramfs-kernel.bin";
              sha256 = "a235907475304875aa17e074998d8a4f20a0f3ccba2d4691637beffe335bb2d9";
              sha256_unsigned = "a235907475304875aa17e074998d8a4f20a0f3ccba2d4691637beffe335bb2d9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2-squashfs-factory-us.bin";
              sha256 = "fa76fd45507c520d0442eeedaf98a697583b1166138e7b1c98ca98c6742bcbbc";
              sha256_unsigned = "fa76fd45507c520d0442eeedaf98a697583b1166138e7b1c98ca98c6742bcbbc";
              type = "factory-us";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2-squashfs-factory-eu.bin";
              sha256 = "8f92e4cd949958381d19f7b3875bd64cc5749004c6edc956ee80499c31d38a2a";
              sha256_unsigned = "8f92e4cd949958381d19f7b3875bd64cc5749004c6edc956ee80499c31d38a2a";
              type = "factory-eu";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v2-squashfs-sysupgrade.bin";
              sha256 = "590da3b3c0c2729cb5f4306d611aa32ef2b17f85ffd113944ee54812404db526";
              sha256_unsigned = "cc681938432831691d08fc7580451289cfea21b11d1a4060a54399497f88538c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,archer-c7-v2"
            "archer-c7"
          ];
          titles = [
            {
              model = "Archer C7";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c7-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v4";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v4-initramfs-kernel.bin";
              sha256 = "e919b3e5b12bac0e15b226f6d461af1fdec576d44e9c6249b0c3793ad06809e7";
              sha256_unsigned = "e919b3e5b12bac0e15b226f6d461af1fdec576d44e9c6249b0c3793ad06809e7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v4-squashfs-sysupgrade.bin";
              sha256 = "4f5be9ba0c8f2dfff0775003a71582e2640f47efa71243bb4a08dbbfdee8b33e";
              sha256_unsigned = "c0e5515a8645fade9914968728b46024515755208c4dc5bceba7db4ba691f8f4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v4-squashfs-factory.bin";
              sha256 = "b7041cff856293ab994cbdc19028b3db4467a0fa428004ad34294c59e0ff1eec";
              sha256_unsigned = "b7041cff856293ab994cbdc19028b3db4467a0fa428004ad34294c59e0ff1eec";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,archer-c7-v4"
            "archer-c7-v4"
          ];
          titles = [
            {
              model = "Archer C7";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c7-v5 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v5";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v5-initramfs-kernel.bin";
              sha256 = "825324268dc6ad27ed8405589bc85938c4e856d273e0c02956916c7a69a3b722";
              sha256_unsigned = "825324268dc6ad27ed8405589bc85938c4e856d273e0c02956916c7a69a3b722";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v5-squashfs-sysupgrade.bin";
              sha256 = "e65091b20390c4a9631f0fc5f480de5c898dc2b15100aad3bfa9f75d20bf16cf";
              sha256_unsigned = "d75431889f2c6a1aef978b53c7983cad2f0451253a29f6784851d07ca2014107";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-c7-v5-squashfs-factory.bin";
              sha256 = "ae8d30c21221fe060e20b87c0f49418c65992e943749b2d0e12828b7e6de8f72";
              sha256_unsigned = "ae8d30c21221fe060e20b87c0f49418c65992e943749b2d0e12828b7e6de8f72";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,archer-c7-v5"
            "archer-c7-v5"
          ];
          titles = [
            {
              model = "Archer C7";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-d7-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7-v1-squashfs-sysupgrade.bin";
              sha256 = "bfa427bca2b7e2fc3f707bc7f543e5ebcf7154291abfe436580e44f31eb64d99";
              sha256_unsigned = "3defac05f747bc25867e23e7733960d72232d70b5a8633ed8fb7826192f6fa85";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7-v1-initramfs-kernel.bin";
              sha256 = "d5dfe80eaf372d7d73645236def8ed0c90117330c2ca5d02b6d273f5b7562c55";
              sha256_unsigned = "d5dfe80eaf372d7d73645236def8ed0c90117330c2ca5d02b6d273f5b7562c55";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-d7-v1"
          ];
          titles = [
            {
              model = "Archer D7";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-d7b-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7b-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7b-v1-squashfs-sysupgrade.bin";
              sha256 = "383b0f46fe5a27709f8d716120a763d02a0488c09d7f4af3cbae35e533308509";
              sha256_unsigned = "2e0a4decd11f81825f22ecee3c9c2512e4f32e12da043b2671d18ca82d6488bb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_archer-d7b-v1-initramfs-kernel.bin";
              sha256 = "b345226e416fe34bf17e0ceaceb9fc4707272e96eca82d6d5e0fcf7fd7e216e4";
              sha256_unsigned = "b345226e416fe34bf17e0ceaceb9fc4707272e96eca82d6d5e0fcf7fd7e216e4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-d7b-v1"
          ];
          titles = [
            {
              model = "Archer D7b";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe210-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v1-initramfs-kernel.bin";
              sha256 = "93026bf9fe1d5802b29687d0ef0d4c6fa7ffe59c4815022c340aeb653f49af1a";
              sha256_unsigned = "93026bf9fe1d5802b29687d0ef0d4c6fa7ffe59c4815022c340aeb653f49af1a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe210-v1"
            "cpe210"
          ];
          titles = [
            {
              model = "CPE210";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe210-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v2-initramfs-kernel.bin";
              sha256 = "f069d476341a1a58e62fa1e9dcdb8b44f97e0f4b6b73b98b369cbd5418fe2f89";
              sha256_unsigned = "f069d476341a1a58e62fa1e9dcdb8b44f97e0f4b6b73b98b369cbd5418fe2f89";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe210-v2"
            "cpe210-v2"
          ];
          titles = [
            {
              model = "CPE210";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe210-v3 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe210-v3-initramfs-kernel.bin";
              sha256 = "b4352080c88869767bf31be2d64a4bde6d477c492ce3e8fd1dcee1a19af67871";
              sha256_unsigned = "b4352080c88869767bf31be2d64a4bde6d477c492ce3e8fd1dcee1a19af67871";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe210-v3"
            "cpe210-v3"
          ];
          titles = [
            {
              model = "CPE210";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe220-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe220-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe220-v2-initramfs-kernel.bin";
              sha256 = "e397637becb4a11d66a3297d3de13496fbbecd39de6e8bb39644d53264677418";
              sha256_unsigned = "e397637becb4a11d66a3297d3de13496fbbecd39de6e8bb39644d53264677418";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe220-v2"
          ];
          titles = [
            {
              model = "CPE220";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe220-v3 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe220-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe220-v3-initramfs-kernel.bin";
              sha256 = "d34a84e140ab688b9a0cbd71d62e7e1ec2d94c2ccfc2d8a8bd9bfd46b4b925fc";
              sha256_unsigned = "d34a84e140ab688b9a0cbd71d62e7e1ec2d94c2ccfc2d8a8bd9bfd46b4b925fc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe220-v3"
          ];
          titles = [
            {
              model = "CPE220";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe510-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v1-initramfs-kernel.bin";
              sha256 = "99cbaf347d685e70ae71cd7bb22e2c479830bc6d7d687b078df9a27f55dd3111";
              sha256_unsigned = "99cbaf347d685e70ae71cd7bb22e2c479830bc6d7d687b078df9a27f55dd3111";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe510-v1"
            "cpe510"
          ];
          titles = [
            {
              model = "CPE510";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe510-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v2-initramfs-kernel.bin";
              sha256 = "b2317770442b6498bd3724149ff76700adb4461a91220b4ebfc099cce8f912e3";
              sha256_unsigned = "b2317770442b6498bd3724149ff76700adb4461a91220b4ebfc099cce8f912e3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe510-v2"
            "cpe510-v2"
          ];
          titles = [
            {
              model = "CPE510";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe510-v3 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe510-v3-initramfs-kernel.bin";
              sha256 = "810c532b4ed16f5a429b2b9d4c930fcc1035f883173e12b04bcc3424ec6d10a6";
              sha256_unsigned = "810c532b4ed16f5a429b2b9d4c930fcc1035f883173e12b04bcc3424ec6d10a6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe510-v3"
          ];
          titles = [
            {
              model = "CPE510";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe605-v1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe605-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe605-v1-initramfs-kernel.bin";
              sha256 = "369048ea71ef42bf391fb6926622b19ccedf06a980c9893d55d92409d6b44c89";
              sha256_unsigned = "369048ea71ef42bf391fb6926622b19ccedf06a980c9893d55d92409d6b44c89";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe605-v1"
          ];
          titles = [
            {
              model = "CPE605";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe610-v1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe610-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe610-v1-initramfs-kernel.bin";
              sha256 = "a02ecb2a116a60aebaad6a32f7276f852e5e43c0a86d45ee41ff65c62431d578";
              sha256_unsigned = "a02ecb2a116a60aebaad6a32f7276f852e5e43c0a86d45ee41ff65c62431d578";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe610-v1"
          ];
          titles = [
            {
              model = "CPE610";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe610-v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe610-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe610-v2-initramfs-kernel.bin";
              sha256 = "bc19e0508e4aabc99ace3cdb46ef5658aa479536b671c3508f80086bf971e346";
              sha256_unsigned = "bc19e0508e4aabc99ace3cdb46ef5658aa479536b671c3508f80086bf971e346";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,cpe610-v2"
          ];
          titles = [
            {
              model = "CPE610";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_cpe710-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_cpe710-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe710-v1-squashfs-factory.bin";
              sha256 = "ead38c8db2baeeeb7673a6f51514a73a04f30e712d53c59ea832519f98e6bb71";
              sha256_unsigned = "ead38c8db2baeeeb7673a6f51514a73a04f30e712d53c59ea832519f98e6bb71";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe710-v1-initramfs-kernel.bin";
              sha256 = "ac425092dd12e73d4a9ce211935e2550a53724ea537392069eeb761df2264dce";
              sha256_unsigned = "ac425092dd12e73d4a9ce211935e2550a53724ea537392069eeb761df2264dce";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_cpe710-v1-squashfs-sysupgrade.bin";
              sha256 = "20800d3faf884441233226d07c1715228dc5c06737f7b7ad30e6a885e5499729";
              sha256_unsigned = "8668062d7e7bf823946b8c46143b40bdc8127a7318be52fa3d05185088fc9c86";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,cpe710-v1"
          ];
          titles = [
            {
              model = "CPE710";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_deco-m4r-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_deco-m4r-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-m4r-v1-initramfs-kernel.bin";
              sha256 = "bc53c15976d917b6355237901826c53262a0ced260092df8a8252a37f9471140";
              sha256_unsigned = "bc53c15976d917b6355237901826c53262a0ced260092df8a8252a37f9471140";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-m4r-v1-squashfs-factory.bin";
              sha256 = "3cf493be42773ae0cf6da098c25a1f433b7d17405f391c13c2c77ecb30a129c7";
              sha256_unsigned = "3cf493be42773ae0cf6da098c25a1f433b7d17405f391c13c2c77ecb30a129c7";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-m4r-v1-squashfs-sysupgrade.bin";
              sha256 = "92fbe79e6287442933dc1810424206115e91d57bcb62a00901f262d148eb12e8";
              sha256_unsigned = "e711e958ace32cc304556d0e7a047c855a9f09267af7754661017b3daa045baa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,deco-m4r-v1"
            "deco-m4r-v1"
          ];
          titles = [
            {
              model = "Deco M4R";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_deco-s4-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "uencrypt-openssl"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_deco-s4-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-s4-v2-squashfs-sysupgrade.bin";
              sha256 = "29b26c8c62ec0a4c75a15b8a50d2f9340e8f6dfe6a8b41450a40ee650df1b9a0";
              sha256_unsigned = "7f3a9d9d4a4eacf3fd6865abe2aa596317449e25d89f9b86c083d5d3f73bbf8a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-s4-v2-initramfs-kernel.bin";
              sha256 = "cbd151332a76ac28b69d289dcb399ec122567aa85e1a8c612cc71270d0d3a292";
              sha256_unsigned = "cbd151332a76ac28b69d289dcb399ec122567aa85e1a8c612cc71270d0d3a292";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_deco-s4-v2-squashfs-factory.bin";
              sha256 = "6b0ec413d7e752439753b22a91559bc167e501de21e55d1301912dce8dbebc05";
              sha256_unsigned = "6b0ec413d7e752439753b22a91559bc167e501de21e55d1301912dce8dbebc05";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,deco-s4-v2"
            "deco-s4-v2"
          ];
          titles = [
            {
              model = "Deco S4";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-outdoor-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v1-initramfs-kernel.bin";
              sha256 = "0ff8e1871cc15ceb01b8c028ea75d612fbf07d860914e05c92b2c155542e53e7";
              sha256_unsigned = "0ff8e1871cc15ceb01b8c028ea75d612fbf07d860914e05c92b2c155542e53e7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v1-squashfs-sysupgrade.bin";
              sha256 = "3178e70f98d0e2bd7040bd447fad9ae058563dcd27958d386541bf123e07b687";
              sha256_unsigned = "e6d82136490c99b75b45677aaccdd40dc4bc78a9d9cbc1cf6d613ded231e4d26";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v1-squashfs-factory.bin";
              sha256 = "246d717110804856be5fbe86e86efc95b6d3366746866a20d027b810a88ba3cc";
              sha256_unsigned = "246d717110804856be5fbe86e86efc95b6d3366746866a20d027b810a88ba3cc";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,eap225-outdoor-v1"
          ];
          titles = [
            {
              model = "EAP225-Outdoor";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-outdoor-v3 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v3-squashfs-sysupgrade.bin";
              sha256 = "d9586b0ae9acff5d11ff691ee74865fc6b619371858c842cce90796dcea5116a";
              sha256_unsigned = "0fbe39464d7b373bca6c1f8df6bd4ad4acec0f4b1fd05b1cf6d1a697ed84b454";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v3-initramfs-kernel.bin";
              sha256 = "7c91dafc1ee8f749a8f3dcbd785b855a5d534e8b9e65165852bd87d66f7ea85b";
              sha256_unsigned = "7c91dafc1ee8f749a8f3dcbd785b855a5d534e8b9e65165852bd87d66f7ea85b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-outdoor-v3-squashfs-factory.bin";
              sha256 = "78644d14819cab079c8a914d3fd77db0c054b8447612312b9520a0af706f3581";
              sha256_unsigned = "78644d14819cab079c8a914d3fd77db0c054b8447612312b9520a0af706f3581";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,eap225-outdoor-v3"
          ];
          titles = [
            {
              model = "EAP225-Outdoor";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v1-initramfs-kernel.bin";
              sha256 = "cc8fd11663c63b5f1f9d5986b5efa48cb4039e2cf0fff0fa1112e722997df198";
              sha256_unsigned = "cc8fd11663c63b5f1f9d5986b5efa48cb4039e2cf0fff0fa1112e722997df198";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v1-squashfs-factory.bin";
              sha256 = "55564c446112a8c067b7a867a5212daa9ecace8944cc8a236b65c61d04796c0e";
              sha256_unsigned = "55564c446112a8c067b7a867a5212daa9ecace8944cc8a236b65c61d04796c0e";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v1-squashfs-sysupgrade.bin";
              sha256 = "4949a7524b94e4a3864aea144bde277d4283a102185e5d9a3f6476d252a9df6c";
              sha256_unsigned = "f952d650bb0201ed3f342cc7c1bff0ef446f6e3207c43e5a07ef2c68661aee83";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,eap225-v1"
          ];
          titles = [
            {
              model = "EAP225";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-v3 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v3-squashfs-factory.bin";
              sha256 = "ffd47743f97c7d479765e4e965741a6d89fe2706b270bc14a42b3d288dbad88d";
              sha256_unsigned = "ffd47743f97c7d479765e4e965741a6d89fe2706b270bc14a42b3d288dbad88d";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v3-initramfs-kernel.bin";
              sha256 = "e2a3b7cf0e2b370f3651253c51bb8e6e1f75993fac57272547ada013647e3c25";
              sha256_unsigned = "e2a3b7cf0e2b370f3651253c51bb8e6e1f75993fac57272547ada013647e3c25";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v3-squashfs-sysupgrade.bin";
              sha256 = "3ff153f6df55a35cc3348126f3282f59ca8bc81ab434200538c7207328d30389";
              sha256_unsigned = "0ef1870140b224398698097c8067300de6ec20f4e739a498822e0a8c15ed9eaa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,eap225-v3"
          ];
          titles = [
            {
              model = "EAP225";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-v4 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v4-squashfs-factory.bin";
              sha256 = "792881e687ad869cb158433f89c7cd9e62d3b595fc694eb7c1b821ad7fc2bae2";
              sha256_unsigned = "792881e687ad869cb158433f89c7cd9e62d3b595fc694eb7c1b821ad7fc2bae2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v4-squashfs-sysupgrade.bin";
              sha256 = "9d48c3b6cab889b66b831f5b1e172960e32734517c52595db7082711fda6fb1e";
              sha256_unsigned = "761921424b81b449b8f6d8389196f8c9cd45b0a8aa45f4edf3dacf8ec49ce95c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-v4-initramfs-kernel.bin";
              sha256 = "4e71b322c91cbf911c20772961519fd24de14884d5148fcbdd5659fbf7c4750d";
              sha256_unsigned = "4e71b322c91cbf911c20772961519fd24de14884d5148fcbdd5659fbf7c4750d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,eap225-v4"
          ];
          titles = [
            {
              model = "EAP225";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap225-wall-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-wall-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-wall-v2-squashfs-sysupgrade.bin";
              sha256 = "148248dd5279dd546f13327e25e09974e88b5b3a287e273b08a89c8a91ca9735";
              sha256_unsigned = "3a72e841e4b2bfde1f2d60c75cdd11c649b9a4c2a5205c0370f9f8fe2a9058f2";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-wall-v2-squashfs-factory.bin";
              sha256 = "9a37b6a0c0a8ff12a7c14c4f5e8ce84dbc36f273374869d35a0c8ea4720117d0";
              sha256_unsigned = "9a37b6a0c0a8ff12a7c14c4f5e8ce84dbc36f273374869d35a0c8ea4720117d0";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap225-wall-v2-initramfs-kernel.bin";
              sha256 = "e44ed06996cc2f42aae8110614cd3f1f576610be4795dfdb0cfee767f669b371";
              sha256_unsigned = "e44ed06996cc2f42aae8110614cd3f1f576610be4795dfdb0cfee767f669b371";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,eap225-wall-v2"
          ];
          titles = [
            {
              model = "EAP225-Wall";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap245-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v1-squashfs-factory.bin";
              sha256 = "6576fff28bf5677234f132cf6c6fd0de0f5af2acd73638e64f2cb5cef41a61fb";
              sha256_unsigned = "6576fff28bf5677234f132cf6c6fd0de0f5af2acd73638e64f2cb5cef41a61fb";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v1-squashfs-sysupgrade.bin";
              sha256 = "a9cf7b5d226d7dad71f84844c009c9fb3961a7eb2cb69ed45344e9c4b6c99f44";
              sha256_unsigned = "46c77d2d1ae70dcf77af9f14b3fb4ecf40c3429800e478e52a3e22253eaeb890";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v1-initramfs-kernel.bin";
              sha256 = "87210556cdcab6a41d4fc6dc5a41eccdd09f4e5f0ef3ae5bff79706fa8f494a9";
              sha256_unsigned = "87210556cdcab6a41d4fc6dc5a41eccdd09f4e5f0ef3ae5bff79706fa8f494a9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,eap245-v1"
          ];
          titles = [
            {
              model = "EAP245";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_eap245-v3 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v3-initramfs-kernel.bin";
              sha256 = "88123a49e614c3e4f8fb4143af980d99c9f96fa08c8a27413c52be0269a810f2";
              sha256_unsigned = "88123a49e614c3e4f8fb4143af980d99c9f96fa08c8a27413c52be0269a810f2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v3-squashfs-factory.bin";
              sha256 = "e870bd8e315e48a5eb56aa70c3e18432a7098be7d886c7f211a68952f784663b";
              sha256_unsigned = "e870bd8e315e48a5eb56aa70c3e18432a7098be7d886c7f211a68952f784663b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_eap245-v3-squashfs-sysupgrade.bin";
              sha256 = "d9b8287f75e558b20b04fc87412e94d6d583340a606bd588cdd818c673dfa2cc";
              sha256_unsigned = "d42202efbd93063e6a54fbf354f6394781cd1be31ab8112fbf0eee03330f701d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,eap245-v3"
          ];
          titles = [
            {
              model = "EAP245";
              variant = "v3";
              vendor = "TP-Link";
            }
            {
              model = "EAP265 HD";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re350k-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re350k-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re350k-v1-initramfs-kernel.bin";
              sha256 = "985676e11ee53f1e1f86cf3f91f3b6015e6a5a1bbe0d127c1425ca056e7873a8";
              sha256_unsigned = "985676e11ee53f1e1f86cf3f91f3b6015e6a5a1bbe0d127c1425ca056e7873a8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re350k-v1-squashfs-sysupgrade.bin";
              sha256 = "d00d0bcf912ec11b3c5821d8fb31eecb5085d6b846fbfd1bbb8b2fbfd9fdc0cd";
              sha256_unsigned = "e931d6bfc16e2c6f73b6d4f687b14621fab28c670b192b187f6b58f448d0465b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re350k-v1-squashfs-factory.bin";
              sha256 = "a8827d35820439621be1757f0571c6528b5a3a06b08e20e76a2cf157b581ba2b";
              sha256_unsigned = "a8827d35820439621be1757f0571c6528b5a3a06b08e20e76a2cf157b581ba2b";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,re350k-v1"
          ];
          titles = [
            {
              model = "RE350K";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re355-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re355-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re355-v1-initramfs-kernel.bin";
              sha256 = "adc3b5365364d94997e3e7817ed2a5856d01bcb6fd3593134a07a4df01aa9a5e";
              sha256_unsigned = "adc3b5365364d94997e3e7817ed2a5856d01bcb6fd3593134a07a4df01aa9a5e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re355-v1"
            "re355"
          ];
          titles = [
            {
              model = "RE355";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re450-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v1-initramfs-kernel.bin";
              sha256 = "5f82469c6b0765710517db703cc844915f27c9fecb84d07b8574ffacfb942242";
              sha256_unsigned = "5f82469c6b0765710517db703cc844915f27c9fecb84d07b8574ffacfb942242";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re450-v1"
            "re450"
          ];
          titles = [
            {
              model = "RE450";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re450-v2 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v2-initramfs-kernel.bin";
              sha256 = "791a44d6b214d6addca1652efc6f59c1e8017b5877a8d952aa118ff3efca8e62";
              sha256_unsigned = "791a44d6b214d6addca1652efc6f59c1e8017b5877a8d952aa118ff3efca8e62";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re450-v2"
          ];
          titles = [
            {
              model = "RE450";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re450-v3 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re450-v3-initramfs-kernel.bin";
              sha256 = "70abf217e2be586ca21a89b92d41388e49d80ed8a80d7667f49da88cea31a1c9";
              sha256_unsigned = "70abf217e2be586ca21a89b92d41388e49d80ed8a80d7667f49da88cea31a1c9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re450-v3"
          ];
          titles = [
            {
              model = "RE450";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re455-v1 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_re455-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_re455-v1-initramfs-kernel.bin";
              sha256 = "eecf9b1d9968545cdab47063ffa88908520ceef8f096b5344dcccc0711891b2b";
              sha256_unsigned = "eecf9b1d9968545cdab47063ffa88908520ceef8f096b5344dcccc0711891b2b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re455-v1"
          ];
          titles = [
            {
              model = "RE455";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-mr6400-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-net-rndis"
            "kmod-usb-serial-option"
            "adb-enablemodem"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-mr6400-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-mr6400-v1-initramfs-kernel.bin";
              sha256 = "6026de1d470b1c3e28f6f590074a97fb419f0a15b1ad1cd45ef39995e57e116e";
              sha256_unsigned = "6026de1d470b1c3e28f6f590074a97fb419f0a15b1ad1cd45ef39995e57e116e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-mr6400-v1"
            "tl-mr6400"
          ];
          titles = [
            {
              model = "TL-MR6400";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wa1201-v2 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wa1201-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wa1201-v2-squashfs-factory.bin";
              sha256 = "6b0533c247c3758cea036a726577f7398d061f81396e82b0e3d0c56d4ec37cac";
              sha256_unsigned = "6b0533c247c3758cea036a726577f7398d061f81396e82b0e3d0c56d4ec37cac";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wa1201-v2-initramfs-kernel.bin";
              sha256 = "9e898c253ac779f7815b47bd9fe3f9d74c5179c7e424c54c042842001440a58b";
              sha256_unsigned = "9e898c253ac779f7815b47bd9fe3f9d74c5179c7e424c54c042842001440a58b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wa1201-v2-squashfs-sysupgrade.bin";
              sha256 = "35d715a698bedd33c57d535c5a473fafc53d5859f8aebbf845398188b2ac9379";
              sha256_unsigned = "d3c393d85ff2be194d50cdfa2b3d02d301e33fc5b42c9bd83c57df9546cf2d69";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wa1201-v2"
          ];
          titles = [
            {
              model = "TL-WA1201";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr3500-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr3500-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr3500-v1-initramfs-kernel.bin";
              sha256 = "4f0a9f92bf6b4025a9a0683f51f14b750c53a037a55b6a22323a17f2a9818186";
              sha256_unsigned = "4f0a9f92bf6b4025a9a0683f51f14b750c53a037a55b6a22323a17f2a9818186";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr3500-v1"
            "tl-wdr3500"
          ];
          titles = [
            {
              model = "TL-WDR3500";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr3600-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr3600-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr3600-v1-initramfs-kernel.bin";
              sha256 = "851d7cdd67ec6dc651a058c5ec87b1e2cc746023ee1fc69a0c196fdaf652c38c";
              sha256_unsigned = "851d7cdd67ec6dc651a058c5ec87b1e2cc746023ee1fc69a0c196fdaf652c38c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr3600-v1"
            "tl-wdr4300"
          ];
          titles = [
            {
              model = "TL-WDR3600";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr4300-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4300-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4300-v1-initramfs-kernel.bin";
              sha256 = "b5ef576e30a7cb5745b5d6a7b3863c4d90778b6b189c9cfb03ebc53fe7afa35f";
              sha256_unsigned = "b5ef576e30a7cb5745b5d6a7b3863c4d90778b6b189c9cfb03ebc53fe7afa35f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr4300-v1"
            "tl-wdr4300"
          ];
          titles = [
            {
              model = "TL-WDR4300";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr4300-v1-il = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4300-v1-il";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4300-v1-il-initramfs-kernel.bin";
              sha256 = "6d63607cdf56c4554211eb4807bf57d7a95a8923e988e72ad1d727a0352eff1c";
              sha256_unsigned = "6d63607cdf56c4554211eb4807bf57d7a95a8923e988e72ad1d727a0352eff1c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr4300-v1-il"
            "tl-wdr4300"
          ];
          titles = [
            {
              model = "TL-WDR4300";
              variant = "v1 (IL)";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr4310-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4310-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4310-v1-initramfs-kernel.bin";
              sha256 = "d7ed71a68cbbe0a2fa42649bc8b748bd530ddf3474a73a8b2155ef4c54e252c7";
              sha256_unsigned = "d7ed71a68cbbe0a2fa42649bc8b748bd530ddf3474a73a8b2155ef4c54e252c7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr4310-v1"
            "tl-wdr4300"
          ];
          titles = [
            {
              model = "TL-WDR4310";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr4900-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4900-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr4900-v2-initramfs-kernel.bin";
              sha256 = "15f6a3f520434a8dd92f9e10d7f933c4542ee1e34cfef5b4f4ad0f41e879bc7e";
              sha256_unsigned = "15f6a3f520434a8dd92f9e10d7f933c4542ee1e34cfef5b4f4ad0f41e879bc7e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr4900-v2"
            "tl-wdr4900-v2"
          ];
          titles = [
            {
              model = "TL-WDR4900";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wdr7500-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr7500-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wdr7500-v3-initramfs-kernel.bin";
              sha256 = "47393bc7154a537abadf8347a234e587ffba61e2acd178505165c7f5a75a2e64";
              sha256_unsigned = "47393bc7154a537abadf8347a234e587ffba61e2acd178505165c7f5a75a2e64";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr7500-v3"
            "archer-c7"
          ];
          titles = [
            {
              model = "TL-WDR7500";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wpa8630-v1 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wpa8630-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wpa8630-v1-initramfs-kernel.bin";
              sha256 = "c5fd17069a5c780cb110a75d533e3297f57d0d103279970618b03a1bfcbb47f1";
              sha256_unsigned = "c5fd17069a5c780cb110a75d533e3297f57d0d103279970618b03a1bfcbb47f1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wpa8630-v1"
            "tl-wpa8630"
          ];
          titles = [
            {
              model = "TL-WPA8630";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr1043n-v5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043n-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043n-v5-squashfs-factory.bin";
              sha256 = "7307012ce9157de228e9f4240987921dae4804785ea424f759ebe96cae99ae89";
              sha256_unsigned = "7307012ce9157de228e9f4240987921dae4804785ea424f759ebe96cae99ae89";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043n-v5-initramfs-kernel.bin";
              sha256 = "fa097ba02356407bd02396d5e856db10b401cc990b05193b5d1afad2b9597dd2";
              sha256_unsigned = "fa097ba02356407bd02396d5e856db10b401cc990b05193b5d1afad2b9597dd2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043n-v5-squashfs-sysupgrade.bin";
              sha256 = "c1fa77701a140d039c28b14e03615966fe9c567eb02a0832a258be5713a134f6";
              sha256_unsigned = "d06fd2f11634238096567c2e599c4b1a38afce62acd92d9180c3905032def87b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr1043n-v5"
            "tl-wr1043n-v5"
          ];
          titles = [
            {
              model = "TL-WR1043N";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr1043nd-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v2-initramfs-kernel.bin";
              sha256 = "37809d5bb3a263d57ff7e633ba6c7b1b04bb9abeaab4d7fa34ca9fdc1b3f3fc1";
              sha256_unsigned = "37809d5bb3a263d57ff7e633ba6c7b1b04bb9abeaab4d7fa34ca9fdc1b3f3fc1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr1043nd-v2"
            "tl-wr1043nd-v2"
          ];
          titles = [
            {
              model = "TL-WR1043N/ND";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr1043nd-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v3-initramfs-kernel.bin";
              sha256 = "8f59cd7f41be0f7a749e2f1a6e7cc5415385d828c0f055a79a2a6aae1bac49c9";
              sha256_unsigned = "8f59cd7f41be0f7a749e2f1a6e7cc5415385d828c0f055a79a2a6aae1bac49c9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr1043nd-v3"
            "tl-wr1043nd-v2"
          ];
          titles = [
            {
              model = "TL-WR1043N/ND";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr1043nd-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v4-squashfs-factory.bin";
              sha256 = "f43a1e18b3e5b33df830813dbc4d09ca47edc12cf3612e63af1f259fcc8d49b4";
              sha256_unsigned = "f43a1e18b3e5b33df830813dbc4d09ca47edc12cf3612e63af1f259fcc8d49b4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v4-squashfs-sysupgrade.bin";
              sha256 = "98473cbc283b82881df4e6a4f24fa399d508b3ccbe439871734874d8aa2b0b9f";
              sha256_unsigned = "5c3a2bba40a6a638e88fe9e45c75659d62df5a0d1a48a3205a5e35b90011f454";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1043nd-v4-initramfs-kernel.bin";
              sha256 = "f6467a770cedd240060057b846b0a28927e8e5f1835d6d33cefb77f3e6410cd5";
              sha256_unsigned = "f6467a770cedd240060057b846b0a28927e8e5f1835d6d33cefb77f3e6410cd5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr1043nd-v4"
            "tl-wr1043nd-v4"
          ];
          titles = [
            {
              model = "TL-WR1043N/ND";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr1045nd-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1045nd-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr1045nd-v2-initramfs-kernel.bin";
              sha256 = "2d15ec6c321500d80b13c985af3dc1393987d75798ea0e034a1bc85a620037f3";
              sha256_unsigned = "2d15ec6c321500d80b13c985af3dc1393987d75798ea0e034a1bc85a620037f3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr1045nd-v2"
          ];
          titles = [
            {
              model = "TL-WR1045ND";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr2543-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-switch-rtl8367"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr2543-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr2543-v1-initramfs-kernel.bin";
              sha256 = "e9382a0073825ae5a2f7bc42c77d71a6eff8d35abc8b244ce10b6c13673ae314";
              sha256_unsigned = "e9382a0073825ae5a2f7bc42c77d71a6eff8d35abc8b244ce10b6c13673ae314";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr2543-v1"
            "tl-wr2543n"
          ];
          titles = [
            {
              model = "TL-WR2543N/ND";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr810n-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr810n-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr810n-v1-initramfs-kernel.bin";
              sha256 = "6fe3bd5bec63a827d473bc85a1b906bd71f086b66dc0769abbaeca3bfe060c24";
              sha256_unsigned = "6fe3bd5bec63a827d473bc85a1b906bd71f086b66dc0769abbaeca3bfe060c24";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr810n-v1"
            "tl-wr810n"
          ];
          titles = [
            {
              model = "TL-WR810N";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr841hp-v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr841hp-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr841hp-v2-initramfs-kernel.bin";
              sha256 = "3d1c095abca1637631adfbb2bbc87022e12047cee5521ec842cbc1adf619689e";
              sha256_unsigned = "3d1c095abca1637631adfbb2bbc87022e12047cee5521ec842cbc1adf619689e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr841hp-v2"
          ];
          titles = [
            {
              model = "TL-WR841HP";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr841hp-v3 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr841hp-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr841hp-v3-initramfs-kernel.bin";
              sha256 = "b5d81821153f1a0637d46c1353df6db382ee07054b2fcfc6abf5fbf996c74c15";
              sha256_unsigned = "b5d81821153f1a0637d46c1353df6db382ee07054b2fcfc6abf5fbf996c74c15";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr841hp-v3"
          ];
          titles = [
            {
              model = "TL-WR841HP";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr842n-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr842n-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr842n-v3-squashfs-factory.bin";
              sha256 = "5a9bc60a8ffd7671c1ebbe60182d55820748e103cf263750fe8ae2421aa90fe2";
              sha256_unsigned = "5a9bc60a8ffd7671c1ebbe60182d55820748e103cf263750fe8ae2421aa90fe2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr842n-v3-initramfs-kernel.bin";
              sha256 = "ba145e168bbc8a159349d2c5565726e93140b2cea27a01f6f10dd9f8fc553c3c";
              sha256_unsigned = "ba145e168bbc8a159349d2c5565726e93140b2cea27a01f6f10dd9f8fc553c3c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr842n-v3-squashfs-sysupgrade.bin";
              sha256 = "f743449eee68bef647faaa6dc6f575ebea14337d2a92a3876bee3f7d1f7b04c3";
              sha256_unsigned = "79092d543b844fff864d221290b871a1053a523175b2bcc75cec1b9d4a82e4ec";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr842n-v3"
            "tl-wr842n-v3"
          ];
          titles = [
            {
              model = "TL-WR842N";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr902ac-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
            "-swconfig"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr902ac-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr902ac-v1-initramfs-kernel.bin";
              sha256 = "58c21b227d8e611e220b56f06e577c80232a3142b2e4c5812cdf2c1e1563760e";
              sha256_unsigned = "58c21b227d8e611e220b56f06e577c80232a3142b2e4c5812cdf2c1e1563760e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr902ac-v1"
            "tl-wr902ac-v1"
          ];
          titles = [
            {
              model = "TL-WR902AC";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr941hp-v1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr941hp-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_tl-wr941hp-v1-initramfs-kernel.bin";
              sha256 = "5e9bc1850bad24f699459c1b918bbd0b0ab8decf16a787cfa8dcefc1d1b65816";
              sha256_unsigned = "5e9bc1850bad24f699459c1b918bbd0b0ab8decf16a787cfa8dcefc1d1b65816";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,tl-wr941hp-v1"
          ];
          titles = [
            {
              model = "TL-WR941HP";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_wbs210-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_wbs210-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_wbs210-v1-initramfs-kernel.bin";
              sha256 = "8efed6d819071f682ac31c23c7a87e2c1b2553eda2c09cfc53ff9297f13593a4";
              sha256_unsigned = "8efed6d819071f682ac31c23c7a87e2c1b2553eda2c09cfc53ff9297f13593a4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,wbs210-v1"
            "wbs210"
          ];
          titles = [
            {
              model = "WBS210";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_wbs210-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_wbs210-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_wbs210-v2-initramfs-kernel.bin";
              sha256 = "8b428b12f724eacd945c6f77272a251f309278db32cc164011aefc4743c57163";
              sha256_unsigned = "8b428b12f724eacd945c6f77272a251f309278db32cc164011aefc4743c57163";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,wbs210-v2"
          ];
          titles = [
            {
              model = "WBS210";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_wbs510-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_wbs510-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_wbs510-v1-initramfs-kernel.bin";
              sha256 = "71db9f0fe683bb0777cd30cc2b5422400a7edd8e3159393b1b787241782a5d58";
              sha256_unsigned = "71db9f0fe683bb0777cd30cc2b5422400a7edd8e3159393b1b787241782a5d58";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,wbs510-v1"
            "wbs510"
          ];
          titles = [
            {
              model = "WBS510";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_wbs510-v2 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-tplink_wbs510-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-tplink_wbs510-v2-initramfs-kernel.bin";
              sha256 = "6c140ee408d8e3034cac371c843f759d3a3078d992745e80fa328d0780220cbf";
              sha256_unsigned = "6c140ee408d8e3034cac371c843f759d3a3078d992745e80fa328d0780220cbf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,wbs510-v2"
          ];
          titles = [
            {
              model = "WBS510";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        trendnet_tew-823dru = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-trendnet_tew-823dru";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-trendnet_tew-823dru-squashfs-factory.bin";
              sha256 = "2341d192504b4120bde3f62f1cea23ea173a859cb086d9e680a68513337e3cc6";
              sha256_unsigned = "2341d192504b4120bde3f62f1cea23ea173a859cb086d9e680a68513337e3cc6";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-trendnet_tew-823dru-squashfs-sysupgrade.bin";
              sha256 = "63daea234e51585f05f9e6f76352f9b11ebc18f88745ede9bca390d88371b07e";
              sha256_unsigned = "843957008f46190835d5f4c7f3c5e8e7bf12278e372793d345b5ba8e98297242";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-trendnet_tew-823dru-initramfs-kernel.bin";
              sha256 = "f1d7b58b6ca627504ea92386d6ef22d13ba25fa2b654f091dd3df180fe7f61da";
              sha256_unsigned = "f1d7b58b6ca627504ea92386d6ef22d13ba25fa2b654f091dd3df180fe7f61da";
              type = "kernel";
            }
          ];
          supported_devices = [
            "trendnet,tew-823dru"
            "tew-823dru"
          ];
          titles = [
            {
              model = "TEW-823DRU";
              variant = "v1.0R";
              vendor = "Trendnet";
            }
          ];
        };
        ubnt_aircube-ac = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-ac-squashfs-sysupgrade.bin";
              sha256 = "0452990af94a44f3d2838173f65b374edd12090c1a50e30c6424c7f0ed5cb195";
              sha256_unsigned = "a7a0e6fb358219f2c0c8dd955b09f681c23c5aa606220f968621b98447f5bcdf";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-ac-squashfs-factory.bin";
              sha256 = "d018425e62781cbe0ea55c0cc9490f239ca439dec5cce2a3cc73c34366d33e6c";
              sha256_unsigned = "d018425e62781cbe0ea55c0cc9490f239ca439dec5cce2a3cc73c34366d33e6c";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-ac-initramfs-kernel.bin";
              sha256 = "2da074824c9f93e172eed88663291a2ddc6b47ec1bee01c91fba4a64fb8b03b5";
              sha256_unsigned = "2da074824c9f93e172eed88663291a2ddc6b47ec1bee01c91fba4a64fb8b03b5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,aircube-ac"
          ];
          titles = [
            {
              model = "airCube AC";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_aircube-isp = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-isp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-isp-initramfs-kernel.bin";
              sha256 = "ef192e0cf60d7cf2320f8cd63cdba9f3e099b85d692c4b2e9d0aeb71f61c6f70";
              sha256_unsigned = "ef192e0cf60d7cf2320f8cd63cdba9f3e099b85d692c4b2e9d0aeb71f61c6f70";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-isp-squashfs-factory.bin";
              sha256 = "63e1799eac5aaa14ea4a8419bfc2731eab0316e016d4b746c4bc326fe326f725";
              sha256_unsigned = "63e1799eac5aaa14ea4a8419bfc2731eab0316e016d4b746c4bc326fe326f725";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_aircube-isp-squashfs-sysupgrade.bin";
              sha256 = "00f4c6767d0d43b075b836e208ad3d932d4b36caa754b29b122e59064422db75";
              sha256_unsigned = "62f7e2e621d7fffcfaace0abaff6e3259cebb5d62e9c0eb1cfeeb6d7ce8b2c12";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,aircube-isp"
            "ubnt,acb-isp"
          ];
          titles = [
            {
              model = "airCube ISP";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_bullet-ac = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-ac-initramfs-kernel.bin";
              sha256 = "abca57649197e62fbedf318dff38ff6daf23bfa6bc0d9e64c62f581708f9a463";
              sha256_unsigned = "abca57649197e62fbedf318dff38ff6daf23bfa6bc0d9e64c62f581708f9a463";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-ac-squashfs-factory.bin";
              sha256 = "2cce6d2658383a0ae20f82146524890358852e8d55442fe32c95ee036490014b";
              sha256_unsigned = "2cce6d2658383a0ae20f82146524890358852e8d55442fe32c95ee036490014b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-ac-squashfs-sysupgrade.bin";
              sha256 = "b3262fdff378c8613616eeaabb46d04f192073262e3f8fd2697630a361666b7a";
              sha256_unsigned = "53f94ce4db57edd38fc374c9f3879f36c1c326a1e38d3ec34e4a08b824de7978";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,bullet-ac"
          ];
          titles = [
            {
              model = "Bullet AC";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_bullet-m-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-m-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_bullet-m-xw-initramfs-kernel.bin";
              sha256 = "02e54beccf340a18060f519acf4042162f39bfa593f992f5380b7c6b83603f54";
              sha256_unsigned = "02e54beccf340a18060f519acf4042162f39bfa593f992f5380b7c6b83603f54";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,bullet-m-xw"
            "bullet-m-xw"
          ];
          titles = [
            {
              model = "Bullet M";
              variant = "XW";
              vendor = "Ubiquiti";
            }
            {
              model = "Rocket M";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_edgeswitch-5xp = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_edgeswitch-5xp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_edgeswitch-5xp-initramfs-kernel.bin";
              sha256 = "ee9f9dd31bf1f30876cc52e2ff46a0b28a12c299b2f38a38824523f7a151196e";
              sha256_unsigned = "ee9f9dd31bf1f30876cc52e2ff46a0b28a12c299b2f38a38824523f7a151196e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,edgeswitch-5xp"
          ];
          titles = [
            {
              model = "EdgeSwitch 5XP";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_lap-120 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_lap-120";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_lap-120-initramfs-kernel.bin";
              sha256 = "f371289dc56a249c20553571e39b9d02a28756607a8b5241d2910090e0c410dc";
              sha256_unsigned = "f371289dc56a249c20553571e39b9d02a28756607a8b5241d2910090e0c410dc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_lap-120-squashfs-sysupgrade.bin";
              sha256 = "0671613499f9533fdf13f0cfc053d63cc9e5da283e5bc10d557ea373eacdbea1";
              sha256_unsigned = "94b82d709f08acc5b65bd916404ea2caeab3145ea089c50f54e914c921aa6d02";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_lap-120-squashfs-factory.bin";
              sha256 = "fb49b2e2b681167313aa30ceac2ecb15da4071d7249850b00f0d6bddbf1d1f4e";
              sha256_unsigned = "fb49b2e2b681167313aa30ceac2ecb15da4071d7249850b00f0d6bddbf1d1f4e";
              type = "factory";
            }
          ];
          supported_devices = [
            "ubnt,lap-120"
          ];
          titles = [
            {
              model = "LiteAP ac (LAP-120)";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_litebeam-ac-gen2 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_litebeam-ac-gen2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_litebeam-ac-gen2-initramfs-kernel.bin";
              sha256 = "dc127d6df5694782fa6d2405f6a3e43bf811c84d27d9b753ef71c5b96616e187";
              sha256_unsigned = "dc127d6df5694782fa6d2405f6a3e43bf811c84d27d9b753ef71c5b96616e187";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_litebeam-ac-gen2-squashfs-sysupgrade.bin";
              sha256 = "2fdce181c6679249f210bd7ee8d2faf7aa6cede1946903c392b086612619df1a";
              sha256_unsigned = "d5198846d8e83564af06043ccfd2913b3f4957938bfb677cc4a671c48162b2c9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_litebeam-ac-gen2-squashfs-factory.bin";
              sha256 = "3eaf69e51b272f7ea2c45b7a6290580f967d26961ead76d245e99591c001b455";
              sha256_unsigned = "3eaf69e51b272f7ea2c45b7a6290580f967d26961ead76d245e99591c001b455";
              type = "factory";
            }
          ];
          supported_devices = [
            "ubnt,litebeam-ac-gen2"
          ];
          titles = [
            {
              model = "LiteBeam AC";
              variant = "Gen2";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanobeam-ac = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-initramfs-kernel.bin";
              sha256 = "23f3d1e14a3cba2c7f508608e51faa8fd58936d4f5caceea31ae377ba732632c";
              sha256_unsigned = "23f3d1e14a3cba2c7f508608e51faa8fd58936d4f5caceea31ae377ba732632c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-squashfs-sysupgrade.bin";
              sha256 = "004a70f6c70806fd888a7864a7165e4a6779a01e1d76e21f071524290dfcf0ef";
              sha256_unsigned = "89ce216be61092a0517f5b3541d1b74621029bfffb06649d3cfebc0ecd101c35";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-squashfs-factory.bin";
              sha256 = "aed6e7cc584236dcab21ceb3cc2707468ee57050b0c2e985e696b8342a1bfe09";
              sha256_unsigned = "aed6e7cc584236dcab21ceb3cc2707468ee57050b0c2e985e696b8342a1bfe09";
              type = "factory";
            }
          ];
          supported_devices = [
            "ubnt,nanobeam-ac"
          ];
          titles = [
            {
              model = "NanoBeam AC";
              variant = "Gen1";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanobeam-ac-gen2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-gen2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-gen2-squashfs-factory.bin";
              sha256 = "0212c620b3a635675c00cac56f87779e78f394d8ff6f4dff594b5a35c9ca0eef";
              sha256_unsigned = "0212c620b3a635675c00cac56f87779e78f394d8ff6f4dff594b5a35c9ca0eef";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-gen2-squashfs-sysupgrade.bin";
              sha256 = "40b2ec6f22fbbadca78a50cb6b6b3f90f5a76f824ab1fb7429542bef66a19d1b";
              sha256_unsigned = "899f1978553b0301b0b638787abe005e6c1c679739210b498edec3a1ec8688d8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-gen2-initramfs-kernel.bin";
              sha256 = "143738fcb2e82b7e9535d4bd4444cc716a584ae4bf796d12dd939dd28318072e";
              sha256_unsigned = "143738fcb2e82b7e9535d4bd4444cc716a584ae4bf796d12dd939dd28318072e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanobeam-ac-gen2"
          ];
          titles = [
            {
              model = "NanoBeam AC";
              variant = "Gen2";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanobeam-ac-xc = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-xc";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-xc-squashfs-factory.bin";
              sha256 = "4c5fbf1604ae7adf7062e02f8a7942825a8abda017bf5fcbf01ec4bbbd1a4a2e";
              sha256_unsigned = "4c5fbf1604ae7adf7062e02f8a7942825a8abda017bf5fcbf01ec4bbbd1a4a2e";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-xc-squashfs-sysupgrade.bin";
              sha256 = "0d087b57a146deb6d43aca23ee8843bb2669fd2c337c740055a732a1ea4ce82d";
              sha256_unsigned = "599090467717233adabbc0fd50f0380fc4ac91e3a23bf3605ede1b5b9eb7d8c1";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-ac-xc-initramfs-kernel.bin";
              sha256 = "fc85fb35ea839dce7139b68b981a5088e12313cb8f7dd396102fa269ca8d8079";
              sha256_unsigned = "fc85fb35ea839dce7139b68b981a5088e12313cb8f7dd396102fa269ca8d8079";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanobeam-ac-xc"
          ];
          titles = [
            {
              model = "NanoBeam AC";
              variant = "Gen1 (XC)";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanobeam-m5-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-m5-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanobeam-m5-xw-initramfs-kernel.bin";
              sha256 = "5d6eb81ea34065cd0dfe63ca6661d5c0454b632398e65a253cb3e67c5002e581";
              sha256_unsigned = "5d6eb81ea34065cd0dfe63ca6661d5c0454b632398e65a253cb3e67c5002e581";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanobeam-m5-xw"
            "loco-m-xw"
          ];
          titles = [
            {
              model = "NanoBeam M5";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanostation-ac = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-initramfs-kernel.bin";
              sha256 = "f7e97b0c24c163da9db92a4d1b3f9b3ac9c3fb9625938deb033f82f45f40bc3d";
              sha256_unsigned = "f7e97b0c24c163da9db92a4d1b3f9b3ac9c3fb9625938deb033f82f45f40bc3d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-squashfs-factory.bin";
              sha256 = "a89d1613f9cd96600e6d287d903f9bb9cc85db08f7746b9f3c93dbcf6014af12";
              sha256_unsigned = "a89d1613f9cd96600e6d287d903f9bb9cc85db08f7746b9f3c93dbcf6014af12";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-squashfs-sysupgrade.bin";
              sha256 = "6d7a19b1c6c5e19c98a7b550cfe283b67734545e3d58e43b43bfc5db993563b9";
              sha256_unsigned = "6ffce382d8a214c5095f908b5b88151f3e14fdf2b5bbad283d705d1795faf63d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,nanostation-ac"
          ];
          titles = [
            {
              model = "Nanostation AC";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanostation-ac-loco = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-loco";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-loco-squashfs-factory.bin";
              sha256 = "36692af68344788871f6b602078f059032af21a9213d92703c8de221a7ff3e07";
              sha256_unsigned = "36692af68344788871f6b602078f059032af21a9213d92703c8de221a7ff3e07";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-loco-squashfs-sysupgrade.bin";
              sha256 = "a1e7613aeac293dec14992190d726380c7eda43b4711365bbd365b8d55846c04";
              sha256_unsigned = "5c8d2d3881b9c0a4c88e7eb7ddf275b0ddf36c4bcd942faba5de3a6708aa97d8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-ac-loco-initramfs-kernel.bin";
              sha256 = "036262ae0ee88e9100b01eb849f92c4789115dcc1ae55a8cc17f16ed5dffe9cd";
              sha256_unsigned = "036262ae0ee88e9100b01eb849f92c4789115dcc1ae55a8cc17f16ed5dffe9cd";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanostation-ac-loco"
          ];
          titles = [
            {
              model = "Nanostation AC loco";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanostation-loco-m-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-loco-m-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-loco-m-xw-initramfs-kernel.bin";
              sha256 = "5649a071e85ad5527011206bf45be1ab2348b12f60f3b865997ef2c6e44c19d4";
              sha256_unsigned = "5649a071e85ad5527011206bf45be1ab2348b12f60f3b865997ef2c6e44c19d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanostation-loco-m-xw"
            "loco-m-xw"
          ];
          titles = [
            {
              model = "Nanostation Loco M";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_nanostation-m-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-m-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_nanostation-m-xw-initramfs-kernel.bin";
              sha256 = "c41181f34258c1cf72da2ccf20d12f274f9b737d5fb90daa2ea5ba839e77fa49";
              sha256_unsigned = "c41181f34258c1cf72da2ccf20d12f274f9b737d5fb90daa2ea5ba839e77fa49";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,nanostation-m-xw"
            "nanostation-m-xw"
          ];
          titles = [
            {
              model = "Nanostation M";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_powerbeam-5ac-500 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-500-squashfs-sysupgrade.bin";
              sha256 = "be2a453818621cfd4f8f2de496da25f065493ad78094fd01d89fc8f769bc7479";
              sha256_unsigned = "f9baaf3b62cfc5ca83e1dd81bdb331de8160a736d9fc4e478f31a7ec2d05764f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-500-squashfs-factory.bin";
              sha256 = "5983c6066fbd895719073d4d30889fbe07b53fa27542628847155f38903b397b";
              sha256_unsigned = "5983c6066fbd895719073d4d30889fbe07b53fa27542628847155f38903b397b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-500-initramfs-kernel.bin";
              sha256 = "23dfefe76d13bbfb8af8b492bfde4ed6eb14a4059d78d2eb827502d4bcf6847e";
              sha256_unsigned = "23dfefe76d13bbfb8af8b492bfde4ed6eb14a4059d78d2eb827502d4bcf6847e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,powerbeam-5ac-500"
          ];
          titles = [
            {
              model = "PowerBeam 5AC";
              variant = "500";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_powerbeam-5ac-gen2 = {
          device_packages = [
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-gen2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-gen2-squashfs-sysupgrade.bin";
              sha256 = "6fdeb3eeeaeafdd7333cf7a923827a5dd8069d75f84880f5c0575c15e21c4f57";
              sha256_unsigned = "e758f82246cbbd71666e1855f95c8f250ae99d33d9d74392de625d2aad6cd1ae";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-gen2-squashfs-factory.bin";
              sha256 = "7963de6f493a3a6d5f956663721addec1043139e4f20a8a1e7837a653301b19b";
              sha256_unsigned = "7963de6f493a3a6d5f956663721addec1043139e4f20a8a1e7837a653301b19b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-5ac-gen2-initramfs-kernel.bin";
              sha256 = "3f80180e439020d6b500d658d280a835eba7965f3d811b9fa4b898650c95f34e";
              sha256_unsigned = "3f80180e439020d6b500d658d280a835eba7965f3d811b9fa4b898650c95f34e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,powerbeam-5ac-gen2"
          ];
          titles = [
            {
              model = "PowerBeam 5AC";
              variant = "Gen2";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_powerbeam-m2-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-m2-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-m2-xw-initramfs-kernel.bin";
              sha256 = "581789e87d2ee19abe43ee4ac9e0730a97510720b82cc738dc860553a4a648e7";
              sha256_unsigned = "581789e87d2ee19abe43ee4ac9e0730a97510720b82cc738dc860553a4a648e7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,powerbeam-m2-xw"
            "loco-m-xw"
          ];
          titles = [
            {
              model = "PowerBeam M2";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_powerbeam-m5-xw = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-m5-xw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbeam-m5-xw-initramfs-kernel.bin";
              sha256 = "efb15ff63abe1759ffdf0ac6550a287eb30696d08e721f04924417c0ad23e2a8";
              sha256_unsigned = "efb15ff63abe1759ffdf0ac6550a287eb30696d08e721f04924417c0ad23e2a8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,powerbeam-m5-xw"
            "loco-m-xw"
          ];
          titles = [
            {
              model = "PowerBeam M5";
              variant = "XW";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_powerbridge-m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbridge-m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_powerbridge-m-initramfs-kernel.bin";
              sha256 = "30e9c32e7c215a2e82375eff0e7e0c5bb10755c97e8db834af756feda7daac47";
              sha256_unsigned = "30e9c32e7c215a2e82375eff0e7e0c5bb10755c97e8db834af756feda7daac47";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,powerbridge-m"
            "bullet-m"
          ];
          titles = [
            {
              model = "PowerBridge M";
              variant = "XM";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_rocket-5ac-lite = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-5ac-lite";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-5ac-lite-initramfs-kernel.bin";
              sha256 = "8c60c688e51957b73d4049546142c29cb92d1d9ba825cc31a6988b5c9c5fe166";
              sha256_unsigned = "8c60c688e51957b73d4049546142c29cb92d1d9ba825cc31a6988b5c9c5fe166";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-5ac-lite-squashfs-sysupgrade.bin";
              sha256 = "7c94e3e03b1fd033ea67e0fa1c9ba17f971aefb3956f05123b7560e1dff51c01";
              sha256_unsigned = "02ab2ec56a509a7881160cb02ebb05e872a09c3e33dbd981d2f9a4a6f51ad4fd";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-5ac-lite-squashfs-factory.bin";
              sha256 = "0eead0613bab1fe03c61ea5dcd93a374f9de7d0d651a0c8cfae12202bf7924ea";
              sha256_unsigned = "0eead0613bab1fe03c61ea5dcd93a374f9de7d0d651a0c8cfae12202bf7924ea";
              type = "factory";
            }
          ];
          supported_devices = [
            "ubnt,rocket-5ac-lite"
          ];
          titles = [
            {
              model = "Rocket 5AC";
              variant = "Lite";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_rocket-m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_rocket-m-initramfs-kernel.bin";
              sha256 = "b2bce6be92b8763eab3d61ae486a417635d322ebc4d993c2f56bf4e8cbe758e3";
              sha256_unsigned = "b2bce6be92b8763eab3d61ae486a417635d322ebc4d993c2f56bf4e8cbe758e3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,rocket-m"
            "rocket-m"
          ];
          titles = [
            {
              model = "Rocket M";
              variant = "XM";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_routerstation = {
          device_packages = [
            "-kmod-ath9k"
            "-wpad-openssl"
            "-uboot-envtools"
            "kmod-usb-ohci"
            "kmod-usb2"
            "fconfig"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-initramfs-kernel.bin";
              sha256 = "0d8eceb6b4e7d5efca72e9c40267eb5139f416038fc7897149cec04ae639eb4b";
              sha256_unsigned = "0d8eceb6b4e7d5efca72e9c40267eb5139f416038fc7897149cec04ae639eb4b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-squashfs-sysupgrade.bin";
              sha256 = "52db8131b2794d62d73824c60be98f808ea79e39e9e04ad5878287979befe062";
              sha256_unsigned = "61410999615d635d41fafc406227565860dda8e9af31691f60ab01b2827ee23b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-squashfs-factory.bin";
              sha256 = "9f6e8fab50193397bd6084b428437aa235614442245cd80494cb7e4b445a9d9c";
              sha256_unsigned = "9f6e8fab50193397bd6084b428437aa235614442245cd80494cb7e4b445a9d9c";
              type = "factory";
            }
          ];
          supported_devices = [
            "ubnt,routerstation"
          ];
          titles = [
            {
              model = "RouterStation";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_routerstation-pro = {
          device_packages = [
            "-kmod-ath9k"
            "-wpad-openssl"
            "-uboot-envtools"
            "kmod-usb-ohci"
            "kmod-usb2"
            "fconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-pro";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-pro-initramfs-kernel.bin";
              sha256 = "dacfa0ec282878b725e52a736cd6526e16a0a441e89763c82ebe1450daa4e048";
              sha256_unsigned = "dacfa0ec282878b725e52a736cd6526e16a0a441e89763c82ebe1450daa4e048";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-pro-squashfs-factory.bin";
              sha256 = "1e28569751c8b7daa77978afcc48c2d70fcfd490d043445d9831b45bc4c9e54f";
              sha256_unsigned = "1e28569751c8b7daa77978afcc48c2d70fcfd490d043445d9831b45bc4c9e54f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_routerstation-pro-squashfs-sysupgrade.bin";
              sha256 = "4c52386c12b8e14a1386a83899c89fe75870179484a9e4aa0bbf732b82e08caf";
              sha256_unsigned = "2fea855c0dbdfc523cd497135798415ad06f46da08629eb1305d853f13a5780f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,routerstation-pro"
          ];
          titles = [
            {
              model = "RouterStation Pro";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_uk-ultra = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "rssileds"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_uk-ultra";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_uk-ultra-squashfs-sysupgrade.bin";
              sha256 = "a0bd742f1bf7ef2cebcdeda03a3eaa2f82c2314e624661ed309967e8a37f2b96";
              sha256_unsigned = "14b0741bff8f505247175d564921842ee28f220a0120f994d7d23c6f2b1d8df4";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_uk-ultra-initramfs-kernel.bin";
              sha256 = "7d9462117bbe6a930b13ec281c04e7b63ebe8f9393072dd89266bebab38df820";
              sha256_unsigned = "7d9462117bbe6a930b13ec281c04e7b63ebe8f9393072dd89266bebab38df820";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,uk-ultra"
          ];
          titles = [
            {
              model = "UniFi Swiss Army Knife Ultra";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifi-ap = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-initramfs-kernel.bin";
              sha256 = "1c88d64ab8326db3b81d5f7b1d81d0459ad28888facbae29b059f645de4f4ea2";
              sha256_unsigned = "1c88d64ab8326db3b81d5f7b1d81d0459ad28888facbae29b059f645de4f4ea2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ap"
            "unifi"
            "ubnt,unifi"
          ];
          titles = [
            {
              model = "UniFi AP";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifi-ap-lr = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-lr";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-lr-initramfs-kernel.bin";
              sha256 = "64bd5446f53ecd97ad6522b82d87cb6315941f491073b873a972e1be1245bb9a";
              sha256_unsigned = "64bd5446f53ecd97ad6522b82d87cb6315941f491073b873a972e1be1245bb9a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ap-lr"
            "unifi"
            "ubnt,unifi"
            "ubnt,unifi-ap"
          ];
          titles = [
            {
              model = "UniFi AP";
              variant = "LR";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifi-ap-outdoor-plus = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-outdoor-plus";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-outdoor-plus-initramfs-kernel.bin";
              sha256 = "00ceeccd9c907d25ed2db8d9028c522609e21871ab240414dd8956136f71e0af";
              sha256_unsigned = "00ceeccd9c907d25ed2db8d9028c522609e21871ab240414dd8956136f71e0af";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-outdoor-plus-squashfs-factory.bin";
              sha256 = "e55408c7fb26b7dcf8835b6732eba3c8321079a907f718bb9ee227331bd6641e";
              sha256_unsigned = "41597ec890e5d8c52c3d9bca3f7bd80f2bd5f1dcf73cf994064e02fe7b329d33";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-outdoor-plus-squashfs-sysupgrade.bin";
              sha256 = "7aa19f8cf6431627f0ac3e505ac14e0018a1f0e0f0f739fd74736c065bc7dc13";
              sha256_unsigned = "41597ec890e5d8c52c3d9bca3f7bd80f2bd5f1dcf73cf994064e02fe7b329d33";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ap-outdoor-plus"
            "unifi-outdoor-plus"
          ];
          titles = [
            {
              model = "UniFi AP Outdoor+";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifi-ap-pro = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-pro";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-pro-squashfs-factory.bin";
              sha256 = "0d81156600de3b818fc13e9afd84f47bc0e6bf147980f7855de2aa8f9320b7d1";
              sha256_unsigned = "0984ad961aaa9bcd85a83d849ed9d17657b7ad269332f7c4786982cca1651140";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-pro-initramfs-kernel.bin";
              sha256 = "71e5ca34bada47f51f52aa1c16e7d4493e243fcaf237df4d139b1c9a69ab9c3e";
              sha256_unsigned = "71e5ca34bada47f51f52aa1c16e7d4493e243fcaf237df4d139b1c9a69ab9c3e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifi-ap-pro-squashfs-sysupgrade.bin";
              sha256 = "98831bf89e58002db1d1c6306b6c54e20d8d7664ba81387218b3478790c5ef8e";
              sha256_unsigned = "0984ad961aaa9bcd85a83d849ed9d17657b7ad269332f7c4786982cca1651140";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ap-pro"
            "uap-pro"
          ];
          titles = [
            {
              model = "UniFi AP Pro";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifiac-lite = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lite";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lite-squashfs-sysupgrade.bin";
              sha256 = "6c8bbde116168493f90371e9f3c705a83c6f62d65155d2e4dabb4c1f1f0f7eb9";
              sha256_unsigned = "3223ae32c153bde38abe8fd3e05d445adad7394d95e39823c9faabe2b1c48193";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lite-initramfs-kernel.bin";
              sha256 = "7274c7289f6ebe392867f82549162b12668696e0c52c7d1a0904dbdd38af99d5";
              sha256_unsigned = "7274c7289f6ebe392867f82549162b12668696e0c52c7d1a0904dbdd38af99d5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifiac-lite"
            "unifiac-lite"
          ];
          titles = [
            {
              model = "UniFi AC Lite";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifiac-lr = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lr-squashfs-sysupgrade.bin";
              sha256 = "0b788189029db2706c825c33b40b72103fb01e2e952efad31d70e7f10ede84d1";
              sha256_unsigned = "5ea61d9528eea73a1a4b040e2991d8f06646f5e722badc0f7e337a15464fba02";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-lr-initramfs-kernel.bin";
              sha256 = "2f8aba6b448bd7ee75c8ca0864ae219f17a1283c32adc4b49e7a24df13409e3e";
              sha256_unsigned = "2f8aba6b448bd7ee75c8ca0864ae219f17a1283c32adc4b49e7a24df13409e3e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifiac-lr"
            "unifiac-lite"
            "ubnt,unifiac-lite"
          ];
          titles = [
            {
              model = "UniFi AC LR";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifiac-mesh = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh-squashfs-sysupgrade.bin";
              sha256 = "acb6ac7f3c205f6935f389bb258de313d56e5a867de011fcbcee11a1b6c249cb";
              sha256_unsigned = "2af8135a12c202d08d3031fc6a1e55131a303ffff127318a02001227faa88464";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh-initramfs-kernel.bin";
              sha256 = "bb7557a42838dd5cbca1384983f7a9dd7b3e40efccc7ac64450961e83e6733c6";
              sha256_unsigned = "bb7557a42838dd5cbca1384983f7a9dd7b3e40efccc7ac64450961e83e6733c6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifiac-mesh"
            "unifiac-lite"
          ];
          titles = [
            {
              model = "UniFi AC Mesh";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifiac-mesh-pro = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh-pro";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh-pro-squashfs-sysupgrade.bin";
              sha256 = "a72605ae54af99afa56bb7aeedaaa71e67f8828e92afa77ff0495d82e9d7591e";
              sha256_unsigned = "f8656c764f433fa88dd71a9a318d7d00e02b651e090596f10d6189fa73d1e8b0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-mesh-pro-initramfs-kernel.bin";
              sha256 = "a8064f6489dd653ebd23d10c3c5182ca56f6c3c41d5cbde7089c4532e16cd187";
              sha256_unsigned = "a8064f6489dd653ebd23d10c3c5182ca56f6c3c41d5cbde7089c4532e16cd187";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifiac-mesh-pro"
            "unifiac-pro"
          ];
          titles = [
            {
              model = "UniFi AC Mesh Pro";
              vendor = "Ubiquiti";
            }
          ];
        };
        ubnt_unifiac-pro = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-pro";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-pro-initramfs-kernel.bin";
              sha256 = "51f378e537d960be94fa55b5ec050597720b4c608ac3f03ae56960797a40ac7b";
              sha256_unsigned = "51f378e537d960be94fa55b5ec050597720b4c608ac3f03ae56960797a40ac7b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-ubnt_unifiac-pro-squashfs-sysupgrade.bin";
              sha256 = "0be37e32d29e78819887276dc1998a98f1296e1cfdd5f6ba9c1ac2830b4e7b00";
              sha256_unsigned = "f108c1b36e939345f7ac41648f8bf445159f4ad886f1bbef9ca8308e981347a9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,unifiac-pro"
            "unifiac-pro"
          ];
          titles = [
            {
              model = "UniFi AC Pro";
              vendor = "Ubiquiti";
            }
          ];
        };
        wallys_dr531 = {
          device_packages = [
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-wallys_dr531";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-wallys_dr531-initramfs-kernel.bin";
              sha256 = "d4fe77b6f2252ce34560168012e00ab81ff715461609aa34beb5662cf8bba853";
              sha256_unsigned = "d4fe77b6f2252ce34560168012e00ab81ff715461609aa34beb5662cf8bba853";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wallys,dr531"
            "dr531"
          ];
          titles = [
            {
              model = "DR531";
              vendor = "Wallys";
            }
          ];
        };
        watchguard_ap100 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-watchguard_ap100";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap100-initramfs-kernel.bin";
              sha256 = "3db2f8526ae1b3b26888438ba216e2fb1c87c0cce66787a2bb16d28d0f8a53e4";
              sha256_unsigned = "3db2f8526ae1b3b26888438ba216e2fb1c87c0cce66787a2bb16d28d0f8a53e4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap100-squashfs-factory.bin";
              sha256 = "25c69cda4c13614c15eb5352cade083c93b369f96fc78a97b03008b61734d71b";
              sha256_unsigned = "25c69cda4c13614c15eb5352cade083c93b369f96fc78a97b03008b61734d71b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap100-squashfs-sysupgrade.bin";
              sha256 = "110aa85e79c5428cf765e517f74966f540db26b621ea4f8b1dbb03b5e6149ab9";
              sha256_unsigned = "e740e22bd1232ed8d8039a3fc5d0157b845550f00d5fd9244026558b29b727f1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "watchguard,ap100"
          ];
          titles = [
            {
              model = "AP100";
              vendor = "WatchGuard";
            }
          ];
        };
        watchguard_ap200 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-watchguard_ap200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap200-squashfs-sysupgrade.bin";
              sha256 = "7c33373030a7eafef35b905c03599d6fce1aad5ef83063d1a6a6c097280d9559";
              sha256_unsigned = "9271c2b1b0c6a71e122be28aab679e6497b846482c82a9e05f2639121cc56cd4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap200-squashfs-factory.bin";
              sha256 = "fcb8604255682733cdbfad5db03a5844b27f3cb0551bd167868f8e3f69428465";
              sha256_unsigned = "fcb8604255682733cdbfad5db03a5844b27f3cb0551bd167868f8e3f69428465";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap200-initramfs-kernel.bin";
              sha256 = "ba49bac5b0ca6b082a9e752ece5eb40ee98edd465685aa3886f5907ad21bfc34";
              sha256_unsigned = "ba49bac5b0ca6b082a9e752ece5eb40ee98edd465685aa3886f5907ad21bfc34";
              type = "kernel";
            }
          ];
          supported_devices = [
            "watchguard,ap200"
          ];
          titles = [
            {
              model = "AP200";
              vendor = "WatchGuard";
            }
          ];
        };
        watchguard_ap300 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-watchguard_ap300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap300-initramfs-kernel.bin";
              sha256 = "f1b1e4c155772ee16ca7306d6019f51ba4592e53e520405b9c52214c3370cbbb";
              sha256_unsigned = "f1b1e4c155772ee16ca7306d6019f51ba4592e53e520405b9c52214c3370cbbb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap300-squashfs-sysupgrade.bin";
              sha256 = "a78a2c5c57905e48dbdb439b13db7c06d864d5910a10ec08821df8d1d90d1c22";
              sha256_unsigned = "7b4420a77a8e9d76a194592b2f1a2919dc90bbe9aa9c83bdbc63e5badd7d52d9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-watchguard_ap300-squashfs-factory.bin";
              sha256 = "00563e582c9df0057cc37280ecbb55675b43f6864db1bb79e58961926b0283f1";
              sha256_unsigned = "00563e582c9df0057cc37280ecbb55675b43f6864db1bb79e58961926b0283f1";
              type = "factory";
            }
          ];
          supported_devices = [
            "watchguard,ap300"
          ];
          titles = [
            {
              model = "AP300";
              vendor = "WatchGuard";
            }
          ];
        };
        wd_mynet-n600 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n600";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n600-squashfs-factory.bin";
              sha256 = "dc1ffb69cc4a5dc78ffbc16c8362a92a28f66ed6d5aa355eed2440a864065ec3";
              sha256_unsigned = "dc1ffb69cc4a5dc78ffbc16c8362a92a28f66ed6d5aa355eed2440a864065ec3";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n600-initramfs-kernel.bin";
              sha256 = "1a1dda8024daf2b61537c4b5363bcda461a8cf54636820250e951b0aecb15c57";
              sha256_unsigned = "1a1dda8024daf2b61537c4b5363bcda461a8cf54636820250e951b0aecb15c57";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n600-squashfs-sysupgrade.bin";
              sha256 = "6e8302c16695b7309c48d5f57bffdf286d14b078b10ec6a62dc8eacf9e036e5b";
              sha256_unsigned = "0e246f614296bb0d9122b98a8fedb22f0eb44f383efc1f7031e177a131d94dc4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wd,mynet-n600"
            "mynet-n600"
          ];
          titles = [
            {
              model = "My Net N600";
              vendor = "Western Digital";
            }
          ];
        };
        wd_mynet-n750 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n750-squashfs-factory.bin";
              sha256 = "ad086c4e561c373dde4ad52bf498a4fd9a2d354bc604105bf8de8e50f032a876";
              sha256_unsigned = "ad086c4e561c373dde4ad52bf498a4fd9a2d354bc604105bf8de8e50f032a876";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n750-squashfs-sysupgrade.bin";
              sha256 = "01e17380f4dcb3b7d361ee897fe0767957d27eab32725d8d807c7d76c917f47f";
              sha256_unsigned = "a2c35b9d3ae3f043bc3577f58d3371a4ce3071407dd0d691497d458c49c47e6e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-wd_mynet-n750-initramfs-kernel.bin";
              sha256 = "f6ba333d6a1a5c24278ad3bff41b266e315efd1e6cd6ffafe24aa889c9dedefd";
              sha256_unsigned = "f6ba333d6a1a5c24278ad3bff41b266e315efd1e6cd6ffafe24aa889c9dedefd";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wd,mynet-n750"
            "mynet-n750"
          ];
          titles = [
            {
              model = "My Net N750";
              vendor = "Western Digital";
            }
          ];
        };
        winchannel_wb2000 = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-rtc-ds1307"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-winchannel_wb2000";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-winchannel_wb2000-initramfs-kernel.bin";
              sha256 = "efbeca30622d3e18e5bb58f646ad82ecb2efca0e6794bbeeea437501be136127";
              sha256_unsigned = "efbeca30622d3e18e5bb58f646ad82ecb2efca0e6794bbeeea437501be136127";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-winchannel_wb2000-squashfs-sysupgrade.bin";
              sha256 = "9c60f6017712fed641b1d3f6da27333f598f554a58100069ac093471c0bff983";
              sha256_unsigned = "8eff9f7e4f55f8d11ec2328f89119f6c9254160960d4c69b304c836d157f97a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "winchannel,wb2000"
          ];
          titles = [
            {
              model = "WB2000";
              vendor = "Winchannel";
            }
          ];
        };
        xiaomi_aiot-ac2350 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-xiaomi_aiot-ac2350";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-xiaomi_aiot-ac2350-squashfs-sysupgrade.bin";
              sha256 = "2afcab2c7bfb062b62489fb466ebbaa21507c331b962c6a4edfca81a3f7d66d5";
              sha256_unsigned = "659f8b95afc34d81c4c51bb9d53041517510387c0d5932fca56649b2b4e7f19b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-xiaomi_aiot-ac2350-initramfs-kernel.bin";
              sha256 = "1c6a068fbf0478b7ea9afceb664ad0c9a12fa5964d870820053fcc8561884257";
              sha256_unsigned = "1c6a068fbf0478b7ea9afceb664ad0c9a12fa5964d870820053fcc8561884257";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,aiot-ac2350"
          ];
          titles = [
            {
              model = "AIoT AC2350";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_mi-router-4q = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-xiaomi_mi-router-4q";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-xiaomi_mi-router-4q-initramfs-kernel.bin";
              sha256 = "c778cf329cbc58e65a1de89bef9f5acab078702372d26988617755a1933fc00f";
              sha256_unsigned = "c778cf329cbc58e65a1de89bef9f5acab078702372d26988617755a1933fc00f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-xiaomi_mi-router-4q-squashfs-sysupgrade.bin";
              sha256 = "b72327ba96a10db6191952caf6810c4259f216a288dd3dab03962fd6f912bcb9";
              sha256_unsigned = "a144e81237b8a5c7b65d880e87e66f7012e6bdc32575e0ed9d2eeda87854b365";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-4q"
          ];
          titles = [
            {
              model = "Mi Router 4Q";
              vendor = "Xiaomi";
            }
          ];
        };
        yuncore_a770 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-yuncore_a770";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a770-squashfs-tftp.bin";
              sha256 = "d6898e4102d1dbff79651d2a27da9903463bb24dd760a8ebcc49493b104f27b5";
              sha256_unsigned = "93e86008aa527aa1869afac60cca410a775936ddcd68e1c4904de4e84ec0a8fc";
              type = "tftp";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a770-squashfs-sysupgrade.bin";
              sha256 = "add8ea08140fc27a7232db941612924bc70b8384eb9dea9378c9b1cba99a5c24";
              sha256_unsigned = "93e86008aa527aa1869afac60cca410a775936ddcd68e1c4904de4e84ec0a8fc";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a770-initramfs-kernel.bin";
              sha256 = "2bf65d46243e0bdac4d826e87b4511ca8c6181cd6f385639e67935e323774893";
              sha256_unsigned = "2bf65d46243e0bdac4d826e87b4511ca8c6181cd6f385639e67935e323774893";
              type = "kernel";
            }
          ];
          supported_devices = [
            "yuncore,a770"
          ];
          titles = [
            {
              model = "A770";
              vendor = "YunCore";
            }
          ];
        };
        yuncore_a782 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-yuncore_a782";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a782-initramfs-kernel.bin";
              sha256 = "d8ccd551472886f86fb4df69d2f20e9051de9f1b2b3ffad480adc85ff89ef442";
              sha256_unsigned = "d8ccd551472886f86fb4df69d2f20e9051de9f1b2b3ffad480adc85ff89ef442";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a782-squashfs-tftp.bin";
              sha256 = "62756c9e6cd80157e2685b4aea95c4d0fa25ad1a72120facecc99f576b606a10";
              sha256_unsigned = "29a3892cfb27735526ecb1e13a8805714b0a05d0931398bfa409b475a6efb6e8";
              type = "tftp";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a782-squashfs-sysupgrade.bin";
              sha256 = "31d42197000437cf50bf22480abfacad41d40a8dfa919c713f24ca283c107aa0";
              sha256_unsigned = "29a3892cfb27735526ecb1e13a8805714b0a05d0931398bfa409b475a6efb6e8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "yuncore,a782"
          ];
          titles = [
            {
              model = "A782";
              vendor = "YunCore";
            }
          ];
        };
        yuncore_a930 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-yuncore_a930";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a930-initramfs-kernel.bin";
              sha256 = "023a41597304548682294554ac7e1f91a2c97eecd4150d4413a2494fbe436ddc";
              sha256_unsigned = "023a41597304548682294554ac7e1f91a2c97eecd4150d4413a2494fbe436ddc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a930-squashfs-sysupgrade.bin";
              sha256 = "a4fba626d42e8a98e220ef407df157e27248aa791c459850851c4f8ee7b45351";
              sha256_unsigned = "d58774ff8908bc5d4ba88994a3a9ae6600f0e85582b9feb4d9b84ead487b700c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_a930-squashfs-tftp.bin";
              sha256 = "d37fbf39dd3836f5c1f76e387ee38f585019c4d771d142a97f059129a17ce86c";
              sha256_unsigned = "d58774ff8908bc5d4ba88994a3a9ae6600f0e85582b9feb4d9b84ead487b700c";
              type = "tftp";
            }
          ];
          supported_devices = [
            "yuncore,a930"
          ];
          titles = [
            {
              model = "A930";
              vendor = "YunCore";
            }
          ];
        };
        yuncore_xd3200 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-yuncore_xd3200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd3200-initramfs-kernel.bin";
              sha256 = "f390bf58332d859d6c6774602549ac46d197406cca2a91a09f3c2dd8bb9d4b1b";
              sha256_unsigned = "f390bf58332d859d6c6774602549ac46d197406cca2a91a09f3c2dd8bb9d4b1b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd3200-squashfs-sysupgrade.bin";
              sha256 = "3b1264075d6bf67aa9f6e59f2cec2f8fd0916c6797747b86edc34100b857f547";
              sha256_unsigned = "f5c55a5240ded8294be4af37ba93c5ac4367e3804bc553519e48143aa5be9ab3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd3200-squashfs-tftp.bin";
              sha256 = "1dacf517859317ae642b4f2cd01771fc3b3dbed7b28658c5e7a2578bbf1b4fdd";
              sha256_unsigned = "f5c55a5240ded8294be4af37ba93c5ac4367e3804bc553519e48143aa5be9ab3";
              type = "tftp";
            }
          ];
          supported_devices = [
            "yuncore,xd3200"
          ];
          titles = [
            {
              model = "XD3200";
              vendor = "YunCore";
            }
          ];
        };
        yuncore_xd4200 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-yuncore_xd4200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd4200-initramfs-kernel.bin";
              sha256 = "25a70d4fbd5fe5cc0dc20975738c15aa9468aa90b221ea86828b998a72256005";
              sha256_unsigned = "25a70d4fbd5fe5cc0dc20975738c15aa9468aa90b221ea86828b998a72256005";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd4200-squashfs-sysupgrade.bin";
              sha256 = "e043ce228ce1475821dc0da35cdaeedc49ba2780c369b2373af1fdc69f3d085c";
              sha256_unsigned = "18dbcc91291e96ac94dc77b63d0f6425498f2e294a24dd9503194e14d4408df4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-yuncore_xd4200-squashfs-tftp.bin";
              sha256 = "7a423bcd4a5a8ddc728c7710a2f31dcee3c4084e9c0fb076e08687e9945e7bdc";
              sha256_unsigned = "18dbcc91291e96ac94dc77b63d0f6425498f2e294a24dd9503194e14d4408df4";
              type = "tftp";
            }
          ];
          supported_devices = [
            "yuncore,xd4200"
          ];
          titles = [
            {
              model = "XD4200";
              vendor = "YunCore";
            }
          ];
        };
        zbtlink_zbt-wd323 = {
          device_packages = [
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-rtc-pcf8563"
            "kmod-usb-serial-cp210x"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zbtlink_zbt-wd323";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zbtlink_zbt-wd323-initramfs-kernel.bin";
              sha256 = "6c491435a6fcc0d8226aafdb4f5a0e04b8b174d28ab8092fed3a98a456820667";
              sha256_unsigned = "6c491435a6fcc0d8226aafdb4f5a0e04b8b174d28ab8092fed3a98a456820667";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zbtlink_zbt-wd323-squashfs-sysupgrade.bin";
              sha256 = "d551601f162e2abf7cc649494c0d08c5fa91667f23197b7d4bc44753f75c8d7b";
              sha256_unsigned = "4094e90423d95bb13d4f1e038c13b5936882d04b8242d41970dc4ae59a5c0b9b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zbtlink,zbt-wd323"
          ];
          titles = [
            {
              model = "WD323";
              vendor = "ZBT";
            }
          ];
        };
        zte_e8820 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zte_e8820";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zte_e8820-initramfs-kernel.bin";
              sha256 = "454fb8208534d0febc7ab8f8827acf5b33b0bb68d1e89ccd04ac182d4146128f";
              sha256_unsigned = "454fb8208534d0febc7ab8f8827acf5b33b0bb68d1e89ccd04ac182d4146128f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zte_e8820-squashfs-sysupgrade.bin";
              sha256 = "812d7034ae9d94878cc8fda96d6c36fe3fd22b8c73bcf3c4b7b2fdae83bdf4b8";
              sha256_unsigned = "b8d0e837d2aadf5da87ecb5de374edd93c3794e6ddc120c26884946764b2dad3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,e8820"
          ];
          titles = [
            {
              model = "E8820";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_nbg6616 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-rtc-pcf8563"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zyxel_nbg6616";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nbg6616-squashfs-factory.bin";
              sha256 = "4ec636ec396e4920986a590df68b7d824c6f6db74485d08fb1b001a0480c8c92";
              sha256_unsigned = "4ec636ec396e4920986a590df68b7d824c6f6db74485d08fb1b001a0480c8c92";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nbg6616-initramfs-kernel.bin";
              sha256 = "f69a971640a57012f445d97a7b6878bf443e6473bf58da6a37530adf241abdad";
              sha256_unsigned = "f69a971640a57012f445d97a7b6878bf443e6473bf58da6a37530adf241abdad";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nbg6616-squashfs-sysupgrade.bin";
              sha256 = "674fd61edd3183a88a5d9efd1d92fbc5b89e9a3cf8d5b626f03ffb51ec558ee4";
              sha256_unsigned = "fb79cbd49b068d021ba94012f095a7b3d86fc8d2efdff99a8ac4958419da2a9a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nbg6616"
            "nbg6616"
          ];
          titles = [
            {
              model = "NBG6616";
              vendor = "ZyXEL";
            }
          ];
        };
        zyxel_nwa1100-nh = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1100-nh";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1100-nh-squashfs-sysupgrade.bin";
              sha256 = "4a56a49c58b5795e13a34a5a64b875efff2f27ca0e3952903066e8bcc66b8f30";
              sha256_unsigned = "7039a214c03f22abcb58c426275313e867a0dc4ba9e2b47616e4cbd5f41ce870";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1100-nh-initramfs-kernel.bin";
              sha256 = "cc3127d2232c0a666209e1191b48af612e1cc57d2c91d11f471c10a60f602dd2";
              sha256_unsigned = "cc3127d2232c0a666209e1191b48af612e1cc57d2c91d11f471c10a60f602dd2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,nwa1100-nh"
          ];
          titles = [
            {
              model = "NWA1100";
              variant = "NH";
              vendor = "ZyXEL";
            }
          ];
        };
        zyxel_nwa1121-ni = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1121-ni";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1121-ni-initramfs-kernel.bin";
              sha256 = "d0922ac59825725a7b9b2a3850761971beaeff768553e7c0a62147389a7f83a1";
              sha256_unsigned = "d0922ac59825725a7b9b2a3850761971beaeff768553e7c0a62147389a7f83a1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1121-ni-squashfs-sysupgrade.bin";
              sha256 = "be01feac8072a97e931fc7e1e7672ad35475e69d7486d6330827122e86ad8462";
              sha256_unsigned = "bdfa61e2dfaf6358071fc55dda5dc286594a1ba3bdfd39d1f5d156f97a7a15b6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nwa1121-ni"
          ];
          titles = [
            {
              model = "NWA1121";
              variant = "NI";
              vendor = "ZyXEL";
            }
          ];
        };
        zyxel_nwa1123-ni = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1123-ni";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1123-ni-squashfs-factory-AAEO.bin";
              sha256 = "f6f755678c7c58abf2bde2002640d13b3c82c92587eddecd6505803618b4f415";
              sha256_unsigned = "f6f755678c7c58abf2bde2002640d13b3c82c92587eddecd6505803618b4f415";
              type = "factory-AAEO";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1123-ni-initramfs-kernel.bin";
              sha256 = "aaa606f0241b7a71deb7767556a5afdbbcd15b87fe1ecc17dd96d3d6077545c4";
              sha256_unsigned = "aaa606f0241b7a71deb7767556a5afdbbcd15b87fe1ecc17dd96d3d6077545c4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-generic-zyxel_nwa1123-ni-squashfs-sysupgrade.bin";
              sha256 = "dea561f0700b0670a367156954f25f5dc1af89291d10e940d1c85305b57387c3";
              sha256_unsigned = "e782ee7c39ca48ecfc26f75b2f44cfeabf4d853a9f60c10c0d7cf5e1c77b88c7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nwa1123-ni"
          ];
          titles = [
            {
              model = "NWA1123";
              variant = "NI";
              vendor = "ZyXEL";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "ath79/generic";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    mikrotik = {
      arch_packages = "mips_24kc";
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
        "wpad-openssl"
        "yafut"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "5c04695e625e4ac0fbd58586e0bd7436";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_routerboard-493g = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-493g";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-493g-initramfs-kernel.bin";
              sha256 = "3ff56c4432ed9dd8770800e53e507c58030c3e7e9ef26817bebac28fcc35dda8";
              sha256_unsigned = "3ff56c4432ed9dd8770800e53e507c58030c3e7e9ef26817bebac28fcc35dda8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-493g-squashfs-sysupgrade.bin";
              sha256 = "78dfab0a9410fd21de31af7e13edbe5d667b5dd04f6b30eb912e3a12852867fe";
              sha256_unsigned = "cf8d7a1b0841c337de0989ac8aa4e37a533bac9026aa463b3b0f33514878ef31";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-493g"
            "rb-493g"
          ];
          titles = [
            {
              model = "RouterBOARD 493G";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-750-r2 = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-750-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-750-r2-squashfs-sysupgrade.bin";
              sha256 = "3bc442a8a9204fda17714d806a8c349b025cf5dc58e15b198b9415ccbdbb6153";
              sha256_unsigned = "7f4ad72d1e297e45e74f5253f76bade9274bc51918d265d8cf3f677d1965b962";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-750-r2-initramfs-kernel.bin";
              sha256 = "316e5d130642fafb641f0c72db3778b742c3bb82c485e62b446a0f40f338a382";
              sha256_unsigned = "316e5d130642fafb641f0c72db3778b742c3bb82c485e62b446a0f40f338a382";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-750-r2"
            "rb-750-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 750 r2 (hEX lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911-lite = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-911-lite";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-911-lite-squashfs-sysupgrade.bin";
              sha256 = "81a11cd1c18db705235f3af5594d1718d9e5eafdfb9f84a72e3f4708c57f42ff";
              sha256_unsigned = "86ee6a987aa4925e7ecf04d93f924ba873a5ea661388eeee44bcc94b3c08ef35";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-911-lite-initramfs-kernel.bin";
              sha256 = "be921f8996fae6678a485b7602cef93a4b601444a942369e6d725848cc04c1f9";
              sha256_unsigned = "be921f8996fae6678a485b7602cef93a4b601444a942369e6d725848cc04c1f9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911-lite"
            "rb-911-2hn"
            "rb-911-5hn"
          ];
          titles = [
            {
              model = "RouterBOARD 911 Lite2/Lite5 (2Hn/5Hn)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-912uag-2hpnd = {
          device_packages = [
            "kmod-usb-ehci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-initramfs-kernel.bin";
              sha256 = "d6de1cae610f3b6749ac5c6071c8c26e409c84b19d8faee88915d792ee4582dd";
              sha256_unsigned = "d6de1cae610f3b6749ac5c6071c8c26e409c84b19d8faee88915d792ee4582dd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-squashfs-sysupgrade.bin";
              sha256 = "570f279c1b621ed8fa4899ba07519510d96e5497ea723cba1e061356f5bc4726";
              sha256_unsigned = "3d6322090cc26a898e2c24f346cc1d12b67d09d91acf33aa2a3b444e478e4d94";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-912uag-2hpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 912UAG-2HPnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-921gs-5hpacd-15s = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-initramfs-kernel.bin";
              sha256 = "bc08b259a1690ed4e80cbb9ca618a11e8a418c14e94b160dbc5ac7a9ebe65902";
              sha256_unsigned = "bc08b259a1690ed4e80cbb9ca618a11e8a418c14e94b160dbc5ac7a9ebe65902";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-squashfs-sysupgrade.bin";
              sha256 = "12c278d3af43bbfde8fcf1eab3d49b2dd854435901f2e53d3806e1e4a6277e39";
              sha256_unsigned = "89a87693583c99cf8f60570d252745ffb4d37be55d068bb946c34f2c08a794a9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-921gs-5hpacd-15s"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 921GS-5HPacD-15s (mANTBox 15s)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-922uags-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "72fbb9ab58682e562405726cb94c1c2166c9748871c598b156ed378cf48e167c";
              sha256_unsigned = "c5a0fc7f8d91ee6be19894a4e1208793e50421d5d86623279557fe939ef6e4e7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-initramfs-kernel.bin";
              sha256 = "3838a366f8aa3d2c8900af596a0261310e4d07bfe68a114be96d4b351679f289";
              sha256_unsigned = "3838a366f8aa3d2c8900af596a0261310e4d07bfe68a114be96d4b351679f289";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-922uags-5hpacd"
            "rb-922uags-5hpacd"
          ];
          titles = [
            {
              model = "RouterBOARD 922UAGS-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951g-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951g-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-squashfs-sysupgrade.bin";
              sha256 = "ccb885db87de7e2557cefe9aa70e9e3e5b969a67cf589334158a58d0fa991472";
              sha256_unsigned = "9f21d095494e45265cf28e02ca1e2a7621bf153da4fee6963cbf8bc3edc76022";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-initramfs-kernel.bin";
              sha256 = "b91fb1f82f25d9c7eea187b89bb905bdf760f94fc73a348ba21b694200b2d4fc";
              sha256_unsigned = "b91fb1f82f25d9c7eea187b89bb905bdf760f94fc73a348ba21b694200b2d4fc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951g-2hnd"
            "rb-951g-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951G-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-squashfs-sysupgrade.bin";
              sha256 = "71edc16451fbe73fdf56d27ffb606fa1ac16f8ddf4d5d4130936d153f17fa39c";
              sha256_unsigned = "aad9c6ea97a325e16664ed7216f2b079ebefbaea9c9e90b22505c5ae4e8374ee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-initramfs-kernel.bin";
              sha256 = "d6239e982359052499526e09ccfe670121ac256064a06a47c80f7321df24fdaf";
              sha256_unsigned = "d6239e982359052499526e09ccfe670121ac256064a06a47c80f7321df24fdaf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2hnd"
            "rb-951ui-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-squashfs-sysupgrade.bin";
              sha256 = "60d8e025b2d279c8a58e862cce03488a44322afec75071ab745d015c38eb8da7";
              sha256_unsigned = "73b943dc68fcd678ba5c372526ed18e6f1691ba7dc45f16b0a00cac186953309";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-initramfs-kernel.bin";
              sha256 = "81e9807b7483a0059cc8d8d4caa0a7af7fc25cb055d4e003c97f86dd78629a80";
              sha256_unsigned = "81e9807b7483a0059cc8d8d4caa0a7af7fc25cb055d4e003c97f86dd78629a80";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2nd"
            "rb-951ui-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2nD (hAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-952ui-5ac2nd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-initramfs-kernel.bin";
              sha256 = "619b15e46390f8e54ff91617e7b28ce09addeb9300ed46b2f6a0dc0b05d70002";
              sha256_unsigned = "619b15e46390f8e54ff91617e7b28ce09addeb9300ed46b2f6a0dc0b05d70002";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-squashfs-sysupgrade.bin";
              sha256 = "f5e021cd0b18f33ed3015b0dad66fd528029e06693c9c501d8bd5ec10aff06ac";
              sha256_unsigned = "5a967659bd585341ae2c55fe294b4064256cb9f6d58ee0a5239f0310086ddd98";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-952ui-5ac2nd"
            "rb-952ui-5ac2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 952Ui-5ac2nD (hAP ac lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-962uigs-5hact2hnt = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-squashfs-sysupgrade.bin";
              sha256 = "85bb31982e42c63cf2bf6f5a6144004428d7b5741542fb8619eb2b9a42a0c0cf";
              sha256_unsigned = "07146d5a27f3d92f5abefa05de1811905f0773373258b4dcacce1540fda6398c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-initramfs-kernel.bin";
              sha256 = "ad3ec6a3a9b9b2f2b06e577aecf3bc601ab400a5802de7e835a258914163d4f5";
              sha256_unsigned = "ad3ec6a3a9b9b2f2b06e577aecf3bc601ab400a5802de7e835a258914163d4f5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-962uigs-5hact2hnt"
            "rb-962uigs-5hact2hnt"
          ];
          titles = [
            {
              model = "RouterBOARD 962UiGS-5HacT2HnT (hAP ac)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-initramfs-kernel.bin";
              sha256 = "ba52c3cba1c67581da4d8c093eb1d55a0f83888cb4fac515e289e1a2316fe55b";
              sha256_unsigned = "ba52c3cba1c67581da4d8c093eb1d55a0f83888cb4fac515e289e1a2316fe55b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-squashfs-sysupgrade.bin";
              sha256 = "4c0f9d718602202f0e1601d626c02b41e2df4195042706d9df57907229cf84fa";
              sha256_unsigned = "1dbb12816b4298732c687d7a6f436519656e5e2998f85279f9c5c16976e27c11";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 2nD (LHG 2)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-5nd = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-5nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-squashfs-sysupgrade.bin";
              sha256 = "2d39438d64276f9e59a827d2cbea0680cf3a9123e38686707c8d5fefe6e5f397";
              sha256_unsigned = "7422bb7aace01fb0c490536e9e349908dd44d5790aa6e78cf7262860ce006cbd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-initramfs-kernel.bin";
              sha256 = "5b5294c2a3507c1000e854b81eee075031b3adc5ca28f94995cb5036021e90ab";
              sha256_unsigned = "5b5294c2a3507c1000e854b81eee075031b3adc5ca28f94995cb5036021e90ab";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-5nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 5nD (LHG 5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-map-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-map-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-map-2nd-initramfs-kernel.bin";
              sha256 = "c4f8748d443af9ceff99c060e69de1d919014f3f14b2a44ddcc5646d918d2fb4";
              sha256_unsigned = "c4f8748d443af9ceff99c060e69de1d919014f3f14b2a44ddcc5646d918d2fb4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-map-2nd-squashfs-sysupgrade.bin";
              sha256 = "51956a0dbf6fee7147042bb853be88ec22ae5ad6e7afab809c9492da5d8f377e";
              sha256_unsigned = "0bff6c53d3e7198c25f589d983d9fc7b0420acc3a399375f3b9cbf60a898c1a5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-map-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAP-2nD (mAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-mapl-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-mapl-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-initramfs-kernel.bin";
              sha256 = "7956c41a5af0ee301253029bbf6e6ed921dd987398ac4faaefcf59050aa02032";
              sha256_unsigned = "7956c41a5af0ee301253029bbf6e6ed921dd987398ac4faaefcf59050aa02032";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-squashfs-sysupgrade.bin";
              sha256 = "5497687c8a5940ccc8b31351b8316ba97986f81456c981c27f3bf962d41c40fb";
              sha256_unsigned = "d5e471f3780b3ed5d59daefee2c8c551d56c38cc0c19246e62c8a905102b7e77";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-mapl-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAPL-2nD (mAP lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-sxt-5nd-r2 = {
          device_packages = [
            "rssileds"
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-squashfs-sysupgrade.bin";
              sha256 = "64c8277877752c6ea192355c0770c490ff0f0e319563820f4131f81ab3f9da25";
              sha256_unsigned = "8cb8c28b8492a27a3cb1b7d9577c95c6ac91a1cf715f73f47148bba106fa2fc8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-initramfs-kernel.bin";
              sha256 = "53938d393b35132af781f8039766a5a2f0841302d4984ea406412b11b2e52029";
              sha256_unsigned = "53938d393b35132af781f8039766a5a2f0841302d4984ea406412b11b2e52029";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-sxt-5nd-r2"
            "rb-sxt5n"
          ];
          titles = [
            {
              model = "RouterBOARD SXT 5nD r2 (SXT Lite5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-2nd-squashfs-sysupgrade.bin";
              sha256 = "cd1a42650a60a1d2717c789216699482005c9da7225c6bb99e51e10fe388489a";
              sha256_unsigned = "564b084a05fc4354c51f931d92ecb953cb521807f96e6ed42c3feffc25c9e96f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-2nd-initramfs-kernel.bin";
              sha256 = "bdce47d36c8fbcf2851666b0dd81e07a4308831bb51c2c835719d92f80f0488d";
              sha256_unsigned = "bdce47d36c8fbcf2851666b0dd81e07a4308831bb51c2c835719d92f80f0488d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP-2nD (wAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-g-5hact2hnd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-squashfs-sysupgrade.bin";
              sha256 = "944a73bd80dd90650136e7af07715ef738b04c278f1325d1ade3fa94b31637b8";
              sha256_unsigned = "6847d638b4e92ab8dfcc0deee8e3e8a2fb7afa0f86cda26c27ad4a40d2b2f1ba";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-initramfs-kernel.bin";
              sha256 = "8fe92ad51107ac1111c09b8391d2fa06cfe9b366b0072402ca209822afd41a59";
              sha256_unsigned = "8fe92ad51107ac1111c09b8391d2fa06cfe9b366b0072402ca209822afd41a59";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-g-5hact2hnd"
            "rb-wapg-5hact2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP G-5HacT2HnD (wAP AC)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wapr-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wapr-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-initramfs-kernel.bin";
              sha256 = "a1d03a8f787ddda47b6a22529800e068dda3562384da127e8cfa81275a4e9577";
              sha256_unsigned = "a1d03a8f787ddda47b6a22529800e068dda3562384da127e8cfa81275a4e9577";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-squashfs-sysupgrade.bin";
              sha256 = "4dadd8e2c4ffba65a127a2ad0626b7fe88dbf22c873e62a017192721136d3430";
              sha256_unsigned = "5c261db32d7050569ce44f8170c0ca5b6b85c4ee0cf78105b851b6f5b8d6713c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wapr-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAPR-2nD (wAP R)";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "ath79/mikrotik";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    nand = {
      arch_packages = "mips_24kc";
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "eaa1fe71a52689db5e47a9919ef32882";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        "8dev_rambutan" = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-8dev_rambutan";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-8dev_rambutan-squashfs-sysupgrade.tar";
              sha256 = "fb4bbbc6d90ba0720148ee5a03d130d558a41cbbbb3a14944fd44ff60d6051fb";
              sha256_unsigned = "9cf9d7db92629656800dad682306d63f8590f84c1165c862f6acfe71faa3aada";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-8dev_rambutan-squashfs-factory.bin";
              sha256 = "e89785e49a2ec1eeb64652da43472b673988966cec0dfe170be979a9712aac2e";
              sha256_unsigned = "e89785e49a2ec1eeb64652da43472b673988966cec0dfe170be979a9712aac2e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-8dev_rambutan-initramfs-kernel.bin";
              sha256 = "72b865da0dbe48ee93d4d78f5175bd9cd51c8bea3a8120aa6ab78627a2ef0d60";
              sha256_unsigned = "72b865da0dbe48ee93d4d78f5175bd9cd51c8bea3a8120aa6ab78627a2ef0d60";
              type = "kernel";
            }
          ];
          supported_devices = [
            "8dev,rambutan"
          ];
          titles = [
            {
              model = "Rambutan";
              vendor = "8devices";
            }
          ];
        };
        aerohive_hiveap-121 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-aerohive_hiveap-121";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-aerohive_hiveap-121-squashfs-sysupgrade.bin";
              sha256 = "bce4e669f147e0988e74e4ebac77608373219af702bcd42d776479e956ed0e34";
              sha256_unsigned = "c3e8097cc49c71eab9c804bc27d256165911ea6956f655ab2e544f6d1ebeed53";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-aerohive_hiveap-121-initramfs-kernel.bin";
              sha256 = "7d70e1e9c89495362d74c437c1db994d8e66fe4fb9d9ac11f49369a014070b3a";
              sha256_unsigned = "7d70e1e9c89495362d74c437c1db994d8e66fe4fb9d9ac11f49369a014070b3a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-aerohive_hiveap-121-squashfs-factory.bin";
              sha256 = "c5f17a9f30aec0f2729a77a9acfadc5f056407e766a3d27b4cf7ad1f3ce741ec";
              sha256_unsigned = "c5f17a9f30aec0f2729a77a9acfadc5f056407e766a3d27b4cf7ad1f3ce741ec";
              type = "factory";
            }
          ];
          supported_devices = [
            "aerohive,hiveap-121"
            "hiveap-121"
          ];
          titles = [
            {
              model = "HiveAP 121";
              vendor = "Aerohive";
            }
          ];
        };
        domywifi_dw33d = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-storage"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-domywifi_dw33d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-domywifi_dw33d-squashfs-sysupgrade.bin";
              sha256 = "d387905969a60fe4b74caaa7ae24b18b88ea28d8ae97e5be4d9054395ef9709e";
              sha256_unsigned = "1aad19f40a55bc4c362e5dd75420f1c6dd1a0a85172dcb339b6782b39c0c85db";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-domywifi_dw33d-initramfs-kernel.bin";
              sha256 = "faaf65504fbc95eaf845ee5e1aa0f0d27da02adc482cde971a51966a3fcc2a48";
              sha256_unsigned = "faaf65504fbc95eaf845ee5e1aa0f0d27da02adc482cde971a51966a3fcc2a48";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-domywifi_dw33d-squashfs-factory.bin";
              sha256 = "d0426596aec8c0c586011f9575d2ab3e1cb4cafdc28f0b02ea772816406badc1";
              sha256_unsigned = "d0426596aec8c0c586011f9575d2ab3e1cb4cafdc28f0b02ea772816406badc1";
              type = "factory";
            }
          ];
          supported_devices = [
            "domywifi,dw33d"
          ];
          titles = [
            {
              model = "DW33D";
              vendor = "DomyWifi";
            }
          ];
        };
        dongwon_dw02-412h-128m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-128m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-128m-squashfs-sysupgrade.bin";
              sha256 = "994af56ea4885ec7e4c0b438679493355885cd72ed00284a697e8b6becdde707";
              sha256_unsigned = "d041ba50dd5a0b1cc01bef669bcfe3f5c60c8d47538245211f73ebb1dc5c95b7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-128m-initramfs-kernel.bin";
              sha256 = "9e98e679cf0ae79246a2f9a8e8b206f84e3aa48bab510fe5b1f9ffa39437bb12";
              sha256_unsigned = "9e98e679cf0ae79246a2f9a8e8b206f84e3aa48bab510fe5b1f9ffa39437bb12";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-128m-squashfs-factory.img";
              sha256 = "383ce29d058c4d94731ad1d2d1e715018dc760f49c735c208c68f1d34d70e72d";
              sha256_unsigned = "383ce29d058c4d94731ad1d2d1e715018dc760f49c735c208c68f1d34d70e72d";
              type = "factory";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-128m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(128M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(128M)";
              vendor = "KT";
            }
          ];
        };
        dongwon_dw02-412h-64m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-64m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-64m-squashfs-factory.img";
              sha256 = "8a86e3decb65fd1d0bce4b12d546da571e601ce8b52a3d300b1d2c1427294341";
              sha256_unsigned = "8a86e3decb65fd1d0bce4b12d546da571e601ce8b52a3d300b1d2c1427294341";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-64m-squashfs-sysupgrade.bin";
              sha256 = "e0a6148c6c16e84caca15e85d33aab9749b669e8a818cbd6058ad3befb5a5c10";
              sha256_unsigned = "16f384e80a3cbf3b83fc1120326aac5f8ab59e694a4d2e8f8e490bd3e6135f69";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-dongwon_dw02-412h-64m-initramfs-kernel.bin";
              sha256 = "a91eaba9675661bbc29a82e208272ec0e86f00c0ecec342b7962cf64e0655ff7";
              sha256_unsigned = "a91eaba9675661bbc29a82e208272ec0e86f00c0ecec342b7962cf64e0655ff7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-64m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(64M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(64M)";
              vendor = "KT";
            }
          ];
        };
        glinet_gl-ar300m-nand = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nand-squashfs-sysupgrade.bin";
              sha256 = "29dacb6e75e5fbb68aa07b0dea561310cfb60b4a4610566ab9338ce58aa2f254";
              sha256_unsigned = "7e7e4e43ae48b883abe1956a4e479bdb200f8703bc5563c4da595f197027792f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nand-initramfs-kernel.bin";
              sha256 = "e5d55242eb16ddd192383cad8ed6f3c6f0287e7d5e30d9e2e947afed09fc2968";
              sha256_unsigned = "e5d55242eb16ddd192383cad8ed6f3c6f0287e7d5e30d9e2e947afed09fc2968";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nand-squashfs-factory.img";
              sha256 = "77a07febe4d64878d51f9b352634b832c796c7d36536ffda0c9212f692167fa5";
              sha256_unsigned = "77a07febe4d64878d51f9b352634b832c796c7d36536ffda0c9212f692167fa5";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nand"
            "glinet,gl-ar300m-nor"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar300m-nor = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nor-initramfs-kernel.bin";
              sha256 = "eeabc1a79f759aceae392f00333c15ab2c66d5fcf3c0449a33c18b9bdf025946";
              sha256_unsigned = "eeabc1a79f759aceae392f00333c15ab2c66d5fcf3c0449a33c18b9bdf025946";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar300m-nor-squashfs-sysupgrade.bin";
              sha256 = "67f9c001e21ef82ce1e68b47d1dc26eb135094fe6459105ea3965e8285864738";
              sha256_unsigned = "646a41fc61681b3ca80e3c3dcdd6d98c21927ff3b59ae3d8f0f0612f53b61ee0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nor"
            "glinet,gl-ar300m-nand"
            "gl-ar300m"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor-initramfs-kernel.bin";
              sha256 = "87a843d138679f8b38cc4200ced8654c8ac561dbd585e05e7f374ac1e24e8648";
              sha256_unsigned = "87a843d138679f8b38cc4200ced8654c8ac561dbd585e05e7f374ac1e24e8648";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor-squashfs-sysupgrade.bin";
              sha256 = "dc530c0a28e61f85f4ef483988e11fcc5ed03bb053720de3377ac88126c814c7";
              sha256_unsigned = "b1f466c00083f428e83ca2030f7ad0f9e602b4517eaab1b9bfd37b0f02d964c2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor"
            "gl-ar750s"
            "glinet,gl-ar750s"
            "glinet,gl-ar750s-nor-nand"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor-nand";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor-nand-initramfs-kernel.bin";
              sha256 = "aba8147d33bc86bdc9d01bb2826175992105036e478fe38ada8c3e7613b5be29";
              sha256_unsigned = "aba8147d33bc86bdc9d01bb2826175992105036e478fe38ada8c3e7613b5be29";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-ar750s-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "229dfaeeb6c251ec0c7a7a5a06ebe2ee534bcf3af73301b9d9ac219adb32a5da";
              sha256_unsigned = "44991f6175bde0f40cc264670999b76cfaa0ab63ce65e3babd873c35809ca95c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor-nand"
            "glinet,gl-ar750s-nor"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-e750 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-e750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-e750-squashfs-factory.img";
              sha256 = "2d1b3bd25a9489908e043d3ba5f7acb49cd5a3de2ad8576e17a618dea6ea3fc9";
              sha256_unsigned = "2d1b3bd25a9489908e043d3ba5f7acb49cd5a3de2ad8576e17a618dea6ea3fc9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-e750-initramfs-kernel.bin";
              sha256 = "b1a74f80ff9540aa1782565cb126d3960dda4d5c48c5097d77f809299c0b89a8";
              sha256_unsigned = "b1a74f80ff9540aa1782565cb126d3960dda4d5c48c5097d77f809299c0b89a8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-e750-squashfs-sysupgrade.bin";
              sha256 = "0fea49102deaecb5639ba32d053a4c577d68a62268fe091a58994cda3118168b";
              sha256_unsigned = "a61e2c067cba777daffd53765beed73650ec70db1d1f34099ed54462bbe243f1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-e750"
            "gl-e750"
          ];
          titles = [
            {
              model = "GL-E750";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-squashfs-sysupgrade.bin";
              sha256 = "72c92fdc9ccdfd28bd5679be08dcff389183d6ef0fa57d8073b4b2317aa051c2";
              sha256_unsigned = "5c7c42609a96b3b15f57a337f386f1e63c8f646d2d5cb2c259a8974209e71dcb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-initramfs-kernel.bin";
              sha256 = "42f44fe3bb90569a658b3a4a2d07f629de46d720685ed5e2857c537aa933f875";
              sha256_unsigned = "42f44fe3bb90569a658b3a4a2d07f629de46d720685ed5e2857c537aa933f875";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-factory.img";
              sha256 = "b812c4a8b9c00b3210cc6c902288936a57661d45ec307a556a40c2241dee1d8d";
              sha256_unsigned = "b812c4a8b9c00b3210cc6c902288936a57661d45ec307a556a40c2241dee1d8d";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-nand-initramfs-kernel.bin";
              sha256 = "adc6374b2b593e97137f1e21148cc308d5d92cfa753dca2f344cc56bb447b2f0";
              sha256_unsigned = "adc6374b2b593e97137f1e21148cc308d5d92cfa753dca2f344cc56bb447b2f0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "b10386d9fff0d42dc1268785485b0b7d992f2b02a0c9c0c1da76cd0ca10a7622";
              sha256_unsigned = "5c88baef2dad77bcc43fb9bfb53b5461443c57fe82e0b50ae2e0b84cf5f877bf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor-nand"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-xe300 = {
          device_packages = [
            "kmod-usb2"
            "block-mount"
            "kmod-usb-serial-ch341"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-glinet_gl-xe300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-xe300-squashfs-factory.img";
              sha256 = "0e0bdcfc053ac8edac33adb0147aa3c03928f0fc3972e562b5b312c13de1c13f";
              sha256_unsigned = "0e0bdcfc053ac8edac33adb0147aa3c03928f0fc3972e562b5b312c13de1c13f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-xe300-initramfs-kernel.bin";
              sha256 = "97da8aadba0d61092f00fb154aa761028165a19cb9bb790f7850828bc9a1bf8c";
              sha256_unsigned = "97da8aadba0d61092f00fb154aa761028165a19cb9bb790f7850828bc9a1bf8c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-glinet_gl-xe300-squashfs-sysupgrade.bin";
              sha256 = "7f64c5ccc7206399dfdbf4d12f83cfeb74a12ab2e702c267ffbf233385518f00";
              sha256_unsigned = "2dd132fb8e9c4a1cd9ca9345dbe8849b6acf81c0c56821ffaf2a94982a16dad8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-xe300"
          ];
          titles = [
            {
              model = "GL-XE300";
              vendor = "GL.iNet";
            }
          ];
        };
        linksys_ea4500-v3 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-linksys_ea4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-linksys_ea4500-v3-squashfs-factory.img";
              sha256 = "cf997969513dd54fd510a2abcafc97b2c5463e236eee8d9ad0a00f5097d6067e";
              sha256_unsigned = "cf997969513dd54fd510a2abcafc97b2c5463e236eee8d9ad0a00f5097d6067e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-linksys_ea4500-v3-initramfs-kernel.bin";
              sha256 = "4c76086b131f7934457fc2de71ddf05cccb18fd6c39e5415499f5435616a955c";
              sha256_unsigned = "4c76086b131f7934457fc2de71ddf05cccb18fd6c39e5415499f5435616a955c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-linksys_ea4500-v3-squashfs-sysupgrade.bin";
              sha256 = "69ba4b22f918dc3113406a79026e7d8789e41a73d8988db1c2c16282f413c25a";
              sha256_unsigned = "ba53ab84eece82e79851681c7141f1a8d24c824b111b7356d9d8414be615142c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea4500-v3"
          ];
          titles = [
            {
              model = "EA4500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        meraki_mr18 = {
          device_packages = [
            "kmod-leds-uleds"
            "kmod-spi-gpio"
            "nu801"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-meraki_mr18";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-meraki_mr18-squashfs-sysupgrade.bin";
              sha256 = "c6ffb57375e89b65064e4b243f578c1cca1a04d8b7d0e1b2a6a53fa3bb8fe061";
              sha256_unsigned = "9e141327e3bb22e654b810a44057c022000a35a5dd48d60aea56c1ed07975ebe";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr18"
          ];
          titles = [
            {
              model = "MR18";
              vendor = "Meraki";
            }
          ];
        };
        netgear_pgzng1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-i2c-gpio"
            "kmod-leds-pca955x"
            "kmod-rtc-isl1208"
            "kmod-spi-dev"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_pgzng1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_pgzng1-initramfs-kernel.bin";
              sha256 = "63041ff0eb463c7c97d486dead5b9c74e50d3e84c260d985b285704a486f3bf7";
              sha256_unsigned = "63041ff0eb463c7c97d486dead5b9c74e50d3e84c260d985b285704a486f3bf7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_pgzng1-squashfs-sysupgrade.bin";
              sha256 = "5384afa549426effb48edd31799d2e4f9f3f1de3c01af532435d9deb5e34895e";
              sha256_unsigned = "688e57e4fea493422bccc36c169f838b1c99cdebbbce96ff7f61543080ac8e40";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,pgzng1"
          ];
          titles = [
            {
              model = "PGZNG1";
              vendor = "NETGEAR";
            }
            {
              model = "Pulse Gateway";
              vendor = "ADT";
            }
          ];
        };
        netgear_r6100 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_r6100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_r6100-squashfs-factory.img";
              sha256 = "82572a5e4d8dc1ffefa9a56486ea8244b7b42e6478bb4b32dec81df3ee1614f5";
              sha256_unsigned = "82572a5e4d8dc1ffefa9a56486ea8244b7b42e6478bb4b32dec81df3ee1614f5";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_r6100-initramfs-kernel.bin";
              sha256 = "cfddc67185b68e95605696f7c8933afa6a6de04b5fe358f1c92760371e045be2";
              sha256_unsigned = "cfddc67185b68e95605696f7c8933afa6a6de04b5fe358f1c92760371e045be2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_r6100-squashfs-sysupgrade.bin";
              sha256 = "b2fd78ba1fd14ae6fa88c9f8835facb357fd6fd69909f05a816d6fe612c36102";
              sha256_unsigned = "4164f5f8d252b5b7abc74d507b3ee7ab649547ea44b6daa529eb64620a1d105a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r6100"
          ];
          titles = [
            {
              model = "R6100";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr3700-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr3700-v4-squashfs-sysupgrade.bin";
              sha256 = "91abd3d7c9d393507ff34e33a00633ac2c3f6262ff16afd8ac3e02e5427cb17d";
              sha256_unsigned = "37f431e60001debffacdcece816365550fc5029a7a4145f5916261c189e4160f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr3700-v4-squashfs-factory.img";
              sha256 = "0df69fd1e9c4c659d27e4ff86c301ec454ae1f6a517d97f161002cc01c080997";
              sha256_unsigned = "0df69fd1e9c4c659d27e4ff86c301ec454ae1f6a517d97f161002cc01c080997";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr3700-v4-initramfs-kernel.bin";
              sha256 = "ca9b38eb43265bdb887e6882445c8599d009e88b2e5851f52797d04b630c3320";
              sha256_unsigned = "ca9b38eb43265bdb887e6882445c8599d009e88b2e5851f52797d04b630c3320";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v4"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v4";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-squashfs-sysupgrade.bin";
              sha256 = "160353e3a0e833727f07135e5e9fcde7320a8b2178c2ed9f7182ad9422a82f7e";
              sha256_unsigned = "609c06d35a117849729d04b48db6ca7fd9d87e1a871eb321988e5f0065432efe";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-initramfs-kernel.bin";
              sha256 = "ef056263e5b8e228847fac1e3c90b4878f6153c4ed18ee66eafe991f098eaae9";
              sha256_unsigned = "ef056263e5b8e228847fac1e3c90b4878f6153c4ed18ee66eafe991f098eaae9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-squashfs-factory.img";
              sha256 = "8616e6677af0472877751b8db37d506eff10a53775647c4c9da38340163f8dc9";
              sha256_unsigned = "8616e6677af0472877751b8db37d506eff10a53775647c4c9da38340163f8dc9";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr4300"
          ];
          titles = [
            {
              model = "WNDR4300";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-v2-initramfs-kernel.bin";
              sha256 = "8008ca578fbb7edda6b45ee09578a683d26cd4b86fddea5481fbb5ddd934e1d0";
              sha256_unsigned = "8008ca578fbb7edda6b45ee09578a683d26cd4b86fddea5481fbb5ddd934e1d0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-v2-squashfs-factory.img";
              sha256 = "2d579a49e91cf9283a15848654e456795bfb0ef7a1872451dd1fc0218f757cf8";
              sha256_unsigned = "2d579a49e91cf9283a15848654e456795bfb0ef7a1872451dd1fc0218f757cf8";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300-v2-squashfs-sysupgrade.bin";
              sha256 = "f7945068941773b52e59ff4ff9d9e2f5771a1b98d0062aab0a5fb72feb9080c0";
              sha256_unsigned = "a9bdf91c094de32f367bb9fabf65ca64896da9fb56e88e11c3e93e93096c6010";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4300-v2"
          ];
          titles = [
            {
              model = "WNDR4300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300sw = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300sw";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300sw-squashfs-sysupgrade.bin";
              sha256 = "eed48ebe7a893c8e02b7ce757e22d914e935cf7cf60e8167eff60a79b03e236e";
              sha256_unsigned = "8dec21a00c7c1f5f037ce3a6a1fb0dd015a4c663c6bbf82b44e11e54cd3a2334";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300sw-squashfs-factory.img";
              sha256 = "bc5d29e9510540e5c70934e8afb07d238fa4a9f8f0788f3dc88b3e9763613719";
              sha256_unsigned = "bc5d29e9510540e5c70934e8afb07d238fa4a9f8f0788f3dc88b3e9763613719";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300sw-initramfs-kernel.bin";
              sha256 = "a0723aa5d67bd3fbdfaac0a35900ebe987b18f4f46b721ea39e79a47939dca02";
              sha256_unsigned = "a0723aa5d67bd3fbdfaac0a35900ebe987b18f4f46b721ea39e79a47939dca02";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4300sw"
          ];
          titles = [
            {
              model = "WNDR4300SW";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300tn = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300tn";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300tn-squashfs-factory.img";
              sha256 = "2ddbb9ffbd7f464ba3b9e01ca6eadb6bb00e83ca860cde2da9a53cfd8dd0fbef";
              sha256_unsigned = "2ddbb9ffbd7f464ba3b9e01ca6eadb6bb00e83ca860cde2da9a53cfd8dd0fbef";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300tn-squashfs-sysupgrade.bin";
              sha256 = "acd6a51cd4766e5dcaa0457b4465beecac87878b09320c3ed5792c8fdf763868";
              sha256_unsigned = "db3bbe71f61d4281f2c791272821ca4643ff3ae1934686105c8c511478073024";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4300tn-initramfs-kernel.bin";
              sha256 = "f89ccc794a02fdd7377f6903208b3ee7f06e35c7bed905b255f8a93f07f0a454";
              sha256_unsigned = "f89ccc794a02fdd7377f6903208b3ee7f06e35c7bed905b255f8a93f07f0a454";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4300tn"
          ];
          titles = [
            {
              model = "WNDR4300TN";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4500-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4500-v3-squashfs-factory.img";
              sha256 = "e0c215867b43c73c11a0c2d15d3de2729844849a64879006a9ed3c6c5db2ada7";
              sha256_unsigned = "e0c215867b43c73c11a0c2d15d3de2729844849a64879006a9ed3c6c5db2ada7";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4500-v3-squashfs-sysupgrade.bin";
              sha256 = "0586134c6e589d1d8fdceaca1f0905cd6604807a3ed771c6cb6f5c2df84c7a5e";
              sha256_unsigned = "fd131d7679f30116fefb18d086b3c52aed74bfdca67f06275a3289dd83631e51";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-netgear_wndr4500-v3-initramfs-kernel.bin";
              sha256 = "d5ca793a4a3f653015fcc24aeb4401972c71c2ed5506fcdb141ee859d15ea370";
              sha256_unsigned = "d5ca793a4a3f653015fcc24aeb4401972c71c2ed5506fcdb141ee859d15ea370";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4500-v3"
          ];
          titles = [
            {
              model = "WNDR4500";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        zte_mf281 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zte_mf281";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf281-squashfs-factory.bin";
              sha256 = "28524a70244ed17ed0e48e37d4c148451ffb87d523f175fc3ff141204efd1442";
              sha256_unsigned = "28524a70244ed17ed0e48e37d4c148451ffb87d523f175fc3ff141204efd1442";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf281-initramfs-kernel.bin";
              sha256 = "2502ef998e265c5e805e195c1a1adfe7c8616d815f3588030ccffb5b9d433f82";
              sha256_unsigned = "2502ef998e265c5e805e195c1a1adfe7c8616d815f3588030ccffb5b9d433f82";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf281-squashfs-sysupgrade.bin";
              sha256 = "beda9e6f9270317dcac886e7f03f367cbc96f8d03744d169ea3d5ec66a046d19";
              sha256_unsigned = "9b19988e147b7921c02c67b5bdfa89dc218fdfd7fe3873be80456c6196f50383";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf281"
          ];
          titles = [
            {
              model = "MF281";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf282 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zte_mf282";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf282-squashfs-sysupgrade.bin";
              sha256 = "c68da9f2058b7e9448b21af53f5023175b31603ca56b7a983c238b5878c48277";
              sha256_unsigned = "a303e662cb53f8f78b780214c6fa7e5c90630d370b39540e547c0c200feca10c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf282-initramfs-kernel.bin";
              sha256 = "10c6692bac44de9e55844dffa0d733ae60e289f33e309b4a1e135ac0bf54c5b7";
              sha256_unsigned = "10c6692bac44de9e55844dffa0d733ae60e289f33e309b4a1e135ac0bf54c5b7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf282"
          ];
          titles = [
            {
              model = "MF282";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zte_mf286";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286-squashfs-sysupgrade.bin";
              sha256 = "9b66e0ea76fa39e3c1e247a997b08266a186f747141da6f4e2b3635079a92312";
              sha256_unsigned = "0bd93000a3559cc8644934506611e306c7ca68bf552a0d0e0c7a11ad1dae0174";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286-initramfs-kernel.bin";
              sha256 = "f2ac9bc2cf22eca7e022abd26004e9363f19c187656ca8c4238499fe4c384ea8";
              sha256_unsigned = "f2ac9bc2cf22eca7e022abd26004e9363f19c187656ca8c4238499fe4c384ea8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf286"
          ];
          titles = [
            {
              model = "MF286";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286a = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zte_mf286a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286a-initramfs-kernel.bin";
              sha256 = "491a4087be0debe8c7b425402e275e43f252f0c4fb5dd32099f8cea994904c48";
              sha256_unsigned = "491a4087be0debe8c7b425402e275e43f252f0c4fb5dd32099f8cea994904c48";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286a-squashfs-sysupgrade.bin";
              sha256 = "4bf2778162d26432af286fabb3f817d21e78ab8df9fff0eadb88fa04c1f61301";
              sha256_unsigned = "ad3ff4ae5a6d58d66f981a48007ca884b7b1ebdb3f1d6ce44670f3ab672e951f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286a"
          ];
          titles = [
            {
              model = "MF286A";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286r = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zte_mf286r";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286r-initramfs-kernel.bin";
              sha256 = "8d38b7b4ed12737e7acfb254a1fc2a3bcc6724f07938ab696370125db28182a2";
              sha256_unsigned = "8d38b7b4ed12737e7acfb254a1fc2a3bcc6724f07938ab696370125db28182a2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zte_mf286r-squashfs-sysupgrade.bin";
              sha256 = "3d3219070d2c303376467ea5907db2a66f9e03b92f433753a5bc694e6e81260a";
              sha256_unsigned = "4f2c6be34092f40e70388ac28d7280f05699e11c5482279d79c2e9c9a455ce17";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286r"
          ];
          titles = [
            {
              model = "MF286R";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_emg2926_q10a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zyxel_emg2926_q10a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade.tar";
              sha256 = "83dcbe03243b1de1f4a0f1b06983cfae1e6c81644a1bd184597fb5ee199ba793";
              sha256_unsigned = "0d6bf72500860c4a2f19b97bf8ea3beea3b85e3733aa18b301c40699690eb481";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_emg2926_q10a-initramfs-kernel.bin";
              sha256 = "e8179ca362b9291083f8a2c2b6820e3b656fe73648c06cc0a49054c07733ec9b";
              sha256_unsigned = "e8179ca362b9291083f8a2c2b6820e3b656fe73648c06cc0a49054c07733ec9b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_emg2926_q10a-squashfs-factory.bin";
              sha256 = "544154470f631595ad69a02a57a18d59b5cc60c53e0a651f8bb9098f2b85c463";
              sha256_unsigned = "544154470f631595ad69a02a57a18d59b5cc60c53e0a651f8bb9098f2b85c463";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "b0207b3020e74fe1eb34c808df2686856a3dbb380244e9f7223a3c464da9d98b";
              sha256_unsigned = "b0207b3020e74fe1eb34c808df2686856a3dbb380244e9f7223a3c464da9d98b";
              type = "sysupgrade-4M-Kernel";
            }
          ];
          supported_devices = [
            "zyxel,emg2926,q10a"
          ];
          titles = [
            {
              model = "EMG2926-Q10A";
              vendor = "ZyXEL";
            }
          ];
        };
        zyxel_nbg6716 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-nand-zyxel_nbg6716";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade.tar";
              sha256 = "1fe491fdd34f3244bbcca1be5f5ac9b4d2eb968e3944d357a2a1c2418bfe7678";
              sha256_unsigned = "d0cc5ca6869e326c5955a75b96cfc79c6294a358b9f2fea115945ff87f11a837";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "e15929aea980f4fbb2fd0211bee632a7be7ff275776a8d809c6f91bea32fd9c4";
              sha256_unsigned = "e15929aea980f4fbb2fd0211bee632a7be7ff275776a8d809c6f91bea32fd9c4";
              type = "sysupgrade-4M-Kernel";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_nbg6716-initramfs-kernel.bin";
              sha256 = "fb520255835590d0c802fae0f3b214c41a6734992f3e243ec534c2fa22da17e3";
              sha256_unsigned = "fb520255835590d0c802fae0f3b214c41a6734992f3e243ec534c2fa22da17e3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-ath79-nand-zyxel_nbg6716-squashfs-factory.bin";
              sha256 = "096d9b41300fca7deeb1865c8b9ad476630c63cff9a85f7b7ad3afeb155f07b8";
              sha256_unsigned = "096d9b41300fca7deeb1865c8b9ad476630c63cff9a85f7b7ad3afeb155f07b8";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nbg6716"
          ];
          titles = [
            {
              model = "NBG6716";
              vendor = "ZyXEL";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "ath79/nand";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    tiny = {
      arch_packages = "mips_24kc";
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
        vermagic = "0e6ced8c1e2bc83aaebe4806d77de397";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        engenius_eap350-v1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-tiny-engenius_eap350-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-tiny-engenius_eap350-v1-initramfs-kernel.bin";
              sha256 = "0eaca876b768258f035650964d2eb2c0be1ef11a400b890a854ed07a4a60002d";
              sha256_unsigned = "0eaca876b768258f035650964d2eb2c0be1ef11a400b890a854ed07a4a60002d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,eap350-v1"
          ];
          titles = [
            {
              model = "EAP350";
              variant = "v1";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_ecb350-v1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-ath79-tiny-engenius_ecb350-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-tiny-engenius_ecb350-v1-initramfs-kernel.bin";
              sha256 = "82cc36a0031c1a9766e6b7bb8ccfe9fec78e71f2102292ced7b509ee6cda6903";
              sha256_unsigned = "82cc36a0031c1a9766e6b7bb8ccfe9fec78e71f2102292ced7b509ee6cda6903";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,ecb350-v1"
          ];
          titles = [
            {
              model = "ECB350";
              variant = "v1";
              vendor = "EnGenius";
            }
          ];
        };
        engenius_enh202-v1 = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-23.05.5-ath79-tiny-engenius_enh202-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-23.05.5-ath79-tiny-engenius_enh202-v1-initramfs-kernel.bin";
              sha256 = "002e69d7b1774a04e2486d7e73fb4c2bdb21ffb77975f11c0f5262cd78f9032c";
              sha256_unsigned = "002e69d7b1774a04e2486d7e73fb4c2bdb21ffb77975f11c0f5262cd78f9032c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,enh202-v1"
          ];
          titles = [
            {
              model = "ENH202";
              variant = "v1";
              vendor = "EnGenius";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "ath79/tiny";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  bcm27xx = {
    bcm2708 = {
      arch_packages = "arm_arm1176jzf-s_vfp";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci"
        "luci-app-cpufreq"
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
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f849daff145f581d5ea50bcd8850a5a8";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        rpi = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm27xx-bcm2708-rpi";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2708-rpi-ext4-sysupgrade.img.gz";
              sha256 = "f22443b193616a586624205a43eeb52b6857ea4a9144835d7f11c0a254633682";
              sha256_unsigned = "a4859278aca6d9bf921d87f7d6af590a282fae54681da2a996cbae7dfa5c9f08";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2708-rpi-squashfs-factory.img.gz";
              sha256 = "43a4e1407724dd84ce4459d26d2e2bd4d33bdbd96df24e986d9d23a513f1ea21";
              sha256_unsigned = "43a4e1407724dd84ce4459d26d2e2bd4d33bdbd96df24e986d9d23a513f1ea21";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2708-rpi-ext4-factory.img.gz";
              sha256 = "a27ec7cc984a2f6aadffb86d343bd2494a7b8b10fb4a8a711ba5b7a1e1b4c959";
              sha256_unsigned = "a27ec7cc984a2f6aadffb86d343bd2494a7b8b10fb4a8a711ba5b7a1e1b4c959";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2708-rpi-squashfs-sysupgrade.img.gz";
              sha256 = "9c53ddc34786edf670fc2e924c60b748abf0db9089e4ff30e0db682c1967c020";
              sha256_unsigned = "0d096408b0a4ec74c04813a3c2609ed2aba5b142fa8efe9970396bbcd5ae99b1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-b"
            "rpi-b-plus"
            "rpi-cm"
            "rpi-zero"
            "rpi-zero-w"
            "raspberrypi,model-b"
            "raspberrypi,model-b-plus"
            "raspberrypi,model-b-rev2"
            "raspberrypi,compute-module"
            "raspberrypi,compute-module-1"
            "raspberrypi,model-zero"
            "raspberrypi,model-zero-w"
          ];
          titles = [
            {
              model = "B/B+/CM/Zero/ZeroW";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm27xx/bcm2708";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    bcm2709 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci"
        "luci-app-cpufreq"
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
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "d981514afaab959b843ffae5c6f4e299";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        rpi-2 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm27xx-bcm2709-rpi-2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2709-rpi-2-squashfs-factory.img.gz";
              sha256 = "599ff8738c23141b221ba7002691d761a837147dd41346dab2a7ae785843fe65";
              sha256_unsigned = "599ff8738c23141b221ba7002691d761a837147dd41346dab2a7ae785843fe65";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2709-rpi-2-squashfs-sysupgrade.img.gz";
              sha256 = "bb25d8b4d882e726c2bbfea8376d7fa94dc2808b249c29e458a30f1e2bd9c23e";
              sha256_unsigned = "6c1d9cec85205755d3e5c7a3231c9d91ed575d49cd1f7c65f9116fe0b3f2bc8b";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2709-rpi-2-ext4-factory.img.gz";
              sha256 = "242eb53468df3cf7f83dcb5a7bb828cc2b3aef2a489ad32bd39b0b28a2cb3c70";
              sha256_unsigned = "242eb53468df3cf7f83dcb5a7bb828cc2b3aef2a489ad32bd39b0b28a2cb3c70";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2709-rpi-2-ext4-sysupgrade.img.gz";
              sha256 = "258e5fdd47b78c9de03ed5158adbaa57ae35b49e06a2982a3ff34b710e7f9bd4";
              sha256_unsigned = "d156f26b4401bd86e0b886c326bfd062b8a6d9a0738d2a375e5a66c9de08dca9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-2-b"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-cm"
            "rpi-zero-2"
            "raspberrypi,2-model-b"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
            "raspberrypi,model-zero-2"
          ];
          titles = [
            {
              model = "2B/2B 1.2";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "3B/3B+/CM3";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "4B/400/CM4";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm27xx/bcm2709";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    bcm2710 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci"
        "luci-app-cpufreq"
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
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "8d790f4b81cbe377a52f4e03d0431d5e";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        rpi-3 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm27xx-bcm2710-rpi-3";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2710-rpi-3-ext4-factory.img.gz";
              sha256 = "b6570cf5719118545280f731c77a4c428662ce72a8b78f84f1fe11b2ff376e72";
              sha256_unsigned = "b6570cf5719118545280f731c77a4c428662ce72a8b78f84f1fe11b2ff376e72";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2710-rpi-3-squashfs-sysupgrade.img.gz";
              sha256 = "e1ec446708c7ec004c81556897f66fa09d3ebcaa6edd6afc437d9a9ea5ae9ab3";
              sha256_unsigned = "23c02477d692ede7bd11c0cae3cb79aede35efc18a7b05a3e3570b8dcbd52186";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2710-rpi-3-ext4-sysupgrade.img.gz";
              sha256 = "0e13554863411d5210f26ba52e531a2c9d2bbc13d3824dd11258f99a3612765d";
              sha256_unsigned = "71a80f2c40d263d17d032241dd563aa49600c625491b6f99bf07d0938fea6dd8";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2710-rpi-3-squashfs-factory.img.gz";
              sha256 = "ec2ec1b675be5ae8db8d20e0d65742c01753405567c78d4b7db48f14339d22d2";
              sha256_unsigned = "ec2ec1b675be5ae8db8d20e0d65742c01753405567c78d4b7db48f14339d22d2";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-zero-2"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,model-zero-2"
          ];
          titles = [
            {
              model = "3B/3B+/CM3";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "2B-1.2";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm27xx/bcm2710";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    bcm2711 = {
      arch_packages = "aarch64_cortex-a72";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci"
        "luci-app-cpufreq"
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
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "190a05698463659c1135d528b3ce0825";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        rpi-4 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "kmod-usb-net-lan78xx"
            "kmod-r8169"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm27xx-bcm2711-rpi-4";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2711-rpi-4-ext4-sysupgrade.img.gz";
              sha256 = "016f87a0e1820eaa69e47ce9816415374b8c03d46f125041a698e9836e388ca7";
              sha256_unsigned = "0b99d45059018bd300e11ced79b89cac4d66e8b53ddd20efcc842c2f943a4e1d";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2711-rpi-4-ext4-factory.img.gz";
              sha256 = "73db75f7b0541cbb4906f8867b8d1422695d1600b045b167544f9d796909e3b1";
              sha256_unsigned = "73db75f7b0541cbb4906f8867b8d1422695d1600b045b167544f9d796909e3b1";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2711-rpi-4-squashfs-sysupgrade.img.gz";
              sha256 = "b6de034361ad4011ad2371951a7ad921e247629206cc454186326ab09fd955c9";
              sha256_unsigned = "219cb6433cea19001a7208defe571bb7cdd101e51bdc5347ba87b6b8c09733c7";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm27xx-bcm2711-rpi-4-squashfs-factory.img.gz";
              sha256 = "60ad659873dddc2e5582184ea3a3efaeaf8a2d37f06e3b364f9ce1ca4df1cab4";
              sha256_unsigned = "60ad659873dddc2e5582184ea3a3efaeaf8a2d37f06e3b364f9ce1ca4df1cab4";
              type = "factory";
            }
          ];
          supported_devices = [
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
          ];
          titles = [
            {
              model = "4B/400/CM4";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm27xx/bcm2711";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  bcm47xx = {
    generic = {
      arch_packages = "mipsel_mips32";
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
        "kmod-gpio-button-hotplug"
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
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "091f5eae98e74c5069d387261cab6b4e";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        linksys_e3000-v1 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-generic-linksys_e3000-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-generic-linksys_e3000-v1-squashfs.bin";
              sha256 = "03d564c6e0d83472ba727598e515e1c97d813e4ebdf82694416a17903da3358f";
              sha256_unsigned = "03d564c6e0d83472ba727598e515e1c97d813e4ebdf82694416a17903da3358f";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3000-v1"
          ];
          titles = [
            {
              model = "E3000";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v1 = {
          device_packages = [
            "kmod-tg3"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-generic-linksys_wrt610n-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-generic-linksys_wrt610n-v1-squashfs.bin";
              sha256 = "22ecc4c6e2f98405bd6fc5e01e1d4f8303fa82436ea783fa056070ba8a49befb";
              sha256_unsigned = "22ecc4c6e2f98405bd6fc5e01e1d4f8303fa82436ea783fa056070ba8a49befb";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v1"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v2 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-generic-linksys_wrt610n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-generic-linksys_wrt610n-v2-squashfs.bin";
              sha256 = "11e5856f23dd6cf99913793db713dec5114f4ba289d6c6260bf08b221dc1b5b2";
              sha256_unsigned = "11e5856f23dd6cf99913793db713dec5114f4ba289d6c6260bf08b221dc1b5b2";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v2"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        standard = {
          device_packages = [
            "kmod-b44"
            "kmod-bgmac"
            "kmod-tg3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-generic-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-generic-standard-squashfs.trx";
              sha256 = "34fa7408806a45f28d58be0a90a4f9cc9372ae0334901ad167bafcb87346e74d";
              sha256_unsigned = "34fa7408806a45f28d58be0a90a4f9cc9372ae0334901ad167bafcb87346e74d";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm47xx/generic";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
    mips74k = {
      arch_packages = "mipsel_74kc";
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
        "kmod-gpio-button-hotplug"
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
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "72ebdb5e1231cf2ca54899141459a5e3";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac53u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-ac53u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-ac53u-squashfs.trx";
              sha256 = "55076aae9064d487f4f01f1c95741e4f867f17ec69144d3b8c28007b4c42ce8a";
              sha256_unsigned = "55076aae9064d487f4f01f1c95741e4f867f17ec69144d3b8c28007b4c42ce8a";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac53u"
          ];
          titles = [
            {
              model = "RT-AC53U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n14uhp = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n14uhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n14uhp-squashfs.trx";
              sha256 = "38319c30d9d8c6c0dbd6c620ea4c3b39d17fe2675f76618f3c8cc5071ae98613";
              sha256_unsigned = "38319c30d9d8c6c0dbd6c620ea4c3b39d17fe2675f76618f3c8cc5071ae98613";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n14uhp"
          ];
          titles = [
            {
              model = "RT-N14UHP";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n15u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n15u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n15u-squashfs.trx";
              sha256 = "6e1f409a8c3a2ac31e7723c963b4fb868da2f6812501e4ca4a4d0efe89fb0270";
              sha256_unsigned = "6e1f409a8c3a2ac31e7723c963b4fb868da2f6812501e4ca4a4d0efe89fb0270";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n15u"
          ];
          titles = [
            {
              model = "RT-N15U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n16 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n16";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n16-squashfs.trx";
              sha256 = "33e849414fa2b79fc3c01e0d04a05fe337be4bf8d871c4ac386aa2f41f627213";
              sha256_unsigned = "33e849414fa2b79fc3c01e0d04a05fe337be4bf8d871c4ac386aa2f41f627213";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n16"
          ];
          titles = [
            {
              model = "RT-N16";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n66u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n66u-squashfs.trx";
              sha256 = "5c3e5854345fa295c4b95a383d9156009d29046f41497d84db843f655a771177";
              sha256_unsigned = "5c3e5854345fa295c4b95a383d9156009d29046f41497d84db843f655a771177";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66u"
          ];
          titles = [
            {
              model = "RT-N66U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66w = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n66w";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-asus_rt-n66w-squashfs.trx";
              sha256 = "5c3e5854345fa295c4b95a383d9156009d29046f41497d84db843f655a771177";
              sha256_unsigned = "5c3e5854345fa295c4b95a383d9156009d29046f41497d84db843f655a771177";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66w"
          ];
          titles = [
            {
              model = "RT-N66W";
              vendor = "ASUS";
            }
          ];
        };
        linksys_e1550-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e1550-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e1550-v1-squashfs.bin";
              sha256 = "8f7430aaacb7e806d9625f10969eb9f398b5e8a44be41284b767185067d35bc6";
              sha256_unsigned = "8f7430aaacb7e806d9625f10969eb9f398b5e8a44be41284b767185067d35bc6";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e1550-v1"
          ];
          titles = [
            {
              model = "E1550";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v1-squashfs.bin";
              sha256 = "104ee42d2ba1fb95f093c87e97d507095700ee02f2b48deb49238c8d9ca65ee2";
              sha256_unsigned = "104ee42d2ba1fb95f093c87e97d507095700ee02f2b48deb49238c8d9ca65ee2";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v2 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v2-squashfs.bin";
              sha256 = "fb635532ce11a3226ef90c7ba5d3199ba21b12db2612f0f026dd866f498e9301";
              sha256_unsigned = "fb635532ce11a3226ef90c7ba5d3199ba21b12db2612f0f026dd866f498e9301";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        "linksys_e2500-v2.1" = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v2.1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v2.1-squashfs.bin";
              sha256 = "bb306c6fdf19828ea836357502c653c022dcdf7ab49958140f283d7c700c11dd";
              sha256_unsigned = "bb306c6fdf19828ea836357502c653c022dcdf7ab49958140f283d7c700c11dd";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2.1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2.1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v3 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e2500-v3-squashfs.bin";
              sha256 = "1593ce06369f2c525c92590b2b738af7e4e3bd5a717c951b6dace5311da73e95";
              sha256_unsigned = "1593ce06369f2c525c92590b2b738af7e4e3bd5a717c951b6dace5311da73e95";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v3"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e3200-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e3200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e3200-v1-squashfs.bin";
              sha256 = "c23743676f4328a51faaf501d3a44586f25c070eeac82b3d4e3e612db031c3b6";
              sha256_unsigned = "c23743676f4328a51faaf501d3a44586f25c070eeac82b3d4e3e612db031c3b6";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3200-v1"
          ];
          titles = [
            {
              model = "E3200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e4200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e4200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-linksys_e4200-v1-squashfs.bin";
              sha256 = "c32c68eb453ce304a292a0da114891f8588d35efb5def63b29d2a2414866bb22";
              sha256_unsigned = "c32c68eb453ce304a292a0da114891f8588d35efb5def63b29d2a2414866bb22";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e4200-v1"
          ];
          titles = [
            {
              model = "E4200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        netgear_r6200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_r6200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_r6200-v1-squashfs.chk";
              sha256 = "405fef40a0fd7122cd84115e73c6f71dd7d50057138fc14f6729f1941d4528ab";
              sha256_unsigned = "405fef40a0fd7122cd84115e73c6f71dd7d50057138fc14f6729f1941d4528ab";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6200-v1"
          ];
          titles = [
            {
              model = "R6200";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wn2500rp-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wn2500rp-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wn2500rp-v1-squashfs.chk";
              sha256 = "dc8995a60228ffd76de775b520b2573a1f705c6dc3678637ced47bf775c0a0c9";
              sha256_unsigned = "dc8995a60228ffd76de775b520b2573a1f705c6dc3678637ced47bf775c0a0c9";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wn2500rp-v1"
          ];
          titles = [
            {
              model = "WN2500RP";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v1-squashfs.chk";
              sha256 = "28fe28c27d849f886cf56748d3a03d1b8bf4d50f4d121eb99fa0c85a2e455b3d";
              sha256_unsigned = "28fe28c27d849f886cf56748d3a03d1b8bf4d50f4d121eb99fa0c85a2e455b3d";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v1"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v2 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v2-squashfs.chk";
              sha256 = "3d045f4b2ffe52bce078223a17b6ad11393db8dc35f0f68afb2425316655662e";
              sha256_unsigned = "3d045f4b2ffe52bce078223a17b6ad11393db8dc35f0f68afb2425316655662e";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v2"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3400-v3-squashfs.chk";
              sha256 = "044ff3e94c807a1a51072b58bfe7ae48be8bcb85fc12b99070b0b1c2845bec2f";
              sha256_unsigned = "044ff3e94c807a1a51072b58bfe7ae48be8bcb85fc12b99070b0b1c2845bec2f";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v3"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3700-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr3700-v3-squashfs.chk";
              sha256 = "862c796ef6a959bf7708269fd1a644f5b58cce80def65054f839caf09ba9d5fe";
              sha256_unsigned = "862c796ef6a959bf7708269fd1a644f5b58cce80def65054f839caf09ba9d5fe";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v3"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4000 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr4000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wndr4000-squashfs.chk";
              sha256 = "78427b08312f0a409e65b1f2d1177ab6e135027358de519539308f5d80f38bf4";
              sha256_unsigned = "78427b08312f0a409e65b1f2d1177ab6e135027358de519539308f5d80f38bf4";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr4000"
          ];
          titles = [
            {
              model = "WNDR4000";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v1-squashfs.chk";
              sha256 = "a3c561164f0ea560df705895ed929edeebbe883fa9b6ad4b5ac48e465f40e720";
              sha256_unsigned = "a3c561164f0ea560df705895ed929edeebbe883fa9b6ad4b5ac48e465f40e720";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (ROW)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1-na = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v1-na";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v1-na-squashfs.chk";
              sha256 = "79ca1e44f01eeb178a5a1e8c5764bfed806f58e1f055ca050f25233d85d713f3";
              sha256_unsigned = "79ca1e44f01eeb178a5a1e8c5764bfed806f58e1f055ca050f25233d85d713f3";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1-na"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (NA)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-netgear_wnr3500l-v2-squashfs.chk";
              sha256 = "834dce76212d04b995d3a35102d0157753fe5b2d27964a332ad1167720366709";
              sha256_unsigned = "834dce76212d04b995d3a35102d0157753fe5b2d27964a332ad1167720366709";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v2"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-standard-squashfs.trx";
              sha256 = "4571fcd4252c8ec49157ffdacdea2a429d7a4f0362ce6cdc469b649ae800350b";
              sha256_unsigned = "4571fcd4252c8ec49157ffdacdea2a429d7a4f0362ce6cdc469b649ae800350b";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-nodictionarylzma = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-bcm47xx-mips74k-standard-noloader-nodictionarylzma";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm47xx-mips74k-standard-noloader-nodictionarylzma-squashfs.trx";
              sha256 = "b013ff654f30e26ecf8d4d39342716c34e9439edfaf822f30ec725e6b1e99fa4";
              sha256_unsigned = "b013ff654f30e26ecf8d4d39342716c34e9439edfaf822f30ec725e6b1e99fa4";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-nodictionarylzma"
          ];
          titles = [
            {
              model = "Image with LZMA compressed kernel matching CFE decompressor";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm47xx/mips74k";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  bcm4908 = {
    generic = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "base-files"
        "bcm4908img"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fdt-utils"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "87ec2f0c852a3af5932ad97c65a0c82e";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        asus_gt-ac5300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-bcm4908-generic-asus_gt-ac5300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm4908-generic-asus_gt-ac5300-squashfs.bin";
              sha256 = "b3f9fa9014d78731552d94501030754202c2d98eb0c8624e6829bd31b3d7db75";
              sha256_unsigned = "b3f9fa9014d78731552d94501030754202c2d98eb0c8624e6829bd31b3d7db75";
              type = "bin";
            }
          ];
          supported_devices = [
            "asus,gt-ac5300"
          ];
          titles = [
            {
              model = "GT-AC5300";
              vendor = "ASUS";
            }
          ];
        };
        netgear_r8000p = {
          device_packages = [ ];
          image_prefix = "immortalwrt-23.05.5-bcm4908-generic-netgear_r8000p";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm4908-generic-netgear_r8000p-squashfs.bin";
              sha256 = "1c9eeb5db7c5e873a66306ffd659226d83d9bb45e698abaf4d79acdf60939efa";
              sha256_unsigned = "1c9eeb5db7c5e873a66306ffd659226d83d9bb45e698abaf4d79acdf60939efa";
              type = "bin";
            }
          ];
          supported_devices = [
            "netgear,r8000p"
          ];
          titles = [
            {
              model = "R8000P";
              vendor = "Netgear";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm4908/generic";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  bcm53xx = {
    generic = {
      arch_packages = "arm_cortex-a9";
      default_packages = [
        "autocore"
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
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
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "osafeloader"
        "oseama"
        "otrx"
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
        vermagic = "92e22d34f62b2eb6dcf09fbbd694863d";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac3100 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac3100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac3100-squashfs.trx";
              sha256 = "3dca52b41f3d776f62c19680d77889628cf227733c2c2f05763b97b5a166aeb9";
              sha256_unsigned = "3dca52b41f3d776f62c19680d77889628cf227733c2c2f05763b97b5a166aeb9";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac3100"
          ];
          titles = [
            {
              model = "RT-AC3100";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac56u = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac56u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac56u-squashfs.trx";
              sha256 = "61521477c61522e51c1bf5c6ba964a2092b6d57d6971cb4289753d5f9765898b";
              sha256_unsigned = "61521477c61522e51c1bf5c6ba964a2092b6d57d6971cb4289753d5f9765898b";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac56u"
          ];
          titles = [
            {
              model = "RT-AC56U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac68u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac68u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac68u-squashfs.trx";
              sha256 = "05f5f49192f2744a40942e2d5d83f2f2cc17e5b0d656400db000ce1623958f07";
              sha256_unsigned = "05f5f49192f2744a40942e2d5d83f2f2cc17e5b0d656400db000ce1623958f07";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac68u"
          ];
          titles = [
            {
              model = "RT-AC68U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac87u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac87u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac87u-squashfs.trx";
              sha256 = "3e08247b853301134416af23a4e0f5c7f78ee27ea78bd50b19ebd7f9239398c3";
              sha256_unsigned = "3e08247b853301134416af23a4e0f5c7f78ee27ea78bd50b19ebd7f9239398c3";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac87u"
          ];
          titles = [
            {
              model = "RT-AC87U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac88u = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac88u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-ac88u-squashfs.trx";
              sha256 = "f50b3f6d617660c0ef32e1b2aa1c51a421a3a1f7b7488f4dd8adb5baddb84216";
              sha256_unsigned = "f50b3f6d617660c0ef32e1b2aa1c51a421a3a1f7b7488f4dd8adb5baddb84216";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac88u"
          ];
          titles = [
            {
              model = "RT-AC88U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n18u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-n18u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-asus_rt-n18u-squashfs.trx";
              sha256 = "ea0a2cfa6d4cdb13969c9e32410bfe0658221f0f3f3ddf7f739899d42d08872e";
              sha256_unsigned = "ea0a2cfa6d4cdb13969c9e32410bfe0658221f0f3f3ddf7f739899d42d08872e";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n18u"
          ];
          titles = [
            {
              model = "RT-N18U";
              vendor = "ASUS";
            }
          ];
        };
        buffalo_wxr-1900dhp = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wxr-1900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wxr-1900dhp-squashfs.trx";
              sha256 = "fa8c994050362bb958a80d67af6e92e873de4f824bd12d9369d5a8b2a71b1338";
              sha256_unsigned = "fa8c994050362bb958a80d67af6e92e873de4f824bd12d9369d5a8b2a71b1338";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wxr-1900dhp"
          ];
          titles = [
            {
              model = "WXR-1900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-1750dhp = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-1750dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-1750dhp-squashfs.trx";
              sha256 = "6eecb1ecd8bdd604febb61884edd46934305717c9b57e5e80f75e4c4b792be6d";
              sha256_unsigned = "6eecb1ecd8bdd604febb61884edd46934305717c9b57e5e80f75e4c4b792be6d";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-1750dhp"
          ];
          titles = [
            {
              model = "WZR-1750DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-600dhp2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-600dhp2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-600dhp2-squashfs.trx";
              sha256 = "ed96c8e9cef6faea744d4026c95aacf8e69c486052e478c15de04e98f54772ec";
              sha256_unsigned = "ed96c8e9cef6faea744d4026c95aacf8e69c486052e478c15de04e98f54772ec";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-600dhp2"
          ];
          titles = [
            {
              model = "WZR-600DHP2";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-900dhp = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.trx";
              sha256 = "eeea9f2f37ab37f87f287f07064c9d0f7940cd63f8b9dc0d4c61fbd86f6466ae";
              sha256_unsigned = "eeea9f2f37ab37f87f287f07064c9d0f7940cd63f8b9dc0d4c61fbd86f6466ae";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP2-JP.bin";
              sha256 = "44be7666c371caedb7aa8d5193377b36c7ed7dc9a7356688e84d016e036a1282";
              sha256_unsigned = "44be7666c371caedb7aa8d5193377b36c7ed7dc9a7356688e84d016e036a1282";
              type = "factory-DHP2-JP";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP-EU.bin";
              sha256 = "bb33885a201812afbabd71bf21c11d118c658b992399488ef9b4385f92d85b58";
              sha256_unsigned = "bb33885a201812afbabd71bf21c11d118c658b992399488ef9b4385f92d85b58";
              type = "factory-DHP-EU";
            }
          ];
          supported_devices = [
            "buffalo,wzr-900dhp"
          ];
          titles = [
            {
              model = "WZR-900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        dlink_dir-885l = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-dlink_dir-885l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-dlink_dir-885l-squashfs.bin";
              sha256 = "7c1c6142c8f6f63d93c3b27fa1f84fa289992184a90d86bbbf6d2ed889fb6904";
              sha256_unsigned = "7c1c6142c8f6f63d93c3b27fa1f84fa289992184a90d86bbbf6d2ed889fb6904";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-885l"
          ];
          titles = [
            {
              model = "DIR-885L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dwl-8610ap = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-dlink_dwl-8610ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-dlink_dwl-8610ap-squashfs.factory.tar";
              sha256 = "06136bcfebe6fcf37998611eddeb7fe985ea34b9a875bd2df7e3589d64d8230a";
              sha256_unsigned = "06136bcfebe6fcf37998611eddeb7fe985ea34b9a875bd2df7e3589d64d8230a";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dwl-8610ap"
          ];
          titles = [
            {
              model = "DWL-8610AP";
              vendor = "D-Link";
            }
          ];
        };
        linksys_ea6300-v1 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea6300-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea6300-v1-squashfs.trx";
              sha256 = "f7416881cce7ba067fc806e3a14227a5eb57033e9d2b0bbd6a6112f30696edd1";
              sha256_unsigned = "f7416881cce7ba067fc806e3a14227a5eb57033e9d2b0bbd6a6112f30696edd1";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6300-v1"
          ];
          titles = [
            {
              model = "EA6300";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea6500-v2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea6500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea6500-v2-squashfs.trx";
              sha256 = "5ffe8eee5d4f22fffcc6351b1c90a1a0810529baec6a46d3888db2a630653b7d";
              sha256_unsigned = "5ffe8eee5d4f22fffcc6351b1c90a1a0810529baec6a46d3888db2a630653b7d";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6500-v2"
          ];
          titles = [
            {
              model = "EA6500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9200 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea9200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea9200-squashfs.trx";
              sha256 = "da05eea27a6a2fb815407b2fee98552d063031053119063add636554e91f2697";
              sha256_unsigned = "da05eea27a6a2fb815407b2fee98552d063031053119063add636554e91f2697";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9200"
          ];
          titles = [
            {
              model = "EA9200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9500 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea9500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-linksys_ea9500-squashfs.trx";
              sha256 = "07693b822ab6bc5c8672f25435de346597cf0c5bc16cb34b6dd5f1428020b3dd";
              sha256_unsigned = "07693b822ab6bc5c8672f25435de346597cf0c5bc16cb34b6dd5f1428020b3dd";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9500"
          ];
          titles = [
            {
              model = "EA9500";
              vendor = "Linksys";
            }
          ];
        };
        luxul_abr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-luxul_abr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-luxul_abr-4500-squashfs.lxl";
              sha256 = "e56ddb9a277a59e68745da45f06ee6f06312c8a0116f33e53362138a405216ec";
              sha256_unsigned = "e56ddb9a277a59e68745da45f06ee6f06312c8a0116f33e53362138a405216ec";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,abr-4500"
          ];
          titles = [
            {
              model = "ABR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xap-1610 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xap-1610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xap-1610-squashfs.lxl";
              sha256 = "163e9a665a022a4942ba6fdcb8f05eb304d04ae55c0a313c3209af9310d90c09";
              sha256_unsigned = "163e9a665a022a4942ba6fdcb8f05eb304d04ae55c0a313c3209af9310d90c09";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xap-1610"
          ];
          titles = [
            {
              model = "XAP-1610";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xbr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xbr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xbr-4500-squashfs.lxl";
              sha256 = "8221200cf17107ba7d0012fb7b7ab95607f1e8952c959dff8a74d139dd2546ec";
              sha256_unsigned = "8221200cf17107ba7d0012fb7b7ab95607f1e8952c959dff8a74d139dd2546ec";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xbr-4500"
          ];
          titles = [
            {
              model = "XBR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xwr-3150 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xwr-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-luxul_xwr-3150-squashfs.lxl";
              sha256 = "50864518465b4a2daaabfe0ed5f8d73aefcd2c058441b33e1dceed6ac37f6a79";
              sha256_unsigned = "50864518465b4a2daaabfe0ed5f8d73aefcd2c058441b33e1dceed6ac37f6a79";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xwr-3150"
          ];
          titles = [
            {
              model = "XWR-3150";
              vendor = "Luxul";
            }
          ];
        };
        meraki_mr26 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-i2c-bcm-iproc"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-uleds"
            "nu801"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr26";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr26-squashfs.trx";
              sha256 = "f60aae39b194bb47fbfad35bff1f990c50bbd2cfe7a59a05bba7762c45d4c230";
              sha256_unsigned = "f60aae39b194bb47fbfad35bff1f990c50bbd2cfe7a59a05bba7762c45d4c230";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr26-squashfs.sysupgrade.bin";
              sha256 = "b924fe12d182c7d9f67c117d11df32fc211cb13867c84b67affc9370e46569c5";
              sha256_unsigned = "7dee4aa2ef0a1f6cd3f6eb1cf2c8483ebf5b6138a70a03b4164ec8093c45a712";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr26"
          ];
          titles = [
            {
              model = "MR26";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mr32 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-i2c-bcm-iproc"
            "kmod-eeprom-at24"
            "kmod-leds-pwm"
            "kmod-hwmon-ina2xx"
            "kmod-bluetooth"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr32";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr32-squashfs.sysupgrade.bin";
              sha256 = "dd700e031527688db915bc43cf82c4fb5c8a2a1801f83c6fbcbc095621bcf44b";
              sha256_unsigned = "1ca51edcf7950333feba7d3e9b55867156c4ccfdaaba3bc6af4fb5856cdc62ad";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-meraki_mr32-squashfs.trx";
              sha256 = "849e32f1c57de78e7198422b4e8abff5404dbc3f8a9791ce231a8cf5c8bac669";
              sha256_unsigned = "849e32f1c57de78e7198422b4e8abff5404dbc3f8a9791ce231a8cf5c8bac669";
              type = "trx";
            }
          ];
          supported_devices = [
            "meraki,mr32"
          ];
          titles = [
            {
              model = "MR32";
              vendor = "Meraki";
            }
          ];
        };
        netgear_r6250 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r6250";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r6250-squashfs.chk";
              sha256 = "9ecba45a1166a9883f74975553edeab5a9664308277332a470680e65647ab4a7";
              sha256_unsigned = "9ecba45a1166a9883f74975553edeab5a9664308277332a470680e65647ab4a7";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6250"
          ];
          titles = [
            {
              model = "R6250";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6300-v2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r6300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r6300-v2-squashfs.chk";
              sha256 = "4d32786c80001ae1e0c64b9051bf3a249798ca245656f4fafb04600e022a5bb8";
              sha256_unsigned = "4d32786c80001ae1e0c64b9051bf3a249798ca245656f4fafb04600e022a5bb8";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6300-v2"
          ];
          titles = [
            {
              model = "R6300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r7000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r7000-squashfs.chk";
              sha256 = "c17a549304ee7c62070cf12493b88470bd56214d536bb9a04cdba760ec06533c";
              sha256_unsigned = "c17a549304ee7c62070cf12493b88470bd56214d536bb9a04cdba760ec06533c";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7000"
          ];
          titles = [
            {
              model = "R7000";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7900 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r7900";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r7900-squashfs.chk";
              sha256 = "c1a50975e714d6724ffb4550fdcf8663a8fe544b64615481f034bcbbf57f6c13";
              sha256_unsigned = "c1a50975e714d6724ffb4550fdcf8663a8fe544b64615481f034bcbbf57f6c13";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7900"
          ];
          titles = [
            {
              model = "R7900";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r8000 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r8000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-netgear_r8000-squashfs.chk";
              sha256 = "69dae66ff768f4d6b42bd1692b7918ef8c3be2a5bf858a1f012c8b2297ced4cf";
              sha256_unsigned = "69dae66ff768f4d6b42bd1692b7918ef8c3be2a5bf858a1f012c8b2297ced4cf";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r8000"
          ];
          titles = [
            {
              model = "R8000";
              vendor = "NETGEAR";
            }
          ];
        };
        phicomm_k3 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "-brcmfmac-firmware-4366c0-pcie"
            "brcmfmac-firmware-4366c0-pcie-k3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-phicomm_k3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-phicomm_k3-squashfs.trx";
              sha256 = "b5f3cf1ac05c64fe4b3a405d87411e2f7babcc4fc5647d952804bde8bce5cc2d";
              sha256_unsigned = "b5f3cf1ac05c64fe4b3a405d87411e2f7babcc4fc5647d952804bde8bce5cc2d";
              type = "trx";
            }
          ];
          supported_devices = [
            "phicomm,k3"
          ];
          titles = [
            {
              model = "K3";
              vendor = "PHICOMM";
            }
            {
              model = "QUANTUM DAX";
              vendor = "Wavlink";
            }
            {
              model = "WL-WN538A8";
              vendor = "Wavlink";
            }
          ];
        };
        smartrg_sr400ac = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-smartrg_sr400ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-smartrg_sr400ac-squashfs.trx";
              sha256 = "91bdbd996b9a0dd12868ed2c68dab6134bf0c86bdf490382ba13bc1bafb13e6d";
              sha256_unsigned = "91bdbd996b9a0dd12868ed2c68dab6134bf0c86bdf490382ba13bc1bafb13e6d";
              type = "trx";
            }
          ];
          supported_devices = [
            "smartrg,sr400ac"
          ];
          titles = [
            {
              model = "SR400ac";
              vendor = "SmartRG";
            }
          ];
        };
        tenda_ac9 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "automount"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-23.05.5-bcm53xx-generic-tenda_ac9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-bcm53xx-generic-tenda_ac9-squashfs.trx";
              sha256 = "b6d2952790251371671acddb3a48669ba6db579b8a386ef5611269ca040ef46c";
              sha256_unsigned = "b6d2952790251371671acddb3a48669ba6db579b8a386ef5611269ca040ef46c";
              type = "trx";
            }
          ];
          supported_devices = [
            "tenda,ac9"
          ];
          titles = [
            {
              model = "AC9";
              vendor = "Tenda";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "bcm53xx/generic";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  imx = {
    cortexa7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "21b106b85b7699029d7450be4dbae8ae";
        version = "5.15.189";
      };
      metadata_version = 1;
      profiles = {
        technexion_imx7d-pico-pi = {
          device_packages = [
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-input-touchscreen-edt-ft5x06"
            "kmod-usb-hid"
            "kmod-btsdio"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4339-sdio"
            "cypress-nvram-4339-sdio"
          ];
          image_prefix = "immortalwrt-23.05.5-imx-cortexa7-technexion_imx7d-pico-pi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-combined.bin";
              sha256 = "01c726c2c37e9169a12d0b18313b48d3583cbcb2f9edfd90c6f193a6a5ccaa99";
              sha256_unsigned = "01c726c2c37e9169a12d0b18313b48d3583cbcb2f9edfd90c6f193a6a5ccaa99";
              type = "combined";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-23.05.5-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-sysupgrade.bin";
              sha256 = "911179190da1a8fef7a1eb6b06dd2302f6a64e43084054df6e027ef1ffcae31e";
              sha256_unsigned = "794e612773d2b496aea07fd08c9e432e6465321c9482ba98601f74a0c48ce653";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "technexion,imx7d-pico-pi"
          ];
          titles = [
            {
              model = "PICO-PI-IMX7D";
              vendor = "TechNexion";
            }
          ];
        };
      };
      source_date_epoch = 1756121843;
      target = "imx/cortexa7";
      version_code = "r28311-9c1829a5fdac";
      version_number = "23.05.5";
    };
  };
  lantiq = { };
}