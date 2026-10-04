---
name: security
title: Security
---

- [Back to **Admin Help**](../../admin/)
- [Previous: **Email Templates**](../../admin/templates/)
- [Next: **Privacy**](../../admin/privacy/)

The Security page allows you to adjust certain _Three Rings_ security settings to adjust the balance between security and convenience.

## Logging In

There are four ways to access your system. The most usual is by entering a username and password but you may also be able to use a linked account (such as a Google account). You can also use an API key - this is part of the facility to write your own extensions to Three Rings documented at [www.3r.org.uk/api](http://www.3r.org.uk/api). The final route is via Feed Keys. The most common use of this mechanism is to link Three Rings and user calendar software (such as Google Calendar, Microsoft Outlook, or Apple iCal).

## Password Resets

If `Lock self-managed accounts when they reset their passwords? `is checked, users with self-managed accounts who have reset their passwords will be locked out until they make contact with the Support Person at the organisation. This replicates the control Support People have over password resets for users with organisation-managed accounts. You can either enable or disable this by checking and unchecking the box.

## Two-Factor Authentication

Two-factor authentication allows you to restrict access to the Admin tab to users who have two-factor authentication.

[alert\_box type="info" class="corners"]Enabling this feature doesn't change the need for a user to have a Role that grants them permission before they can access the Admin tab - it just means that users with appropriate Role permissions must use two-factor authentication before doing so.[/alert\_box]

Two-factor authentication provides an extra layer of security - if a malicious person somehow discovered an Admin's _Three Rings_ username and password, they still couldn't access the Admin tools without also having access to the Admin's second factor. _Three Rings_ supports three different models of two-factor authentication: [Yubikeys](https://www.yubico.com/faq/yubikey/) and Google Authenticator (which generates a code). The third method is Backup Codes that can be used in case of losing access to your primary method of two-factor authentication. If this option is enabled, Admins clicking on the Admin tab will be asked to provide either their Yubikey or an authentication code as well as providing their password.

[alert\_box type="warning" class="corners"]Two-factor authentication is disabled by default. Two-factor authentication can be [set up by volunteers on their Account Page](/help/account/additional-options).[/alert\_box]

[alert\_box type="success" class="corners"]Having two-factor authentication significantly improves the security of your organisation.[/alert\_box]

## Email Attachments

You can configure the behaviour of Email Attachments sent via the Comms tab to determine whether or not volunteers need to be logged in to their _Three Rings_ account to access attachments. You can also disable email attachments completely if you wish.

## Virus Scanner

The system contains a virus scanner that scans files in the Filestore and Attachments to flag any that contain viruses. You may, if you wish, allow unscanned files to be downloaded, but it is more secure to keep this option unticked.

- [Back to **Admin Help**](../../admin/)
- [Previous: **Email Templates**](../../admin/templates/)
- [Next: **Privacy**](../../admin/privacy/)
