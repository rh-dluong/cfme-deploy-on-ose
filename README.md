These are the playbooks I used to deploy podified CloudForms on quicklab on OpenShift with metrics deployed.  I've updated it to automatically add both the provider and metrics to the appliance.

Currently, I recommend only using this playbook on the master node, as it will need to restart master services if it's your first deploy.  More info as to why can be found on the [product doc](https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6/html-single/installing_red_hat_cloudforms_on_openshift_container_platform/index#preparing-for-deployment)

I got the templates from the [openshift github repo](https://github.com/openshift/openshift-ansible/tree/master/roles/openshift_examples/files/examples) and the OSE Red Hat online training course for installing metrics.

The environment you need is OSE 3.7. This setup is assuming you're using dynamic provisioning. Manual PV setup can be found at the offical [openshift-ansible github](https://github.com/openshift/openshift-ansible/tree/master/roles/openshift_examples/files/examples/v3.7/cfme-templates).

Also, don't forget to set the hosts in both the playbook and in your hosts/inventory file

Here's the command to run if you want to use cfme46:
ansible-playbook cfme46/cfme46-ose.yaml

You can toggle hawkular on and off by setting the hawkular_metrics var in the cmfe46-ose.yaml file.

You can change the project name by changing the project_name variable.

You can change the username and password by changing login_credentials variable.  The default is system:admin.

You can also add a user to cluster admin by defining cluster_admin variable.

You can also choose whether or not to add the openshift provider by toggling that variable as well. It is on by default.
* DISCLAIMER: This will INSTALL the EPEL repo in order to install pip to add the openshift provider through the manageiq api if you toggle this option on. 
