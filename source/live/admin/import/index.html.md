---
name: import
title: Import
---

[docs\_box\_row] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/directory/new" text="Previous: **New Volunteer**" /] [docs\_box url="/help/admin/properties" text="Next: **Properties**" /] [/docs\_box\_row]

Import allows you to create multiple new volunteer accounts at once by uploading a spreadsheet with the volunteer details. This needs to be a CSV file.

[alert\_box type="info" class="corners"]Most spreadsheet and database software can save or export data as a CSV file. If you're unsure how to do it, check that software's Help section.[/alert\_box]

Each row of your spreadsheet should represent one volunteer, and each column should represent a single field to be imported into the Directory. If you have additional columns with data that doesn't need to be imported, that's fine - you can tell the importer to ignore that column. Click the Browse... button and select the CSV file with the volunteers you want to import, then click the Upload button in _Three Rings._

[alert\_box type="warning" class="corners"]Make sure your CSV file includes a column with the usernames you'd like to assign to your volunteers. Remember that uernames must be unique across the whole of _Three Rings_ (not just within your organisation) so you may want to choose a username format that prevents potential conflicts with other organisations (e.g. using a format that includes the organisation's name, initials, or abbreviation).[/alert\_box][alert\_box type="warning" class="corners"]Before uploading your CSV file, make sure all of the Properties you want to import have been added to the Directory in the [Properties](/help/admin/properties) panel.[/alert\_box]

After uploading your file, you'll then be shown the data and be able to select which column in your spreadsheet should be assigned to which Property in the Directory. Once you've finished, click the "Import" button to add all of the new users to your Directory. Any problems or errors will be highlighted.

[alert\_box type="info" class="corners"] **Tips and Tricks:**

- You will need a Username column
- Enter phone numbers with a space in them, for example, 01234 567890, and not 01234567890 because the spreadsheet will drop the leading zero
- Enter dates in ISO 8601 (EN 28601) format, YYYY-MM-DD (for example, 2024-08-30) other formats may work but this is most reliable. You can usually format dates this way in your spreadsheet software.[/alert\_box]

[docs\_box\_row] [docs\_box url="help/admin" text="Back to **Admin Help**" /] [docs\_box url="/help/directory/new" text="Previous: **New Volunteer**" /] [docs\_box url="/help/admin/properties" text="Next: **Properties**" /] [/docs\_box\_row]
