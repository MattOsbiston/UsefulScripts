xml=$MY_TEST_AREA/LArReco/settings/PandoraSettings_Master_DUNEFD_VD_config.xml
geo=$MY_TEST_AREA/LArReco/geometry/Pandora_Geometry_dunevd10kt_1x8x14_3view_30deg.xml
dir=/storage/dune/marley_dunevd10kt_1x8x14_3view_30deg_samples/nue_mono_radiological_decay0
for i in {5..30}; do
        $MY_TEST_AREA/LArReco/bin/PandoraInterface -r AllHitsNu -i $xml -g $geo  -e $dir/Pandora_Events_bkg_${i}MeV_20.pndr   -N -n 20
        mv hierarchy_validation_config.root hierarchy_validation_bkg_${i}.root
       # mv vertices_shower_reduced.root vertices_transverse_reduced_${i}.root
done

