xml=$MY_TEST_AREA/LArReco/settings/PandoraSettings_Master_DUNEFD_VD_std.xml
geo=$MY_TEST_AREA/LArReco/geometry/Pandora_Geometry_dunevd10kt_1x8x14_3view_30deg.xml
dir=/storage/epp2/phsjrg/studyLowEnergyEventsWithBackground/LArReco/Pandora_Events-97dce97b-af1d-4bf7-a11d-af74fb75b7dd.pndr
$MY_TEST_AREA/LArReco/bin/PandoraInterface -r AllHitsNu -i $xml -g $geo  -e $dir -N -n 10


