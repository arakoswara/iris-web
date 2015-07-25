<?php if ($mod==""){
    header('location:../../404.php');
}else{
?>
<!-- 
*******************************************************
    Include Header Template
******************************************************* 
-->
<?php include_once "po-content/$folder/header.php"; ?>

<!-- 
*******************************************************
    Main Content Template
******************************************************* 
-->
        <div style="height:500px">
            <?php
            $tableslider = new PoTable('post');
            $sliders = $tableslider->findBy(id_post,19);
            foreach($sliders as $slider){
                $tablecatsl = new PoTable('category');
                $currentCatsl = $tablecatsl->findBy(id_category, $slider->id_category);
                $currentCatsl = $currentCatsl->current();
            ?>
            <div style="">
                <a href="<?php echo "$website_url/detailpost/$slider->seotitle"; ?>" title="<?=$slider->title;?>">
                    <img src="<?=$website_url;?>/po-content/po-upload/<?=$slider->picture;?>" alt="<?=$slider->title;?>" class="img-responsive" width="100%">
                </a>
            </div>
            <?php } ?>            
        </div>

<!-- *******************************************************
    Include Footer Template
*******************************************************  -->
<?php // include_once "po-content/$folder/footer.php"; ?>
<?php } ?>