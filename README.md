# Software Quality and Reliability S23 course

> Semester 8, 4th study-year, Innopolis University.

[![Hits-of-Code](https://hitsofcode.com/github/InnoQueue/mobile?branch=main)](https://hitsofcode.com/github/InnoQueue/mobile/view?branch=main)
[![codecov](https://codecov.io/gh/InnoQueue/mobile/branch/main/graph/badge.svg?token=CsXJoUf8BV)](https://codecov.io/gh/InnoQueue/mobile)

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
- [SonarQube analysis](https://sonarcloud.io/summary/overall?id=InnoQueue_mobile)

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

- Input user name

<img width="300" src="https://github.com/InnoQueue/mobile/assets/69918609/11f4678f-5f52-4d93-b686-aa096d4710c3"/>
</p>

## To-do tasks

- To-do tasks section
- Select several tasks

<p float="left">  
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/4c351cdc-7e21-4aec-a6c6-1e61b5beeda0"/>
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/31fcf2c4-335d-4075-a82f-156fece6b01d"/>
</p>

## Queues

- Queues section
- Create queue
- Join queue
- Queue's details
- Edit queue
- Invite in queue

<p float="left">
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/596cd29f-d831-4a03-866e-ebb9b55f310c"/>
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/e768a9a2-c418-4fc9-9bd8-0c357ab36b0d"/>
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/c2004f47-71d8-4088-a8d7-d59d6f3c61a5"/>
</p>
<p float="left">
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/e7268fef-2902-4967-bbc0-d3c43e6f2de6"/>
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/2e4f3ec7-90ee-49bf-a3c8-667bc479dcda"/>
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/a2075ceb-3cb3-4f0f-89ce-8b9c3103f71b"/>
</p>

## Notifications

- Notifications section
- push notifications on Android

<p float="left">
<img width="300" src="https://github.com/InnoQueue/mobile/assets/69918609/1659076a-9ae0-4cac-bbd1-aea2bf1da4e3"/>
<img width="250" src="https://github.com/InnoQueue/mobile/assets/69918609/ffd0732a-47e8-4c00-9a7a-926420cffbff"/>
</p>

## Settings

- Settings section
- Notification settings
- Theme
- Language

<p float="left">  
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/6d7dfdcd-7d38-45f8-ac9c-ceb36ec26c0e"/>
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/d18c8544-d11f-4286-8c2a-c80f1edd5f5d"/>
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/10f49038-98ff-444c-8e67-7cb49d5d7dcc"/>
<img width="230" src="https://github.com/InnoQueue/mobile/assets/69918609/719f1cd8-ddba-487a-9600-80b900f39345"/>
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
