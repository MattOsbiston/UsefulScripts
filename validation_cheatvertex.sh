xml=$MY_TEST_AREA/LArReco/settings/PandoraSettings_Master_DUNEFD_VD_cheatvertex.xml
geo=$MY_TEST_AREA/LArReco/geometry/Pandora_Geometry_dunevd10kt_1x8x14_3view_30deg.xml
dir=/storage/dune/marley_dunevd10kt_1x8x14_3view_30deg_samples/nue_mono/
for i in {5..30}; do
        $MY_TEST_AREA/LArReco/bin/PandoraInterface -r AllHitsNu -i $xml -g $geo  -e $dir/Pandora_Events_noBkg_${i}MeV_5000.pndr   -N -n 2500
        mv hierarchy_validation_cheatvertex.root hierarchy_validation_cheatvertex_2500_${i}.root
        mv vertices_cheatvertex_v2.root vertices_cheatvertex_v2_2500_${i}.root
done

