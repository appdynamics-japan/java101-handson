# AppDynamics Java Hands-on Lab


## Prerequites

- Ansible 2.9+
- Vagrant
- VMware Fusion / Workstation
- Ubuntu 22.04 LTS (w/o Vagrant/VMware)

## Java sample application GitHub repo

https://github.com/Appdynamics/Cars_Sample_App/tree/1.0-MAINTENANCE

## Provisionning with Vagrant + Ansible on VMware Workstation / Fusion

```
git clone https://github.com/appdynamics-japan/java101-lab.git
cd java101-lab
vagrant up
```

```
vagrant provision
```
(will be executed on 1st 'vagrant up')




## Provisionning on a VM w/o Vagrant 

### clone the repository

```
git clone https://github.com/appdynamics-japan/java101-lab.git
cd java101-lab/provisioning
```

### edit playbook.yml

* ``hosts: all`` should be ``hosts: localhost`` 
* change ``user`` variable to your Ubuntu OS username
* change ``account_name`` variable to your AppDynamics Account Name
* change ``account_name`` variable to your AppDynamics Access Key

### run Ansible playbook

```
ansible-playbook playbook.yml
```

## start up Tomcat application server

```
~/apache-tomcat-9.0.65/bin/startup.sh
```
## generate load using grinder

```
./generate-load.sh
```




### AppDynamics Java agent instrumentation

- configuration file: ~/java-agent/conf/controller-info.xml

Account Name and Access Key can be found in ADMIN - License - Account on AppDynamics Controller.

- [Apache Tomcat startup setting](https://docs.appdynamics.com/appd/22.x/22.8/ja/application-monitoring/install-app-server-agents/java-agent/install-the-java-agent/agent-installation-by-java-framework/apache-tomcat-startup-settings)

create setnev.sh in ~/apache-tomcat-9.0.65/bin as below:

```
export CATALINA_OPTS="$CATALINA_OPTS -javaagent:/home/vagrant/java-agent/javaagent.jar"
```


## References

- Sample Application URL

[http://<app_server_ip>:8080/Cars_Sample_App/home.do]([http://<app_server_ip>:8080/Cars_Sample_App/home.do])


