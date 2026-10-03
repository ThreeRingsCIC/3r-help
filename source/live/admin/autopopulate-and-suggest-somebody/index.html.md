---
name: autopopulate-and-suggest-somebody
title: 'Rota Automation: Autopopulate and Suggest Somebody'
---

[docs\_box\_row] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/closures" text="Previous: **Closures**" /] [/docs\_box\_row]

[alert\_box type="info" class="corners"]If you can't see the Automation panel on the Admin tab, you may need to enable Rota Automation in the [Features](/help/admin/features) panel first.[/alert\_box]

If enabled, both the Autopopulate and Suggest Somebody tools are run from the Rota tab. The settings in Admin\>Rota Automation determine how these tools will behave when run.

## Managing Autorota rulesets

Autopopulate (or just ‘Autopop’) attempts to fill the shifts within a given period on the Rota. To do this, it uses Autorota rulesets.

#### Creating an autorota ruleset

To create a new Autorota ruleset, click the `New Ruleset` button at the bottom of the page. You can also name the ruleset with the `Name:` field, to help identify it later. Use the `Rotas` checkboxes to define which Rota(s) the ruleset will apply to. The `Behaviour` settings allow you to configure how the time period that Autopop will attempt to fill, and the scope sets how far on either side of that window the system will look when considering the different factors affecting its choice of volunteers. [alert\_box type="alert" class="corners"]Larger time period and scope settings exponentially complicate the number of factors Autopop and Suggest Somebody need to take into account before completing their work – shorter periods will result in much faster results[/alert\_box] If you check the `Ignore Signup Window` checkbox, Autopop and Suggest Somebody will be able to assign volunteers to shifts ahead of the window in which volunteers can sign themselves up. The `Preferred Shifts Only` option means Autopop will only sign volunteers up to shifts that fall within preferred time slots.

#### Factors

Factors allow you to set what the Autopop and Suggest Somebody tools should consider _most important_ when making their decisions. Enable individual factors with the checkboxes and set their priority. In the event of a conflict between two factors, the tools will give priority to more important factors first. [alert\_box type="info" class="corners"]Setting multiple factors to have the same importance reduces the effectiveness of the Factors tool, and should be avoided where possible[/alert\_box]. _Shift Count Weighting_ means the system tries to give each volunteer the fewest possible number of shifts. _Preference Weighting_ makes the system more likely to match volunteers to shifts at their preferred times - if your organisation uses shift preferences. _Distance Weighting_ makes the system try to match volunteers to shifts that are farther from their next or past shifts _Favour Fixed-Pattern_ makes system try to give volunteers shifts at times they have previously done shifts. (This cannot be used at the same time as the Variable-Pattern weighting setting.) _Favour Variable-Pattern_ makes the system try to give volunteers different shifts to ones they have previously done. (This cannot be used at the same time as the Fixed-Pattern weighting setting.) _Maximum shifts_ means the system will not give anyone more shifts in the selected period than the value set - enable Maximum Shifts to enter a value to use. When you’re done configuring the Ruleset, click the `Save Ruleset` button to finish.

#### Editing and Deleting Rulesets

To edit an existing Ruleset, click on its name in the list of existing Rulesets. You can make changes in the same way as you would when creating a new Ruleset. When you’re done, click the `Save Ruleset` button. To delete a Ruleset, click on its name in the list of existing Rulesets and then click the `Delete Ruleset` button at the bottom of the page. You will need to confirm the Deletion before the Ruleset is removed.

## Managing "Suggest Somebody..." behaviour

Three Rings can try to find the best volunteers to cover a shift when a Rota Manager is signing others up for shifts. This behaviour can be enabled, disabled, and as altered through this tool. The tick box next to each of the different rotas specifies whether Rota Admins are allowed to sign people up to shifts. It can be useful to disable this if you want to ensure that they've spoken to the person, first. [alert\_box type="info" class="corners"]In order for Suggest Somebody to work, at least one Rota Automation Ruleset must be in place at your organisation.[/alert\_box]

#### Enabling or Editing ‘Suggest Somebody...’ behaviour

Find the `Suggest Somebody....` section, and the Rota you wish to apply it to. From the dropdown, select the Ruleset you want Suggest Somebody to use, and then click the `Save Changes` button.

#### Disabling "Suggest Somebody..." behaviour

Find the `Suggest Somebody....` section, and the Rota that you want to block Suggest Somebody from. In the Ruleset dropdown, select `Never suggest volunteers` and then click the ` Save Changes` button.

[docs\_box\_row] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/admin/closures" text="Previous: **Closures**" /] [/docs\_box\_row]
