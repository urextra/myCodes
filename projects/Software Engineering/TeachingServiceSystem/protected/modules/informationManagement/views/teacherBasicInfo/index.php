<?php
//顶部导航栏
$this->breadcrumbs=array(
	InformationManagementModule::t('teacherBasicInfo','Teacher Basic Info'),
);
//右侧菜单栏
$this->menu=array(
	array('label'=>InformationManagementModule::t('teacherBasicInfo','Create Basic Info'), 'url'=>array('create')),
	array('label'=>InformationManagementModule::t('teacherBasicInfo','Manage Basic Info'), 'url'=>array('admin')),
	array('label'=>InformationManagementModule::t('teacherBasicInfo','Batch Create Info'), 'url'=>array('batchCreate')),
);
?>

<h1><?php echo CHtml::encode(InformationManagementModule::t('teacherBasicInfo', 'Teacher Basic Info')); ?></h1>
<!--显示数据表格的widget-->
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
