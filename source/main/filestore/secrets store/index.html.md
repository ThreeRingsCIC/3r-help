---
name: secrets%store
title: Secrets Store
---

The Secrets Store is a location in which you can store restricted information. It is not a location to store confidential files. It is somewhere to keep passwords or multi-factor authentication tokens. (The best way to store confidential files is to password-protect them in the application when you create them)

The access controls are the same as other filestore folders; it is based on roles. However, volunteers accessing secrets are recorded and, if their account is subsequently slept, a maintenance task is raised suggesting that the secret may need to be changed.

If you don't wish to use the secrets store, you can hide it by de-selecting the relevant option in Admin \> Features.
