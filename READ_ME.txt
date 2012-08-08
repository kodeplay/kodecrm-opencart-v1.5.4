 ________________
|                |
| KodeCRM Module |
|________________|



Installation Instruction 
=========================

With Vqmod 

* Copy the files from the 'added' directory to your target
installation directory of OpenCart.

---------------------------------------------------------------------------------------------------

Without Vqmod
* You may want to do a backup copy of the following files because these will be overwritten:

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl


* Copy the files from the 'added' directory to your target installation directory of OpenCart.

* There are a few files that need to be modified which are as follows - 

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl

Now open the changes.txt file in this directory and manually add the
lines of code to these files as per the instructions in changes.txt

---------------------------------------------------------------------------------------------------

* Once you have added the files using either of the methods above,
    it's time to give permission to the admin user to access these two actions: 
    kodecrm/chat     
    kodecrm/feed

    You can do so from System -> Users -> User Groups [Edit]    


Further help and customized versions
====================================

This package has been successfully tested for a standard OpenCart 1.5.x
Don't use previous Opencart versions with this module.

If you need a customized version of this module, let us know and we
can create it.

You can contact us at info@kodeplay.com.

KodeCRM
http://www.kodecrm.com
