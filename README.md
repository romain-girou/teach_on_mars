# Teach On Mars - Flutter Interview Project 🚀

Write a simple mobile application composed of a main screen which is a list of widgets and a detail screen.
There are two kinds of widgets :
    ● The picture
    ● The post

---

## Photos 📸


https://www.figma.com/file/rwi8v7dlTF0uHptuG9uKzG/Test-technique

(if you use an account to login (or subscribe, it’s free) you’ll get access to the inspector). The application will use the following REST API to get its data:
    https://interview-dev.teachonmars.com/interview-api.php

---

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

Your app MUST:
    ● Use the Very Good Core template
    ● Use the Bloc package
    ● Use the Freezed package
    ● Use Material 3 theming capabilities
    ● Show a loader while requesting the API
    ● Show an appropriate error message if the API fails
    ● Go the the detail page when a widget is tapped
    
Your app MAY (it’s just bonus points, make none of them, only a few or all. You can even add anything else that it’s not mentioned ;-):
    ● Have unit tests
    ● Be responsive and work on a web browser
    ● Use the internationalization provided by Very Good Core (translate the title of the app bar and/or any other text that’s coming from the app and not from the API)
    ● Make the list an infinite scroll (just call again the api when you arrived at bottom)
    ● Use animations
    ● Use a cache library for the images
    ● Have a splash screen
    ● Have a settings button to switch between light and dark mode