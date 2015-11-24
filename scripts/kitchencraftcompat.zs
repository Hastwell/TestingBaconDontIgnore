val kcLettuce = <kitchenCraftFoods:veggie>;
<ore:cropLettuce>.add(kcLettuce);
<ore:listAllveggie>.add(kcLettuce);
<ore:listAllgreenveggie>.add(kcLettuce);

val kcOnion = <kitchenCraftFoods:veggie:1>;
val phcOnion = <harvestcraft:onionItem>;
<ore:cropOnion>.add(kcOnion);
<ore:listAllveggie>.add(kcOnion);

<ore:foodOnion>.add(phcOnion);
<ore:foodCrop>.add(phcOnion);
<ore:foodVeggie>.add(phcOnion);



# remove conflict between KC Bottled Water and HarvestCraft Fresh Water
#recipes.remove(<kitchenCraftFoods:veggie:5>);
#recipes.remove(<harvestcraft:freshwaterItem>);

#recipes.addShaped(<kitchenCraftFoods:veggie:5>, [ [<minecraft:water_bucket>, null, null], [null, null, null], [null, null, null]  ] );
#recipes.addShaped(<harvestcraft:freshwaterItem>, [ [null, null, null], [null, <minecraft:water_bucket>, null], [null, null, null]  ] );


