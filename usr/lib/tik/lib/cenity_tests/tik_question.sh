#!/bin/sh

. ./tik_functions_test

d_test --question --no-wrap --title="Begin Installation?" --text="Once the installation begins the changes to the selected disk are irreversible.\n\n<b>Proceeding will fully erase the disk.</b>\n\nContinue with installation?"

d_test --question --text="Do you really want to quit?"

d_test --width=600 --question --icon=security-low-symbolic --title="Warning" --ok-label="Cancel Installation" --cancel-label="I Understand, Proceed Anyway" --text="${preamble}\n\nReason: <b>SecureBoot Disabled</b> and ${reason}\n\n${secureboot_warning}"

d_test --question --no-wrap --cancel-label="No, Delete Backup" --title="Existing user backup detected" --text="These users can be restored to the new installation\n\nWould you like to use this backup?"

d_test --question --no-wrap --title="Backup users from the existing install?" --text="These users will be restored to the new installation."
