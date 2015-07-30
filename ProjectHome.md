### Introduction ###
The main purpose of the objectrelationbrowse datatype is to make it possible to create object relations using a variety of list types (AJAX, listbox, list of checkboxes, dropdown, etc.). This release supports an AJAX interface embedded in the edit form.

|Owner|Status|Version|Application|Compatible with|Extension type|professional support available|
|:----|:-----|:------|:----------|:--------------|:-------------|:-----------------------------|
|Sebastiaan van der Vliet|stable|3.0    |eZ publish |4.x            |datatype      |yes                           |


---

### Support ###
If you're experiencing problems installing, configuring, or using this extension and require professional support, please visit:
http://www.contactivity.com/productsupport **---**

### Description ###
To receive the binary files by email, a change to the kernel will have to be made (to kernel/content/collectinformation.php).

Several security features have been added:

One of the most powerful features of eZ publish is the option to create relationships between many kinds of objects. However, the standard 'browse' method used to relate objects proved to be too cumbersome when working with a large number of objects (>100.000) and many relations (>10) per object.
We needed a datatype that would:
- display all available objects for relation in a single list;
- provide functionality to dynamically filter objects from the list on basis of the name of the object and wildcards;
- allow the selection of multiple objects from a list in a single "browse & select" action; and
- store the object relation between objects, so that it would become possible to look up reverse relationships.

We have created the objectrelationbrowse datatype to:
- display all available objects in a single, dynamically filterable list;
- handle a one to one or one to many relationships; and
- store the object relation between objects so a reverse object relation becomes available; and
- instead of the standard browse or the dynamic list, it is also possible to display lists as list boxes, dropdowns or checkboxes.