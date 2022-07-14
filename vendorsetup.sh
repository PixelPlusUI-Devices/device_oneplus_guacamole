# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning OnePlus 7Pro Tree"
git clone https://github.com/PixelPlusUI-devices/device_oneplus_guacamole device/oneplus/guacamole
git clone https://github.com/PixelPlusUI-devices/device_oneplus_sm8150-common device/oneplus/sm8150-common/
echo ""

echo "Cloning Vendor blobs"
git clone https://github.com/PixelPlusUI-devices/vendor_oneplus_guacamole vendor/oneplus/guacamole
git clone https://github.com/PixelPlusUI-devices/vendor_oneplus_sm8150-common vendor/oneplus/sm8150-common/
echo ""

echo "Cloning kernel tree"
git clone https://github.com/PixelPlusUI-devices/kernel_oneplus_guacamole kernel/oneplus/sm8150
echo ""

echo "Cloning Hardware/Oneplus"
git clone https://github.com/mhmdeve/hardware_oneplus hardware/oneplus

# OnePlus Stuff 
echo "Cloning OnePlus"
git clone https://gitlab.com/PixelPlusUI-SnowCone/vendor_oneplus_apps vendor/oneplus/apps
git clone https://github.com/PixelPlusUI-Devices/vendor_motorola_dolby vendor/motorola/dolby
echo ""
