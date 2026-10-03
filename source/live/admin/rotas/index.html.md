---
name: rotas
title: Rotas
---

[docs\_box\_row] [docs\_box url="/help/rota" text="Back to **Rota Help**" /] [docs\_box url="/help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/rules-and-shifts" text="Next: **Rules and Shifts**" /] [/docs\_box\_row]The Rota tool is used to view a list of all rotas, and manage their properties and permissions. Accessing the Rota tool by selecting the `Admin` tab, and then on `Rota` will display a table of your existing rotas. **[![Part of the Admin > Rotas page](https://www.threerings.org.uk/wp-content/uploads/2016/04/AdminRotas-1024x522.png)](https://www.threerings.org.uk/wp-content/uploads/2016/04/AdminRotas.png)**

#### Adding a new rota

To add a new rota, select the `Add a new Rota` button. You'll be invited to enter a name for the new rota; after you have selected the `Create` button you will see the Rota Permissions screen so you can set who can access the new rota. [alert\_box type="alert"]While the above process will create your new rota and it will appear on this list, nobody will be able to see it unless you assign permissions to it. You can read more about assigning permissions below.[/alert\_box]

#### Changing a rota's name

To change a rota's name, replace the existing name in the text box, and select `Rename`

#### Changing a rota's style

You can change the colour that an individual rota appears as on the overall rota by selecting the `Change` button, and using the colour palette to select the desired colour. Alternatively, if you know the code of the colour you want, you can type it directly into the box. [alert\_box type="info"]Remember the colour will be a background to text. Check that the string of numbers in the colour box is easy to read.[/alert\_box] You can change the colour of the rota's stars that appear on star charts in the stats section, and on volunteers' directory pages, by selecting the `Change` button and selecting one of the options.

#### Changing rota permissions

To edit a rota's permissions, select the `Edit Permissions` button. This will take you to a new page that displays the existing permissions, with a number of editing options. Rota permissions come in five levels:

- **None** - Users with the specified role cannot see this rota, nor change it in any way.
- **View** - Users with the specified role can see the rota, and thus who is signed up for each shift on the rota, but cannot change the rota in any way.
- **Self-Manage** - Users with the specified role can see the rota AND can change their own shifts (limited by the rota's rules), but cannot alter other's shifts.
- **Manage** - Users with the specified role can see the rota AND can change anyone's shifts i.e. sign anyone up for a shift, pull anyone out of a shift.
- **Administer** - Users with the specified role can see the rota can change anyone's shifts i.e. sign anyone up for a shift, pull anyone out of a shift, AND create and delete shifts in this rota.

[alert\_box type="info"]Remember: permissions in Three Rings are _additive_. A volunteer will always have the **highest** level of permission granted by any of their roles.[/alert\_box]

**Adding new permissions** - you can add a new set of permissions for a rota under the 'Add Another Role' title. Select the role you wish to assign permissions to from the first drop-down menu, and the level of access you wish the role to have.

**Editing a role's permissions** - once you have assigned permissions to a role, it will appear in the table. You can then edit the permissions by using the drop-down boxes in the table. Once you have made the changes, select `Save Changes`, which will return you to the Admin\>Rota page. If you want to remove rota permissions from a role altogether, select the `Remove` button.

**Recurring Shifts** - the drop-down menu under 'Recurring Shifts' sets the minimum level of permissions required before volunteers can sign up to recurring shifts on the selected rota. If you do not want anybody to be able to sign up to recurring shifts on this rota, then you can select the `Nobody` option.

[alert\_box type="info"]Selecting 'Manage' or 'Administer' will allow individuals with these permissions to sign anybody up to recurring shifts. Selecting 'Self-manage' will allow individuals with at least these permissions to sign themselves, but no one else, up to recurring shifts.[/alert\_box]

**Closing Shifts** - under 'Closing Shifts', you can specify whether volunteers with Manage permissions can close and re-open shifts on this rota by using the check box next to [Rota Name] Manager. You cannot remove this permission from Administrators.

[alert\_box type="info"]By default, Shifts will be automatically closed at their scheduled start time if it's understaffed, i.e. the minimum number of volunteers hasn't been reached. You can stop this from happening by selecting the Turn Auto-Close Off button, or reactivate it by selecting the Turn Auto-Close On button.[/alert\_box]

#### Deleting a rota

To delete a rota, select `Delete Rota` underneath the rota's name, and confirm when the system prompts you to. [alert\_box type="danger"]Make sure that you are deleting the correct rota! Deleting a rota will: Delete ALL shifts, past, present and future, for this rota. Remove ALL Stats associated with the rota. Delete ALL shift patterns for this rota. Prevent ALL signups to this rota. This is brutal - so the system requires you to enter the number of shifts you will be deleting as a confirmation. [/alert\_box] If you want to stop running certain shifts and delete future shifts, but keep all historical data, select the first shift you want to delete and, As an Administrator, select **Stop running this shift**. You may want/need to do this for a number of shifts. You may also want to control visibility of the rota by changing its associated permissions.

#### Changing rota display order

You can change the order in which shifts are displayed on the rota, both on Admin\>Rota and on the `Rota` tab by making use of the up and down arrows on the left hand side of the table. An up arrow will move a rota up one level everywhere; a down arrow will move it down one level everywhere.    
  
 [alert\_box type="info"]Shifts are displayed on the Rota tab in order of start time. If the start times are the same you can set whether shorter or longer shifts are displayed first by a setting in Admin \> Localisation. If the start and end times are the same, the order in Admin \> Rotas table will determine the display order in the Rota tab[/alert\_box]

#### Changing a rota's shifts and rules

You can change a rota's shifts and rules by selecting the `Edit Shifts` and `Edit Rules` buttons respectively. This will take you to the [Shifts tool page or the Rules tool page](/help/admin/rules-and-shifts)

#### Setting the number of open phone lines

[alert\_box type="info"]This option will only appear on the Admin\>Rota page if you are a call-taking organisation signed up to regional reporting of phone line statistics[/alert\_box] The number of open phone lines denotes how many phone lines will be covered for callers when a shift is fully staffed. Under the 'Number of Phone Lines Open' heading, type in the number of phone lines covered on a shift on this rota, or use the buttons on the edit box to set a value, and select the `Save` button.

[docs\_box\_row] [docs\_box url="help/rota" text="Back to **Rota Help**" /] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/rules-and-shifts" text="Next: **Rules and Shifts**" /] [/docs\_box\_row]
