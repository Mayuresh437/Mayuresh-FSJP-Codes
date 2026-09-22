# Servlet Starter - Running Java Servlets & JSP in VS Code

A step-by-step beginner's guide to setting up, building, and deploying a Java Servlet and JSP web application using Visual Studio Code, Apache Maven, and Apache Tomcat 10.

---

## 🛠️ Step-by-Step Setup & Development Guide

### 1. Install Java Development Kit (JDK)
Before running Java web applications, verify that JDK is installed on your system.
1. Open your terminal or Command Prompt and run:
   ```cmd
   java -version
   ```
2. If Java is not recognized or installed, download and install JDK 17+ (or JDK 21) from [Eclipse Temurin (Adoptium)](https://adoptium.net/) or [Oracle Java](https://www.oracle.com/java/technologies/downloads/).
3. Verify installation by running `java -version` again in a new terminal window.

---

### 2. Install Apache Maven & Configure Environment Variables
Maven manages project dependencies and builds your WAR package.
1. Check if Maven is already installed:
   ```cmd
   mvn -version
   ```
2. If not installed:
   - Download the **Binary zip archive** from the official site: [Apache Maven Download](https://maven.apache.org/download.cgi).
   - Extract the downloaded zip folder.
   - Copy the extracted Maven folder (e.g., `apache-maven-3.x.x`) into `C:\Program Files\Java\`.
3. Set the Environment Variable:
   - Search for **"Edit the system environment variables"** in the Windows Start menu.
   - Click **Environment Variables...**.
   - Under **System variables**, select `Path` and click **Edit**.
   - Click **New** and paste the path to Maven's `bin` folder (e.g., `C:\Program Files\Java\apache-maven-3.x.x\bin`).
   - Click **OK** to save and close all dialogs.
4. Restart your terminal / Command Prompt and verify:
   ```cmd
   mvn -version
   ```

---

### 3. Install Required VS Code Extensions
Launch VS Code and install the following extensions from the Extensions view (`Ctrl+Shift+X`):
1. **Extension Pack for Java** (by Microsoft) – Provides core Java language support, debugging, and Maven integration.
2. **Community Server Connector** (by Red Hat) – Facilitates server management (Tomcat, WildFly, etc.) directly inside VS Code.

---

### 4. Download & Extract the Starter Project
1. Download the starter repository zip file from GitHub:
   👉 [servlet-starter repository](https://github.com/shiburaj/servlet-starter)
2. Extract the downloaded `.zip` file to a convenient folder on your computer.

---

### 5. Open Project in VS Code
1. Open Visual Studio Code.
2. Click **File > Open Folder...** (or press `Ctrl+K Ctrl+O`).
3. Select the extracted `servlet-starter` directory.

---

### 6. Add Your Servlets & JSP Files
- **Java Servlets:** Place your `.java` servlet files inside the source directory:
  `src/main/java/` (organize by package, e.g., `src/main/java/com/example/HelloServlet.java`).
- **JSP Files & Static Web Resources:** Place your `.jsp`, `.html`, and `.css` files inside the webapp root:
  `src/main/webapp/` (e.g., `src/main/webapp/index.jsp`).

---

### 7. Build the Application using Maven
To compile the project and generate the web archive (`.war`) file:
1. Open the built-in terminal in VS Code (`Ctrl+~` or `Terminal > New Terminal`).
2. Run the build command:
   ```bash
   mvn clean package
   ```
3. Upon a successful build, a `.war` file (e.g., `ServletApp.war`) will be created in the `target/` directory.

---

### 8. Create a New Server in VS Code
1. Open the **Explorer** tab (`Ctrl+Shift+E`) in VS Code sidebar.
2. Expand the **SERVERS** section located at the bottom of the Explorer panel.
3. Right-click on **Community Server Connector** and select **Create new server**.

---

### 9. Configure Tomcat 10 Server Wizard
1. A wizard prompt will appear at the top of the VS Code window asking to select/download a server.
2. Choose **Apache Tomcat 10.x**.
3. Follow the wizard steps to complete the installation and download location for Tomcat 10.

---

### 10. Start the Tomcat Server
1. Under the **SERVERS** section, locate your newly added **Apache Tomcat 10.x** server.
2. Right-click on Tomcat and select **Start Server**.
3. Wait for the server logs to indicate Tomcat is running in the Console tab.

---

### 11. Add WAR Deployment to Tomcat
1. Right-click on the running **Apache Tomcat 10.x** server under **SERVERS**.
2. Select **Add Deployment**.
3. Choose **File** and navigate to the `target/` folder in your project directory.
4. Select the `.war` file created in Step 7.

---

### 12. View the Application in Browser
1. Right-click on your Tomcat server in the **SERVERS** panel.
2. Click **Server Actions... > Show in browser**.
3. Select your deployed application/context path to view the output in your default web browser.

---

### 13. Rebuilding & Applying Code Changes
Whenever you modify your Java Servlets, JSP files, or configuration:
1. Rebuild the application package by running:
   ```bash
   mvn clean package
   ```
2. Switch back to your browser and refresh the page (`F5` or `Ctrl+R`) to see the updated results.

---

### 14. Keyboard Shortcut for Building
- You can quickly rebuild the project using the shortcut **`Ctrl+Shift+B`** to run the default Maven build task in VS Code instead of typing `mvn clean package` in the terminal.