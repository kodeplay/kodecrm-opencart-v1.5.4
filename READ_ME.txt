 ________________
|                |
| KodeCRM Module |
|________________|



Installation Instruction 
=========================

With Vqmod 

* Copy the files from the 'added' directory to your target
installation directory of OpenCart.

* now a very important step !!!
inside the kodecrm extension that you downloaded  go to added -> vqmod -> xml -> kodecrm.xml
go to line number 72
replace '__your theme name__'
with 
your actual theme name 
examples are 'default' , 'shopica' and so on 

This step is important and many users are missing this step . please take care . 

contact info@kodeplay.com for any doubts 

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


------------------------------------------------------------------------------------------------------

*  Now sign up for kodecrm here - http://kodecrm.com/signup/
   After signing up , please login to the kodecrm admin dashboard . 
   click on settings -> integration -> javascript snippet
   copy the app id from below code . 
   app id is the value of  _kcrm['app_id'] 
   
   Now paste the app id in your opencart admin panel 
   
   copy the product feed url from opencart admin panel and paste it into Product feed of kodecrm admin dashboard . 
   
   Thats it - you have completed integrating live chat for your online store . 
   for any queries , doubts - please email us on info@kodeplay.com
 

Further help and customized versions
====================================

This package has been successfully tested for a standard OpenCart 1.5.x
Don't use previous Opencart versions with this module.

If you need a customized version of this module, let us know and we
can create it.

You can contact us at info@kodeplay.com.

KodeCRM
http://www.kodecrm.com

