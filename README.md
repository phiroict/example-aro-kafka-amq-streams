# CRC notes

## Install Red hat openshift local 

Install the crc executable by the `https://console.redhat.com/openshift/create/local` link, you'll need an redhat account that 
you can create with no costs. 

After installation run 

    crc setup 

and then 

	crc config set enable-cluster-monitoring true 
	crc start -c 12 -m 32000 -p ~/Downloads/pull-secret

(Change the number of CPUs and memory to fit your system, note that you need at least 2 CPUs and 8 GiB of memory to even start the stack)

THe start sequence gives you the credentails, store in your `.bashrc` or `.zshrc` file by
```bash
export CRC_PASS=<yourpassword>
```
Reread the rc file by 

```bash
source ~/.bashrc 
# or
source ~/.zshrc
```

## Start monitoring

From this [page](https://crc.dev/crc/#starting-monitoring-alerting-telemetry_gsg)

```
crc config set enable-cluster-monitoring true
```