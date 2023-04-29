# Software Quality and Reliability S23 course

> Semester 8, 4th study-year, Innopolis University.

[![Hits-of-Code](https://hitsofcode.com/github/InnoQueue/mobile?branch=main)](https://hitsofcode.com/github/InnoQueue/mobile/view?branch=main)

## **Team**

- [Emil Khabibullin](https://github.com/emileyray)
- [Timur Nugaev](https://github.com/al1ych)
- [Roman Soldatov](https://github.com/SMore-Napi)
- [Daniil Livitin](https://github.com/Dablup)
- [Mikhail Martovitsky](https://github.com/MikhailMarch)

## 📌 About

- This application can be used to track household chores for roommates.
- A user can create a queue and invite his/her roommates.
- Users complete a queue task one by one in a loop. So, ideally, every roommate should complete a
  task on each iteration.
- The app helps to remind users about to-dos and fairly automate the tasks distribution between
  roommates based on their contribution.
- For the [REST API](https://innoqueue-dev.herokuapp.com/swagger-ui.html),
  the [Backend](https://github.com/InnoQueue/backend) project was developed.

<p float="center">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167298525-fa458bd1-4e28-4593-a738-8c26a4bdf7a6.png"/>
</p>

## 📲 APK

- You can download the APK file to install and use it on your Android phone. *Available on the GitHub [releases](https://github.com/InnoQueue/mobile/releases/) page*
- or you can download this GitHub [project](https://github.com/InnoQueue/mobile) and build it for your favourite platform 🙃.

## ☎️ iOS

- For iOS, you can download this GitHub [project](https://github.com/InnoQueue/mobile) and build it by yourself.

## 🛠 How to build

- When you've cloned the repo, you'll need to run `flutter pub get` to locally install all the
  dependencies
- Wait a bit...
- To release build **APK** for android run: `flutter build apk --split-per-abi`
- To release build for **iOS** run: `flutter build ios`
- PROFIT

## 🖥 List of screens

### Onboarding screen

- Welcome screen
- Input user name

<p float="left">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167304630-ba232283-5a35-4327-8dbe-478ee2ccf7ef.png"/>
<img width="300" src="https://user-images.githubusercontent.com/49106163/167304996-224fa0b4-954a-46e8-945e-e32bb9e7dfd5.png"/>
</p>

## To-do tasks

- To-do tasks section
- Open a task
- Input expenses
- Select several tasks

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305031-9c3177ce-0f86-4398-a510-09acb9a71141.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305039-f561ff93-bf3d-4db6-a63c-419920cba0d1.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305053-ee21117d-17d6-4916-928f-bd9f38bc9562.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305058-cae30116-50a7-42b1-aea2-ed438bb4383d.png"/>
</p>

## Queues

- Queues section
- Create queue
- Join queue
- Queue's details
- Edit queue
- Invite in queue

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305063-cab2a097-e01c-44b9-8803-649877a5daab.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305074-5fd5d490-8661-4ce5-88d7-d47322f0baff.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305602-f19a4260-8498-4608-a92e-8760516210e5.png"/>
</p>
<p float="left">
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305083-b5cdcfd7-20a4-4771-a559-e0e164303d78.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305086-87fd3ad8-64df-4673-ab97-cd9bb2b39bab.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305088-23b97860-5086-4b4e-8cf7-88f184ec53c7.png"/>
</p>

## Notifications

- Notifications section
- push notifications on Android

<p float="left">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167305111-da3c460a-f741-4b02-a242-7d22d4204c30.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305411-7e81c94f-87fe-4b8e-8307-d291b5e1c5f8.jpg"/>
</p>

## Settings

- Settings section
- Notification settings
- Theme
- Language

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305093-2cb6f67b-4637-4b1c-883f-d5aae2bfdfa2.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305097-6c68f9ce-f8dc-477e-b23e-fd2422e3778e.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305103-2890f9eb-c153-44ca-be6f-5c1d02a5a25e.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305109-1b8bd969-da07-4fa8-9692-5274fbdd7564.png"/>
</p>

## 🕹 List of features

- Create a new queue
- Invite users to a queue
- Complete a task when it's your turn
- Complete a task even it's not your turn. So, you will be skipped on the next iteration
- Skip a task. However, on the next iteration, you will be forced to complete a task twice
- Track expenses for tasks that require buying something
- Temporarily leave a queue ("freeze"). Your progress will be saved, but you won't participate in a
  queue. For example, you can use this feature when you leave your room for the Winter holidays
- If it's someone's turn you can "shake" him to remind him about a task by sending a notification
- Receive reminders when it's your turn
- Receive notifications about queue progress
- Notifications history
- No registration is needed

> Features on which we are working on can be found in [issues](https://github.com/InnoQueue/mobile/issues)

## 📚 Contribution

If you have any ideas on how to imporove the quality of our product or of the quality ensurance
for our project, we welcome your enthusiasm and here's how you can contribute!

In short:

- Fork this repo
- Create a new issue in our repo, where you describe what contribution you want to make thoroughly
- Assign the correct labels to the issue [*]
- Create a new branch using appropriate naming conventions [**]
- Make the necessary changes
- Push the changes to your repo
- Make a pull request from your repo on your branch to our repo's main branch
- Don't forget to add a comprehensive description so we understand better what you did
- We're going to review your changes and decide on whether to accept your code [***]

[*] Issue labels:

- `routine` is for routine tasks like quality ensurance. the code under this tag should
  not add any new functionality application-wise. for example: `rework database schemas`
- `feature` is for tasks that add new functionality, features, etc. for example: `add pagination`
- `bug` is for bugfixes.

> Note: we do not accept any other labels for contribution issues

[**] Branch naming:

- If it's a feature you're adding, name your branch `feature/task-title`
- If it's a routine task, name your branch `routine/task-title`
- If it's a bug fix, name your branch `fix/task-title`

[***] Code review may take up to 2 working days

### Code style

Is described in details [here](STYLEGUIDE.md)

## 📊 Repositories

- The [README repository](https://github.com/InnoQueue/.github/blob/main/profile/README.md)
- The Backend REST API project which mobile application uses
  is [in this repository](https://github.com/InnoQueue/backend)
