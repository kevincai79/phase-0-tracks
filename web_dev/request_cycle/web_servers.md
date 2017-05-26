## What are some of the key design philosophies of the Linux operating system?
1. Small is Beautiful
2. Each Program Does One Thing Well
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
7. Use Shell Scripts to Increase Leverage and Portability
8. Avoid Captive User Interfaces
9. Make Every Program a Filter

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A virtual private server (VPS) is a virtual machine as a service by an Internet hosting service. A VPS runs its own copy of an operating system, and people may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS.
#### *Advantages of using a VPS*
- The very best thing about virtual machines: they offer a safe place to experiment with operating systems, the command line, and web development in general.
- More stability and reliability for basic web hosting needs.
- More control compared to shared hosting.
- Green technology, environmentally friendly, and more efficient use of resources.
- Easy scalability when needed.
- Cost effective solutions for small websites

## Why is it considered a bad idea to run programs as the root user on a Linux system?
- You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).
If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.
- Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...
- You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.