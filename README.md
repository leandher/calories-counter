<h1 align="center">
    Flutter + Node - Calories Counter App
</h1>

<h4 align="center">
  See <a href="https://github.com/leandher/calories-counter/blob/master/requirements.md">requirements</a>.
</h4>

<p align="center">
  <a href="#rocket-technologies">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#information_source-how-to-use">How To Use</a>
</p>

## :rocket: Technologies

### :fire: Mobile

This project was developed with the following technologies:

-  [Flutter](https://flutter.dev/)
-  [Dio](https://pub.dev/packages/dio)

-  [VS Code][vc] with [ESLint][vceslint]

### :zap: Backend

This project was developed with the following technologies:
-  [Node.js][nodejs]
-  [Express](https://expressjs.com/)
-  [nodemon](https://github.com/remy/nodemon)
-  [Typescript](https://www.typescriptlang.org/)
-  [TypeORM](https://typeorm.io/)
-  [VS Code][vc] with [ESLint][vceslint]

## :information_source: How To Use

To clone and run this application, you'll need [Git](https://git-scm.com), [Node.js v10.16][nodejs] or higher + [Yarn v1.13][yarn] or higher installed on your computer and [Flutter](https://flutter.dev/). From your command line:

```bash
# Clone this repository
$ git clone https://github.com/leandher/github-users.git

# Go into the repository
$ cd calories-counter

# Go into Backend
cd Backend

# Install dependencies
$ yarn install

# Run migrations
$ yarn typeorm migration:run

# Run the app 
$ yarn dev

# Run tests
$ yarn test

# On a new terminal window, go into mobile
$ cd mobile

# Install dependencies
$ flutter pub get

# Run the app
$ flutter run
```

Made by Leandher Bessa [Get in touch!](https://www.linkedin.com/in/leandher-bessa-65303b128)

[nodejs]: https://nodejs.org/
[yarn]: https://yarnpkg.com/
[vc]: https://code.visualstudio.com/
[vceslint]: https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint