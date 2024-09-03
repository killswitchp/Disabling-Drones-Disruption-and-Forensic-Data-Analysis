# Disabling-Drones-Disruption-and-Forensic-Data-Analysis

This repository contains scripts developed to control the Parrot AR Drone 2.0 using NodeJS and to perform automated Wi-Fi deauthentication attacks for drone disruption. The repository is part of a study focused on analyzing and documenting the forensic evidence left behind by such attacks.

## Contents

- **repl.js**: A JavaScript script that uses the NodeJS client to automatically control the Parrot AR Drone 2.0. This script can send commands to take off, land, and perform other maneuvers, demonstrating how drones can be programmatically controlled.
- **Automated script to perform de-authentication attack**: A bash script that automates the process of performing a Wi-Fi deauthentication attack. This script uses tools like `aircrack-ng` to disrupt the connection between the drone and its controller by sending deauthentication frames.

## Getting Started

### Prerequisites

- **NodeJS**: Make sure NodeJS is installed on your machine. You can download it from [NodeJS official website](https://nodejs.org/).
- **aircrack-ng**: This tool is required for performing Wi-Fi deauthentication attacks. Install it by following the instructions on the [aircrack-ng website](https://www.aircrack-ng.org/).

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/Disabling-Drones-Disruption-and-Forensic-Data-Analysis.git
   cd Disabling-Drones-Disruption-and-Forensic-Data-Analysis
