---
name: new-volunteers
title: New Volunteers
---

- [Back to **Directory Help**](../../directory/)
- [Back to **Admin Help**](../../admin/)
- [Previous: **Role Workflows**](../../admin/role-workflows/)
- [Next: **Import**](../../admin/import/)

## Adding a New User to the System

Open the New Volunteer tool from the admin tools page or from the Directory and enter a username for the new user. It is best to choose something that will be memorable to the volunteer.

[alert\_box type="info" class="corners"] Each username must be unique. If a non-unique username is chosen, an `Already in use` will be displayed next to the text field, and you will not be able to create the account until you choose a unique username. Usernames must be unique across all the organisations using _Three Rings_. [/alert\_box]

Optionally, enter additional information about the volunteer. It is strongly recommended that fields with an asterisk be completed. Then choose an appropriate account creation method:

- `Email Password` - This will create the user account, and email their password to the email address you've entered (using the New Volunteer template defined in `Admin>Email Templates`), allowing them to log in and reset their password to one of their choosing.
- `Print Welcome Page` - This creates the user account, and displays a webpage of instructions of how to log in to _Three Rings_ and choose a password. Ideal for users without an e-mail account.
- `View Volunteer` - Creates the user account, but does not issue a password for them. This prevents the user from logging in until a password is generated either using the `Send Password` link on their Directory page or by reference to the `Stats>Last Login` report.

[alert\_box type="warning" class="corners"] If `Email Password` is chosen, but no e-mail address has been specified, an error message will be displayed. [/alert\_box]

**Information about User Details**

[alert\_box type="info" class="corners"] The only mandatory field is Username - though you probably want to add other information as well! [/alert\_box]

- The `Username` field sets the username that the volunteer will use to login to the system.
- The `Friendly Name` field allows another, unofficial name for users to be known by. For Samaritan Branches, this may be replaced with 'Sam Name'.

## Roles

Each user must have at least one Core Role. `Everyone` is automatically selected as the primary role, but you can select another Core Role instead. You can edit permissions associated with roles on the Roles page in the Admin tab.

## Linking Two _Three Rings_ Accounts Together

If a user has a self-managed account and has more than one _Three Rings_ account, you can link them together on this page. This means that when they enter their login details, they’ll be able to choose which account to access.

[alert\_box type="warning" class="corners"] The two different organisations are separate. This feature doesn’t link them together, it just means the user has one password to access both. We recommend that users who use this feature use two-factor authentication to make sure their accounts are extra secure. [/alert\_box]

To link their accounts together, select `Yes` from the drop-down menu at the top and type in their username.

- [Back to **Directory Help**](../../directory/)
- [Back to **Admin Help**](../../admin/)
- [Previous: **Role Workflows**](../../admin/role-workflows/)
- [Next: **Import**](../../admin/import/)
