# Easy-WI ARK Mod / Content Manager

<h3>This is a ARK Mod / Content Manager for the www.Easy-WI.com Webinterface.</h3>

---

<h4>Requirements:</h4>
- curl
- wget
- sudo

---

<h4>What must I edit befor its running?</h4>

Edit inside the two Scripts the masteruser, with your Webinterface User. 

---

<h4>Which functions are available in Ark Mod Manager?</h4>

- Install a single ARK Mod ID
- Install predefined ARK Mods (IDs are inside the "ark_mod_downloader.sh" Script)
- Update all installed ARK Mods IDs
- Update all installed ARK Mods automatically per Cronjob/Crontab (use for auto Update the "ark_mod_updater.sh" and Crontab)
- Remove a single ARK Mod ID
- Remove all ARK Mod IDs

---

<h4>Which Script is what?</h4>

For install, update or remove from Mod IDs, have i the ark_mod_manager.sh written.
Inside this script are all functions, what you are looking for.</br>
Only for Update per Cronjob/Crontab have i the ark_mod_updater.sh written.

---

<h4>How works the Updater per Cronjob?</h4>

Place the update module into the "root" directory.</br>
Open your console (Putty/WinSCP or what you use) and paste this into:</br>
echo "20 */1 * * * your_Directory/ark_mod_updater.sh >/dev/null 2>&1" >> /etc/cron.d/ark_mod_updater
</br>
Don't forget the crontab to be restarted after editing ('systemctl restart cron').

---

<h4>How does the support work?</h4>

I give only in Github Support. No Private or another way are supported!

