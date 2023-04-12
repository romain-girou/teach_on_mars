# Teach On Mars - Flutter Interview Project 🚀

Write a simple mobile application composed of a main screen which is a list of widgets and a detail screen.
There are two kinds of widgets :
    ● The picture
    ● The post

---

## Photos 🚀


https://www.figma.com/file/rwi8v7dlTF0uHptuG9uKzG/Test-technique

(if you use an account to login (or subscribe, it’s free) you’ll get access to the inspector). The application will use the following REST API to get its data:
    https://interview-dev.teachonmars.com/interview-api.php

---

Here is a sample data returned by this API:

JavaScript
[
{
"id": "64351eb7e34c4",
"type": 2,
"title": "No-Brainer",
"picture": {
    "width": 1200,
    "height": 800,
    "url": "https://picsum.photos/1200/800"
},
        "author": "Romain Briaux"
    },
    {
        "id": "64351eb7e35fd",
        "type": 1,
        "title": "Jumping the Gun",
        "excerpt": "Douglas figured the best way to succeed was
to do the opposite of what he'd been doing all his life...",
        "text": "Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus
est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at
congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis
nulla porta a. Curabitur ac urna nec velit suscipit commodo.
Suspendisse potenti. Aliquam cursus velit ut est aliquam
vehicula. Morbi tempus varius mi volutpat semper. Curabitur
blandit, quam ut tristique vulputate, odio felis eleifend eros,
at varius orci sapien non risus. Cras at leo eget nisi suscipit
congue. Aliquam commodo pretium nisl, quis mollis dui eleifend
et. Cras sed pulvinar urna.\n\nSed at sem molestie, luctus urna
in, placerat libero."
} ]

