 ________________
|                |
| KodeCRM Module |
|________________|



Installation Instruction 
=========================

With Vqmod 

* Copy the files from the 'added' directory to your target 
installation directory of OpenCart.

* Give permission to to the following from System -> Users -> User Groups [Edit]
    kodecrm/chat
    kodecrm/feed 
---------------------------------------------------------------------------------------------------

Without Vqmod
* You may want to do a backup copy of the following files because these will be overwritten:

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl


* Copy the files from the 'added' and 'modified' directory to your target installation directory of OpenCart.

* After installation, the following menu files are now overwritten:

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl

If your above files already contained changes from
other OpenCart addon modules, then you have to manually merge
your backup copies from step 1) with the changes done to them
from this module, using a text editor.
TIP: You can use changes.txt file for reference

* Give permission to to the following from System -> Users -> User Groups [Edit]
    kodecrm/chat
    kodecrm/feed 


Further help and customized versions
====================================

This package has been successfully tested for a standard OpenCart 1.5.x
Don't use previous Opencart versions with this module.

If you need a customized version of this module,
let us know and we can create it.

You can contact us at info@kodeplay.com.

	KodeCRM
	http://www.kodecrm.com
