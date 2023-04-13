<a name="readme-top"></a>
<div align="center">
  <h3><b>README Template</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 notion_clone <a name="about-project"></a>

*notion_clone* is an application that allows you to enter text and convert the test to a heading or paragraph element when the text is preceded by '/1' or '/+1' respectively. It is built with Ruby on Rails and containerized with Docker.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://www.docker.com/">Docker</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- GETTING STARTED -->

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- Click [here](https://notion-clone.onrender.com) to go live.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 install docker
```


```sh
 Install docker-compose
```


```sh
 Install code editor e.g VSCode
```


### Setup

Clone this repository to your desired folder:


```sh
  git clone https://github.com/PNdunguMaina/notion_clone.git
```

### Usage

To run the project, execute the following command:

```sh
  docker-compose up --build
```
### Configure

Navigate to this directory:

```sh
  cd notion_clone
```
Configure the database:
```sh
  Open database.yml file
```
```sh
  -database: your database name
  -username: your postgres user
  -password: your postgres user password
  -host: database container (notion_clone-db-1)
  -port: your port(e.g 5432)
```

### Run on server

You can run this project on live server on your local machine using:


```sh
  http://localhost:3000/
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 *Author1*

- GitHub: [@PNdunguMaina ](https://github.com/PNdunguMaina)
- LinkedIn: [Patrick Maina](https://www.linkedin.com/in/pndungumaina/)
- Portfolio: [Portfolio](https://fascinating-wisp-94463d.netlify.app/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] *Login page*
- [ ] *New user registration page*

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/PNdunguMaina/notion_clone/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please give it a star on Github.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to acknowledge [HelpJuice](https://helpjuice.com/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
