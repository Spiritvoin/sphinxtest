<?php
$this->widget('zii.widgets.CListView', array(
        'ajaxUpdate'=>false,
        'dataProvider'=>$dataProvider,
        'itemView'=>'_view',
        'template'=>"{items}\n{pager}",
    )); ?>