# Java Servlet & JSP Project with Maven in VSCode using Server Connector

This guide helps you set up a Java Servlet and JSP application using Maven in VSCode with the Community Server Connector extension.

---

## 🛠 Prerequisites

- [Java JDK 11 or 17+](https://adoptium.net/)
- [Apache Maven](https://maven.apache.org/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Community Server Connector Extension](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-community-server-connector)
- [Tomcat Server](https://tomcat.apache.org/) (version 9 recommended)

---

## 📁 Project Structure

```
ServletApp/
├── src/
│   └── main/
│       ├── java/
│       │   └── com.example.servlet/
│       │       └── HelloServlet.java
│       └── webapp/
│           ├── index.jsp
│           └── WEB-INF/
│               └── web.xml (optional)
├── pom.xml
```

---

## ⚙️ Step-by-Step Setup

### 1. Create Maven Project

In terminal:

```bash
mvn archetype:generate -DgroupId=com.example.servlet -DartifactId=ServletApp -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false
cd ServletApp
```

### 2. Open in VSCode

```bash
code .
```

### 3. Configure `pom.xml`

Make sure `pom.xml` has the following:

```
<packaging>war</packaging>

<properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.source>11</maven.compiler.source>
    <maven.compiler.target>11</maven.compiler.target>
    <maven.compiler.release>11</maven.compiler.release>
</properties>

<build>
  <finalName>ServletApp</finalName>
  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <version>3.11.0</version>
      <configuration>
        <source>11</source>
        <target>11</target>
      </configuration>
    </plugin>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-war-plugin</artifactId>
      <version>3.3.2</version>
      <configuration>
        <failOnMissingWebXml>false</failOnMissingWebXml>
      </configuration>
    </plugin>
  </plugins>
</build>
```

### 4. Add a Sample Servlet

Create `HelloServlet.java`:

```java
package com.example.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello from Servlet</h1>");
    }
}
```

### 5. Configure web.xml (optional if using annotations)

In `webapp/WEB-INF/web.xml`:

```xml
<web-app xmlns="http://jakarta.ee/xml/ns/jakartaee"
         version="5.0">
    <servlet>
        <servlet-name>HelloServlet</servlet-name>
        <servlet-class>com.example.servlet.HelloServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>HelloServlet</servlet-name>
        <url-pattern>/hello</url-pattern>
    </servlet-mapping>
</web-app>
```

### 6. Build the WAR

```bash
mvn clean package
```

WAR file will be created in `target/ServletApp.war`.

### 7. Deploy with Server Connector

1. Install the **Community Server Connector** extension in VSCode.
2. Open the extension tab and click **Tomcat Server** → **Add Tomcat Server**.
3. Choose your Tomcat installation directory.
4. Right-click on the server → **Add Deployment** → Select the generated WAR file.
5. Start the server and open `http://localhost:8080/ServletApp/hello`.

---

## ✅ Tips

- Use `@WebServlet("/hello")` instead of `web.xml` for annotation-based config.
- Put JSPs inside `webapp/` folder.

---

## 📦 Final WAR Location

```
ServletApp/target/ServletApp.war
```

You can deploy this WAR to any Java EE compatible servlet container like Tomcat.