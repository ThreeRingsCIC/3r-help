---
name: roles
title: Roles
---

[docs\_box\_row] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/role-workflows" text="Next: **Role Workflows**" /] [/docs\_box\_row]The roles tool is used to give volunteers different abilities on the system based on the position they hold in your organisation. For example, you may have a Coordinator or Director role setup, which will allow people assigned this role to create and delete users from the system.

[alert\_box type="info" class="corners"] At least one Role will already be defined. This is called a C_ore Role_ - organisations must have at least one Core Role (but can create more), and every volunteer must have at least one Core Role. The default Core Role is **Everyone**. The volunteer's Core Role defines the basic permissions available to that volunteer. Other roles can add further permissions but no volunteer role can have a lower level of permissions than their Core Role(s) give.[/alert\_box]

# The Roles Table

On the main Roles page, there is the roles table. This lists all the current Roles on the system, and explains the permissions granted by each role, as well as which volunteers have been assigned that role. The list of Roles runs down the left hand side of the table, and the list of permissions and other details run along the top. [caption id="attachment\_3677" align="alignnone" width="1024"][![Screenshot of the Roles Table as of Milestone: Zirconium](https://www.threerings.org.uk/wp-content/uploads/2017/03/Roles-Table-Zirconium-1024x507.png)](https://www.threerings.org.uk/wp-content/uploads/2017/03/Roles-Table-Zirconium.png) The Roles Table for an organisation with a number of different Roles. Click to enlarge.[/caption]

### Adding a Role

Click the `Add a New Role` button underneath the table and enter a name for the role in the box. You can also choose to enter a description and suffix. The suffix will be displayed after the name of every volunteer who holds this role in square brackets i.e. if you choose A as a suffix: Name[A]. Click `Add`. The permissions for the role can now be edited by clicking the appropriate symbols in each column of the table to edit these permissions for the role.

#### 

### Changing the Permissions of a Role

Locate the Role you wish to modify in the Roles Table. The permissions for the Role can be edited by clicking the appropriate symbols in each column of the Roles Table.

#### 

The following permissions need to be defined for each role:

| **Permission** | **Options** |
| **News** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot view or manage news items

[![Quarter Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)View - Volunteers with this role can view news items, but not manage them

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)Self-Manage - Volunteers with this role can view and create news items, and can edit and delete news items they have created themselves

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)Manage - Volunteers with this role can view news items as well as add, edit and delete them

 |
| **Events** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot view or manage events

[![Quarter Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)View - Volunteers with this role can view events, but not manage them

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)Self-Manage - Volunteers with this role can view and create events items, and can edit and delete events which they have created themselves

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)Manage - Volunteers with this role can view events as well as add, edit and delete them

 |
| **Access** | 

This property controls which Core Roles each Role can View or Manage. Click on the `Edit` button to change the Access permissions for the various Core Roles.

[alert\_box type="info" class="corners"]See below for further information on Directory Access settings for Core Roles[/alert\_box]

 |
| **Self-manage** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot manage their own Directory pages (but can change their own passwords)

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role edit the details on their own Directory page (In accordance with the Properties settings.) (Volunteers with this role can change their own passwords)

[alert\_box type="info" class="corners"]A volunteer's ability to change specific Directory properties can be limited in [Admin\>Properties](https://www.threerings.org.uk/help/help/admin/properties/)[/alert\_box]

 |
| **Export** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot export the information of volunteers as a spreadsheet

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can export the information of volunteers as a spreadsheet

 |
| **Sleepers** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot view the information of sleeping volunteers (those who have left the organisation)

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can view the information of sleeping volunteers (those who have left the organisation)

 |
