---
name: deleting-simulating-lending-roles
title: Deleting, Simulating, & Lending Roles
---

[docs\_box\_row] [docs\_box url="/help/admin/roles" text="Back to Roles" /] [docs\_box url="help/admin" text="Back to Admin Help" /] [docs\_box url="/help/admin/role-workflows" text="Next: Role Workflows" /] [/docs\_box\_row]

## Deleting a Role

Locate the role you wish to delete in the table and click the `Delete` button. When the popup asks if you really mean to delete it, click `OK` appears. When the next page loads, you should see a dialoge box confirming that the role was successfully deleted.

## Simulating Roles

If you want to see how _Three Rings_ looks to someone with a different Role to yours (for example, to check how someone without Admin rights would see your organisation's _Three Rings_ account, you can do this with the Role Simulator in Admin \> Roles. Uncheck the boxes for those roles you want to be without, and then click the `Simulate` button. You'll be taken back to the Overview page as if you only had the Role(s) you left assigned to yourself when you clicked `Simulate`. [alert\_box type="info" class="corners"]To end the Role Simulator, log back out of _Three Rings_, and then log in again[/alert\_box]

## Lending Roles

Lending roles allow you to lend your volunteers (based on the roles they hold) to other, affiliated, organisations (for example, Samaritans may share roles between different branches in a region). These organisations can then interact with these individuals as if they were their own volunteers.

#### Lending a Role to Another Organisation

Scroll to the bottom of the roles page and locate the role lending selection box. In the first box, select the role you would like to lend. In the second box, select the organisation you wish to lend the role to, then click the `OK` button. [alert\_box type="info" class="corners"] The permissions of a lent role are set by the organisation you are lending the role to.[/alert\_box]

#### Ending the Loan of a Role

Scroll to the bottom of the roles page, locate the role you wish to stop lending and click the `Cease Lending` button for the role.

#### Understanding Multiple Roles

[alert\_box type="info"]The key to understanding multiple roles is that when a volunteer has more than one role, **permissions are always _additive_** but **the strongest rule always applies**.[/alert\_box] A volunteer with multiple Roles will have all the permissions conferred by each of those roles. You cannot use a role to reduce the permissions associated with a particular volunteer. One volunteer can have multiple Roles, each of which can have one signup rule per rota. So, volunteers can be affected by multiple signup rules. For example: if Boris is a volunteer with two roles – 'Rota Manager' and 'Mentor', there might be a rule that says “There can be a maximum of 1 Mentor per shift on the Duty Rota”, but no restrictions on how many Rota Managers can be on shift at once. In this example, _Three Rings_ can’t apply both rules, so it does what it always does with Roles: **the strongest rule applies**. There are no signup rule associated with his Rota Manager role, but Boris will be limited by the stronger Signup Rule that his “Mentor” Role imposes: if another Mentor is already signed up to a shift, Boris won't be allowed to sign up alongside him. Because of this, Admins should be careful when assigning multiple Roles to volunteers, and make sure that the strongest role (the role that has the **most restrictive** rules) still allows that volunteer all the permissions they need to perform their duties.

[docs\_box\_row] [docs\_box url="/help/admin/roles" text="Back to Roles" /] [docs\_box url="help/admin" text="Back to Admin Help" /] [docs\_box url="/help/admin/role-workflows" text="Next: Role Workflows" /] [/docs\_box\_row]
