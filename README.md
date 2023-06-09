# Teach On Mars - Flutter Interview Project 🚀

---
## ⚠️⚠️⚠️ IF RUN ON THE WEB ⚠️⚠️⚠️

If you want to run the project on the web, you should request an access by following this link: https://cors-anywhere.herokuapp.com/corsdemo

---

## Code Preview 📸

![](https://github.com/romain-girou/teach_on_mars/blob/main/assets/preview.gif)

### My feedback 🔥

This exercice was very good. Covering all the essentials in order to create a good Flutter App with today's standards. I was totaly new to the Very Good Core template, the Freezed package as well as unit tests. I think I've done a good job coping with those new elements. There is so much more to learn for unit testing, I will most certainly develop more this aspect.<br /><br />
I am available for any questions either by phone or email :
-   📞 07.82.55.09.49
-   📨 romaingirou@hotmail.fr


---
## Instructions 👩‍🎓

Write a simple mobile application composed of a main screen which is a list of widgets and a detail screen.
There are two kinds of widgets :<br />
-  The picture<br />
-  The post<br />

---
## Design 📸

<img src="/assets/readme.png" alt="Alt text" title="Pictures App">


https://www.figma.com/file/rwi8v7dlTF0uHptuG9uKzG/Test-technique

(if you use an account to login (or subscribe, it’s free) you’ll get access to the inspector). The application will use the following REST API to get its data:
    https://interview-dev.teachonmars.com/interview-api.php


Here is a sample data returned by this API:

```JSON
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
        "excerpt": "Douglas figured the best way to succeed was to do the opposite of what he'd been doing all his life...",
        "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis nulla porta a. Curabitur ac urna nec velit suscipit commodo. Suspendisse potenti. Aliquam cursus velit ut est aliquam vehicula. Morbi tempus varius mi volutpat semper. Curabitur blandit, quam ut tristique vulputate, odio felis eleifend eros, at varius orci sapien non risus. Cras at leo eget nisi suscipit congue. Aliquam commodo pretium nisl, quis mollis dui eleifend et. Cras sed pulvinar urna.\n\nSed at sem molestie, luctus urna in, placerat libero."   
    }
]
```

---
## Instructions 🤌

Your app **MUST**:
- Use the Very Good Core template ✅<br />
- Use the Bloc package ✅<br />
- Use the Freezed package ✅<br />
- Use Material 3 theming capabilities ✅<br />
- Show a loader while requesting the API ✅<br />
- Show an appropriate error message if the API fails ✅<br />
- Go the the detail page when a widget is tapped ✅<br />

Your app **MAY** (it’s just bonus points, make none of them, only a few or all. You can even add anything else that it’s not mentioned 😉:<br />
- Have unit tests ✅<br />
- Be responsive and work on a web browser ✅<br />
- Use the internationalization provided by Very Good Core (translate the title of the app bar and/or any other text that’s coming from the app and not from the API) ✅<br />
- Make the list an infinite scroll (just call again the api when you arrived at bottom) ✅<br />
- Use animations ✅<br />
- Use a cache library for the images ✅<br />
- Have a splash screen ✅<br />
- Have a settings button to switch between light and dark mode ✅<br />