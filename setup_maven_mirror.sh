#!/bin/bash

mkdir ~/.m2

tee -a ~/.m2/settings.xml > /dev/null <<EOF
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">
  <localRepository/>
  <interactiveMode/>
  <usePluginRegistry/>
  <offline/>
  <pluginGroups/>
  <servers/>
  <mirrors>
    <mirror>
      <id>aliyun-public</id>
      <mirrorOf>central,jcenter</mirrorOf>
      <name>aliyun public repository</name>
      <url>https://maven.aliyun.com/repository/public</url>
    </mirror>
  </mirrors>
  <proxies/>
  <profiles>
    <profile>
      <id>aliyun</id>
      <repositories>
        <repository>
          <id>aliyun-public</id>
          <name>aliyun public repository</name>
          <url>https://maven.aliyun.com/repository/public</url>
        </repository>
        <repository>
          <id>aliyun-google</id>
          <name>aliyun google repository</name>
         <url>https://maven.aliyun.com/repository/google</url>
        </repository>
        <repository>
          <id>aliyun-apache</id>
          <name>aliyun apache snapshots repository</name>
          <url>https://maven.aliyun.com/repository/apache-snapshots</url>
        </repository>
        <repository>
          <id>aliyun-spring</id>
          <name>aliyun spring repository</name>
          <url>https://maven.aliyun.com/repository/spring</url>
        </repository>
        <repository>
          <id>aliyun-spring-plugin</id>
          <name>aliyun spring-plugin repository</name>
          <url>https://maven.aliyun.com/repository/spring-plugin</url>
        </repository>
        <repository>
          <id>aliyun-gradle-plugin</id>
          <name>aliyun gradle-plugin repository</name>
          <url>https://maven.aliyun.com/repository/gradle-plugin</url>
        </repository>
        <repository>
          <id>aliyun-grails-core</id>
          <name>aliyun grails-core repository</name>
          <url>https://maven.aliyun.com/repository/grails-core</url>
        </repository>
      </repositories>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>aliyun</activeProfile>
  </activeProfiles>
</settings>
EOF