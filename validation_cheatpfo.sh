xml=$MY_TEST_AREA/LArReco/settings/PandoraSettings_Master_DUNEFD_VD_cheatpfo.xml
geo=$MY_TEST_AREA/LArReco/geometry/Pandora_Geometry_dunevd10kt_1x8x14_3view_30deg.xml
dir=/storage/dune/marley_dunevd10kt_1x8x14_3view_30deg_samples/nue_mono/
for i in {30..30}; do
        $MY_TEST_AREA/LArReco/bin/PandoraInterface -r AllHitsNu -i $xml -g $geo  -e $dir/Pandora_Events_noBkg_${i}MeV_5000.pndr   -N -n 2500
        mv hierarchy_validation_cheatpfo.root hierarchy_validation_cheatpfo_${i}.root
       # mv vertices_shower_reduced.root vertices_transverse_reduced_${i}.root
done