| **Permissions** | Links through to the [Rota Management tool](https://www.threerings.org.uk/help/help/admin/rota/) |
| **Rules** | Links through to the [Rota Rules tool](https://www.threerings.org.uk/help/help/admin/rules-and-shifts/) |
| **Email** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot send emails from Comms

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can send emails from Comms

 |
| **Bulk Email** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot send emails to many volunteers at the same time using Comms

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can send e-mails to many volunteers at the same time using Comms

[alert\_box type="info" class="corners"]The number of messages defined as 'Bulk Email' is set in [Admin\>Email](https://www.threerings.org.uk/help/help/admin/email/)[/alert\_box]

 |
| **SMS** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot send SMS (Text) messages using Comms

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can send SMS (Text) messages using Comms

 |
| **Bulk SMS** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot send SMS (Text) messages to many volunteers at the same time using Comms

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can send SMS messages to many volunteers at the same time using Comms

[alert\_box type="info" class="corners"]The number of messages defined as 'Bulk SMS' is set in [Admin\>Text Messages](https://www.threerings.org.uk/help/help/admin/text-messages/)[/alert\_box]

 |
| **Comments** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot see any Comments made on any shifts

[![Quarter Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-View.png)View - Volunteers with this role can view any Comments made on a shift, and will see a small 'speech bubble' icon on the Rota to alert them to the fact a Comment has been made on that shift.

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)Comment - Volunteers with this role can see any Comments that have already been made, and can write new Comments

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)Manage - Volunteers with this role can see any existing Comments, write new Comments, or Delete any other Comment.

[alert\_box type="info" class="corners"]In order for anyone to create Comments, the Comments function must be enabled as a Rota Enhancement in [Admin\>Features](https://www.threerings.org.uk/help/help/admin/features-logs-themes-maintenance-and-invoicing/)[/alert\_box]

 |
| **Filestore** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot see the Filestore or access anything stored there

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)View - Volunteers with this role can access files in the Filestore that have been tagged as accessible to this role. Depending on the permissions applied to the various files or folders, they may be able to upload and delete files

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)Manage - Volunteers with this role can access all files and folders in the Filestore and change the Filestore permissions governing who is allowed to access, download, upload, or delete Filestore contents.

[alert\_box type="info" class="corners"]Filestore Folder permissions for Roles are set through the [Filestore folder permissions](https://www.threerings.org.uk/help/help/filestore/navigating-the-filestore-folder-permissions-and-moving-files-about/)[/alert\_box]

 |
| **Wiki** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot use wikis in _Three Rings_

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)View - Volunteers with this role can view any wiki. Can edit any wiki that is unlocked

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)Manage - Volunteers with this role can view any wiki and edit any wiki that is unlocked, and can lock, unlock, delete, and create wikis

 |
| **Stats** | 

[![Empty Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-None.png)None - Volunteers with this role cannot access the Stats tool

[![Half Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Self.png)Self-View - Volunteers with this role can view their own data (i.e. their starchart) only

[![Full Circle](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Circle-Manage.png)View - Volunteers with this role can view any report using the Stats tool

 |
| **Admin** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - Volunteers with this role cannot access the Admin Tab and the admin tools.

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - Volunteers with this role can access the Admin Tab and the admin tools.

[alert\_box type="alert" class="corners"] **WARNING:** _Giving a volunteer Admin status means they can give themselves any additional permissions they want_[/alert\_box]

 |
| **Default for new volunteers?** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - This role can only be given to a volunteer subsequently.

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - This role will be assigned automatically to newly created accounts. Additional roles can be assigned individually.

 |
| **Core?** | 

[![Permissions Cross](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Cross-1.png)No - this is not a Core Role

[![Permissions Tick](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)](https://www.threerings.org.uk/wp-content/uploads/2016/11/Permissions-Tick-1.png)Yes - This is a Core Role

[alert\_box type="info" class="corners"]Core Roles can be used to assign a default set of permissions to a particular _type_ of volunteer (for example, Listening Volunteers, or Rhymetime). You can also define which Roles can View or Manage specific Core Roles using the Directory Access tool.

Most organisations operate with just one Core Role.[/alert\_box]

 |
| **Who has this role?** | Click on the link to see a list of the volunteers who have this role |

### 

### Setting Directory Access on Core Roles

To edit a Role's Directory Access level, click the `Edit` button in the Roles table. You will be given the option to set that Role's Directory Access permissions in relation to other Core Roles using the drop-down boxes. Each Role can be assigned one of three levels of Visibility permission in relation to a Core Role:

- `[blank]` _ie, no permissions_
- `View`
- `Manage`

If a Role gives no Access to a Core Role, that Core Role (and any volunteers who have it) will be invisible to users with that Role in the Directory (unless they have another Role which grants View or Manage permissions over that Core Role). If a volunteer has a Role which gives View permissions on a Core Role, they will be able to see all the volunteers with that Core Role in the Directory. If a volunteer's Role grants Mange permissions on a Core Role, they will be able to Manage all the volunteers with that Core Role in the Directory. [alert\_box type="alert" class="corners"]Remember that Roles are _additive_. If a volunteer has one Role which allows them to View or Manage a particular Core Role, they will always be able to do so (even if they have another Role which does not have Directory Access View or Manage permissions)[/alert\_box]

[alert\_box type="info" class="corners"] **Top Tip:** make sure your main admin role (usually Three Rings Champion) has Manage access to all Core Roles or you will 'lose' volunteers[/alert\_box]

### Editing a Role's Name

Locate the role you wish to edit in the table and click the `Edit` button for the role. Enter a new name for the role in the box. You can also choose to add /modify the description and suffix. Click the `Save Changes` button.

### Finding out How Many Volunteers are Assigned to a Role

Locate the role you wish to find out about in the table and then the column labelled `Who has this role?` Click on the link that says `x volunteers` (where x is a number depending on your organisation) This will take you to a list of volunteers assigned to the role.

### Adding Volunteers to a Role

Locate the role you wish to add volunteers to in the table and click the `Add Volunteers` button. Tick the boxes next to the volunteers you would like to give this role to and then click `Submit`. You can use the '`Check/uncheck all`' tickbox at the foot of the page to quickly select or deselect every volunteer if you want to add a lot of volunteers at once.

### Removing Volunteers from a Role

[alert\_box type="info" class="corners"] Every volunteer must have at least one Core Role, so this should have the minimum level of permissions you wish that volunteer to have.[/alert\_box] Locate the role you wish to remove volunteers from in the table and click the `Remove Volunteers` button. Tick the boxes next to the volunteers you would like to remove this role from and then click `Submit`. You can use the '`Check/uncheck all`' tickbox at the foot of the page to quickly select or deselect every volunteer if you want to remove a lot of volunteers at once.

[docs\_box\_row] [docs\_box url="/help/admin/roles/deleting-simulating-lending-roles" title="Read more: Deleting, Simulating, and Lending Roles" /] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/role-workflows" text="Next: **Role Workflows**" /] [/docs\_box\_row]

####
