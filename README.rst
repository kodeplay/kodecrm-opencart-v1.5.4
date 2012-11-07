KodeCRM module for Opencart 1.5.3.x
===================================

This package has been successfully tested for a standard OpenCart
1.5.3.x. Don't use this module with previous or newer Opencart
versions.

Installation Instructions
-------------------------

With Vqmod
~~~~~~~~~~

* Copy all files from the 'added' directory to your target
  installation directory of OpenCart.

* Now a very important step!!!  Inside the kodecrm extension that you
  downloaded go to added -> vqmod -> xml -> kodecrm.xml go to line
  number 72 replace ``__your theme name__`` with your actual theme name
  examples are 'default', 'shoppica' and so on.

  This step is important and many users are missing this step. Please
  take care. Contact info@kodeplay.com for any doubts.


Without Vqmod
~~~~~~~~~~~~~

* You may want to do a backup copy of the following files because
  these will be overwritten::

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl


* Copy the files from the 'added' directory to your target
  installation directory of OpenCart.

* There are a few files that need to be modified which are as
  follows::

    admin/controller/common/header.php
    admin/language/english/common/header.php
    admin/view/template/common/header.tpl
    catalog/controller/common/footer.php
    catalog/view/theme/default/template/common/footer.tpl

Now open the changes.txt file in this directory and manually add the
lines of code to these files as per the instructions in changes.txt


After adding files, give permissions in opencart admin
------------------------------------------------------

Once you have added the files using either of the methods above, it's
time to give permission to the admin user to access these two actions::

  kodecrm/chat
  kodecrm/feed

You can do so from System -> Users -> User Groups [Edit]


Signup for a new account at KodeCRM
-----------------------------------

Now sign up for kodecrm here - http://kodecrm.com/signup/ 

When you login for the first time, you will be shown integration
wizard for Opencart. Here all instructions are arranged in a step by
step manner. You will notice that some steps already covered above in
this readme will be repeated there. It's for the benefit of those who
signup first in KodeCRM before installing the module. If you have
already carried out a step, just skip it by clicking on "Next"
 

Customizations
--------------

Once you have chat widget and product feeds up and running, you can
customize the appearance of the widget to match the look and feel of
your website/online store. You can also change the language. Read more
about language support in KodeCRM here - http://kodecrm.com/languages

If you want to suggest some customization, feel free to contact us.


Getting help
------------

For any doubts or queries, you can send us an email at any of the
following email addresses

- info@kodeplay.com
- sales@kodeplay.com
- vineet.naik@kodeplay.com

KodeCRM
http://www.kodecrm.com

Follow us on twitter @kodecrm for latest updates

