%define rsyslog_statedir %{_sharedstatedir}/%{name}
%define rsyslog_pkidir %{_sysconfdir}/pki/%{name}
%define rsyslog_docdir %{_docdir}/%{name}


Summary: Enhanced system logging and kernel message trapping daemon
Name: rsyslog
Version: 8.2102.0
Release: 13%{?dist}
License: (GPLv3+ and ASL 2.0)
Group: System Environment/Daemons
ExcludeArch: i686
URL: http://www.rsyslog.com/
Source0: http://www.rsyslog.com/files/download/rsyslog/%{name}-%{version}.tar.gz
Source1: http://www.rsyslog.com/files/download/rsyslog/%{name}-doc-%{version}.tar.gz
Source2: rsyslog.conf
Source3: rsyslog.sysconfig
Source4: rsyslog.log
Source5: qpid-proton-0.34.0.tar.gz
Source6: rsyslog.service

BuildRequires: autoconf
BuildRequires: automake
BuildRequires: bison
BuildRequires: flex
BuildRequires: libcurl-devel
BuildRequires: libgcrypt-devel
BuildRequires: libfastjson-devel >= 0.99.8
BuildRequires: libestr-devel >= 0.1.9
BuildRequires: libtool
BuildRequires: libuuid-devel
BuildRequires: pkgconfig
BuildRequires: python3-docutils
# it depens on rhbz#1419228
BuildRequires: systemd-devel >= 219-39
BuildRequires: zlib-devel
BuildRequires: openssl-devel

Requires: openssl-libs
Requires: logrotate >= 3.5.2
Requires: bash >= 2.0
Requires: libestr >= 0.1.9
Requires(post): systemd
Requires(preun): systemd
Requires(postun): systemd

Provides: syslog
Obsoletes: sysklogd < 1.5-11

# imjournal: adds "journal" when tag/process name is missing
Patch0:  rsyslog-8.1911.0-rhbz1659898-imjournal-default-tag.patch
Patch1:  rsyslog-8.2102.0-rhbz1960536-fdleak-on-fsync.patch
Patch2:  rsyslog-8.2102.0-rhbz1886400-reduce-default-timeout.patch
Patch3:  rsyslog-8.2102.0-rhbz1866877-unexpected-length.patch
Patch4:  rsyslog-8.2102.0-rhbz1984616-imuxsock-ratelimit.patch
Patch5:  rsyslog-8.2102.0-rhbz1984489-remove-abort-on-id-resolution-fail.patch
Patch6:  rsyslog-8.2102.0-rhbz1832368-prioritize-SAN.patch
Patch7:  rsyslog-8.2102.0-rhbz1962318-errfile-maxsize.patch
Patch8:  rsyslog-8.2102.0-rhbz1909639-statefiles-fix.patch
Patch9:  rsyslog-8.2102.0-rhbz1909639-statefiles-doc.patch
Patch10: rsyslog-8.2102.0-nsd_ossl-better-logs.patch
Patch11: rsyslog-8.2102.0-imtcp-param-refactor.patch
Patch12: rsyslog-8.2102.0-nsd_ossl-memory-leak.patch
Patch13: rsyslog-8.2102.0-rhbz2046158-correct-custom-ciphers-behaviour.patch
Patch14: rsyslog-8.37.0-rhbz2081396-CVE-2022-24903.patch
Patch15: rsyslog-8.2102.0-rhbz2046158-gnutls-broken-connection.patch
Patch16: rsyslog-8.2102.0-rhbz2124934-extra-ca-files.patch
Patch17: rsyslog-8.2102.0-rhbz2124934-extra-ca-files-doc.patch
Patch18: rsyslog-8.2102.0-rhbz2157658-imklog.patch

%package crypto
Summary: Encryption support
Group: System Environment/Daemons
Requires: %name = %version-%release

%package doc
Summary: HTML Documentation for rsyslog
Group: Documentation
#no reason to have arched documentation
BuildArch: noarch

%package elasticsearch
Summary: ElasticSearch output module for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release

%package gnutls
Summary: TLS protocol support for rsyslog via GnuTLS library
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: gnutls-devel

%package openssl
Summary: TLS protocol support for rsyslog via OpenSSL library
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: openssl-devel

%package gssapi
Summary: GSSAPI authentication and encryption support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: krb5-devel

%package kafka
Summary: Provides kafka support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: librdkafka-devel

%package mmaudit
Summary: Message modification module supporting Linux audit format
Group: System Environment/Daemons
Requires: %name = %version-%release

%package mmjsonparse
Summary: JSON enhanced logging support
Group: System Environment/Daemons
Requires: %name = %version-%release

%package mmkubernetes
Summary: Provides the mmkubernetes module
Group: System Environment/Daemons
Requires: %name = %version-%release

%package mmnormalize
Summary: Log normalization support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: liblognorm-devel

%package mmfields
Summary: Fields extraction module
Requires: %name = %version-%release

%package mmsnmptrapd
Summary: Message modification module for snmptrapd generated messages
Group: System Environment/Daemons
Requires: %name = %version-%release

%package mysql
Summary: MySQL support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: mariadb-connector-c-devel

%package omamqp1
Summary: AMQP1 support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
Requires: cyrus-sasl-lib
Requires: openssl-libs
BuildRequires: cmake
BuildRequires: make
BuildRequires: gcc
BuildRequires: gcc-c++
BuildRequires: cyrus-sasl-devel
BuildRequires: openssl-devel
BuildRequires: python3

%package pgsql
Summary: PostgresSQL support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: postgresql-devel

%package relp
Summary: RELP protocol support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
Requires: librelp >= 1.9.0
BuildRequires: librelp-devel >= 1.9.0

%package snmp
Summary: SNMP protocol support for rsyslog
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: net-snmp-devel

%package udpspoof
Summary: Provides the omudpspoof module
Group: System Environment/Daemons
Requires: %name = %version-%release
BuildRequires: libnet-devel

%description
Rsyslog is an enhanced, multi-threaded syslog daemon. It supports MySQL,
syslog/TCP, RFC 3195, permitted sender lists, filtering on any message part,
and fine grain output format control. It is compatible with stock sysklogd
and can be used as a drop-in replacement. Rsyslog is simple to set up, with
advanced features suitable for enterprise-class, encryption-protected syslog
relay chains.

%description crypto
This package contains a module providing log file encryption and a
command line tool to process encrypted logs.

%description doc
This subpackage contains documentation for rsyslog.

%description elasticsearch
This module provides the capability for rsyslog to feed logs directly into
Elasticsearch.

%description gnutls
The rsyslog-gnutls package contains the rsyslog plugins that provide the
ability to send and receive syslog messages via TCP or RELP using TLS
encryption via GnuTLS library. For details refer to rsyslog doc on imtcp
and omfwd modules.

%description openssl
The rsyslog-openssl package contains the rsyslog plugins that provide the
ability to send and receive syslog messages via TCP or RELP using TLS
encryption via OpenSSL library. For details refer to rsyslog doc on imtcp
and omfwd modules.

%description gssapi
The rsyslog-gssapi package contains the rsyslog plugins which support GSSAPI
authentication and secure connections. GSSAPI is commonly used for Kerberos
authentication.

%description kafka
The rsyslog-kafka package provides modules for Apache Kafka input and output.

%description mmaudit
This module provides message modification supporting Linux audit format
in various settings.

%description mmjsonparse
This module provides the capability to recognize and parse JSON enhanced
syslog messages.

%description mmkubernetes
The rsyslog-mmkubernetes package provides module for adding kubernetes
container metadata.

%description mmnormalize
This module provides the capability to normalize log messages via liblognorm.

%description mmfields
The mmfield module permits to extract fields. Using this module is of special
advantage if a field-based log format is to be processed, like for example CEF
and either a large number of fields is needed or a specific field is used multiple
times inside filters.

%description mmsnmptrapd
This message modification module takes messages generated from snmptrapd and
modifies them so that they look like they originated from the read originator.

%description mysql
The rsyslog-mysql package contains a dynamic shared object that will add
MySQL database support to rsyslog.

%description omamqp1
The rsyslog-omamqp1 package contains a dynamic shared object that will add
AMQP1 support to rsyslog.

%description pgsql
The rsyslog-pgsql package contains a dynamic shared object that will add
PostgreSQL database support to rsyslog.

%description relp
The rsyslog-relp package contains the rsyslog plugins that provide
the ability to receive syslog messages via the reliable RELP
protocol.

%description snmp
The rsyslog-snmp package contains the rsyslog plugin that provides the
ability to send syslog messages as SNMPv1 and SNMPv2c traps.

%description udpspoof
This module is similar to the regular UDP forwarder, but permits to
spoof the sender address. Also, it enables to circle through a number
of source ports.

%prep
# set up rsyslog-doc sources
%setup -q -a 1 -T -c

#regenerate the docs

#mv build/searchindex.js searchindex_backup.js
#sphinx-build -b html source build
#clean up
#mv searchindex_backup.js build/searchindex.js

rm -r LICENSE README.md source build/objects.inv
mv build doc

# set up rsyslog sources
%setup -q -D
%setup -q -D -T -b 5

%patch0  -p1 -b .default-tag
%patch1  -p1 -b .fd-leak-on-fsync
%patch2  -p1 -b .timeout
%patch3  -p1 -b .unexpected-priority-length
%patch4  -p1 -b .imuxsock-rate-limit
%patch5  -p1 -b .abort-on-id-resolution-fail
%patch6  -p1 -b .prioritizeSAN
%patch7  -p1 -b .errfile-maxsize
%patch8  -p1 -b .state-file-leaking
%patch9  -p1 -b .state-file-leaking-doc
%patch10 -p1 -b .ossl-better-logs
%patch11 -p1 -b .imtcp-refactor-params
%patch12 -p1 -b .ossl-memory-leak
%patch13 -p1 -b .ossl-ciphers-behaviour
%patch14 -p1 -b .CVE-24903
%patch15 -p1 -b .gnutls-error-handling
%patch16 -p1 -b .extra-ca-files
%patch17 -p1 -b .extra-ca-files-doc
%patch18 -p1 -b .imklog-heap

%build
%ifarch sparc64
#sparc64 need big PIE
export CFLAGS="$RPM_OPT_FLAGS -fPIC"
%else
export CFLAGS="$RPM_OPT_FLAGS -fpic"
%endif
# build the proton first
(
	cd %{_builddir}/qpid-proton-0.34.0
	mkdir bld
	cd bld

	# Need ENABLE_FUZZ_TESTING=NO to avoid a link failure
	# Find python include dir and python library from
	# https://stackoverflow.com/questions/24174394/cmake-is-not-able-to-find-python-libraries
    cmake .. \
		-DBUILD_BINDINGS="" \
		-DBUILD_STATIC_LIBS=YES \
		-DENABLE_FUZZ_TESTING=NO \
		-DPYTHON_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())")  \
		-DPYTHON_LIBRARY=$(python3 -c "import distutils.sysconfig as sysconfig; print(sysconfig.get_config_var('LIBDIR'))") \
		-DCMAKE_AR="/usr/bin/gcc-ar" -DCMAKE_NM="/usr/bin/gcc-nm" -DCMAKE_RANLIB="/usr/bin/gcc-ranlib"
	make -j8
)
%ifarch sparc64
#sparc64 need big PIE
export CFLAGS="$RPM_OPT_FLAGS -fPIE"
%else
export CFLAGS="$RPM_OPT_FLAGS -fpie"
%endif
export LDFLAGS="-pie -Wl,-z,relro -Wl,-z,now"

sed -i 's/%{version}/%{version}-%{release}/g' configure.ac
autoreconf -if
%configure \
	--prefix=/usr \
	--disable-static \
	--disable-testbench \
	--enable-elasticsearch \
	--enable-generate-man-pages \
	--enable-gnutls \
	--enable-openssl \
	--enable-gssapi-krb5 \
	--enable-imdiag \
	--enable-imfile \
	--enable-imjournal \
	--enable-imkafka \
	--enable-impstats \
	--enable-imptcp \
	--enable-mail \
	--enable-mmanon \
	--enable-mmaudit \
	--enable-mmcount \
	--enable-mmjsonparse \
	--enable-mmkubernetes \
	--enable-mmnormalize \
	--enable-mmfields \
	--enable-mmsnmptrapd \
	--enable-mmutf8fix \
	--enable-mysql \
	--enable-omamqp1 PROTON_LIBS="%{_builddir}/qpid-proton-0.34.0/bld/c/libqpid-proton-core-static.a %{_builddir}/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor-static.a %{_builddir}/qpid-proton-0.34.0/bld/c/libqpid-proton-static.a -lssl -lsasl2 -lcrypto" PROTON_CFLAGS="-I%{_builddir}/qpid-proton-0.34.0/bld/c/include" \
	--enable-omhttp \
	--enable-omjournal \
	--enable-omkafka \
	--enable-omprog \
	--enable-omstdout \
	--enable-omudpspoof \
	--enable-omuxsock \
	--enable-pgsql \
	--enable-pmaixforwardedfrom \
	--enable-pmcisconames \
	--enable-pmlastmsg \
	--enable-pmsnare \
	--enable-relp \
	--enable-snmp \
	--enable-unlimited-select \
	--enable-usertools

make

%install
make DESTDIR=%{buildroot} install

install -d -m 755 %{buildroot}%{_sysconfdir}/sysconfig
install -d -m 755 %{buildroot}%{_sysconfdir}/logrotate.d
install -d -m 755 %{buildroot}%{_unitdir}
install -d -m 755 %{buildroot}%{_sysconfdir}/rsyslog.d
install -d -m 700 %{buildroot}%{rsyslog_statedir}
install -d -m 700 %{buildroot}%{rsyslog_pkidir}
install -d -m 755 %{buildroot}%{rsyslog_docdir}/html

install -p -m 644 %{SOURCE2} %{buildroot}%{_sysconfdir}/rsyslog.conf
install -p -m 644 %{SOURCE3} %{buildroot}%{_sysconfdir}/sysconfig/rsyslog
install -p -m 644 %{SOURCE4} %{buildroot}%{_sysconfdir}/logrotate.d/syslog
install -p -m 644 %{SOURCE6} %{buildroot}%{_unitdir}/rsyslog.service
install -p -m 644 plugins/ommysql/createDB.sql %{buildroot}%{rsyslog_docdir}/mysql-createDB.sql
install -p -m 644 plugins/ompgsql/createDB.sql %{buildroot}%{rsyslog_docdir}/pgsql-createDB.sql
install -p -m 644 contrib/mmkubernetes/*.rulebase %{buildroot}%{rsyslog_docdir}
# extract documentation
cp -r doc/* %{buildroot}%{rsyslog_docdir}/html
# get rid of libtool libraries
rm -f %{buildroot}%{_libdir}/rsyslog/*.la

# convert line endings from "\r\n" to "\n"
cat tools/recover_qi.pl | tr -d '\r' > %{buildroot}%{_bindir}/rsyslog-recover-qi.pl

%post
for n in /var/log/{messages,secure,maillog,spooler}
do
	[ -f $n ] && continue
	umask 066 && touch $n
done
%systemd_post rsyslog.service

%preun
%systemd_preun rsyslog.service

%postun
%systemd_postun_with_restart rsyslog.service

%files
%doc AUTHORS COPYING* ChangeLog
%exclude %{rsyslog_docdir}/html
%exclude %{rsyslog_docdir}/mysql-createDB.sql
%exclude %{rsyslog_docdir}/pgsql-createDB.sql
%dir %{_libdir}/rsyslog
%dir %{_sysconfdir}/rsyslog.d
%dir %{rsyslog_statedir}
%dir %{rsyslog_pkidir}
%{_sbindir}/rsyslogd
%attr(755,root,root) %{_bindir}/rsyslog-recover-qi.pl
%{_mandir}/man5/rsyslog.conf.5.gz
%{_mandir}/man8/rsyslogd.8.gz
%{_unitdir}/rsyslog.service
%config(noreplace) %{_sysconfdir}/rsyslog.conf
%config(noreplace) %{_sysconfdir}/sysconfig/rsyslog
%config(noreplace) %{_sysconfdir}/logrotate.d/syslog
# plugins
%{_libdir}/rsyslog/fmhash.so
%{_libdir}/rsyslog/fmhttp.so
%{_libdir}/rsyslog/imdiag.so
%{_libdir}/rsyslog/imfile.so
%{_libdir}/rsyslog/imjournal.so
%{_libdir}/rsyslog/imklog.so
%{_libdir}/rsyslog/immark.so
%{_libdir}/rsyslog/impstats.so
%{_libdir}/rsyslog/imptcp.so
%{_libdir}/rsyslog/imtcp.so
%{_libdir}/rsyslog/imudp.so
%{_libdir}/rsyslog/imuxsock.so
%{_libdir}/rsyslog/lmnet.so
%{_libdir}/rsyslog/lmnetstrms.so
%{_libdir}/rsyslog/lmnsd_ptcp.so
%{_libdir}/rsyslog/lmregexp.so
%{_libdir}/rsyslog/lmtcpclt.so
%{_libdir}/rsyslog/lmtcpsrv.so
%{_libdir}/rsyslog/lmzlibw.so
%{_libdir}/rsyslog/mmanon.so
%{_libdir}/rsyslog/mmcount.so
%{_libdir}/rsyslog/mmexternal.so
%{_libdir}/rsyslog/mmutf8fix.so
%{_libdir}/rsyslog/omhttp.so
%{_libdir}/rsyslog/omjournal.so
%{_libdir}/rsyslog/ommail.so
%{_libdir}/rsyslog/omprog.so
%{_libdir}/rsyslog/omstdout.so
%{_libdir}/rsyslog/omtesting.so
%{_libdir}/rsyslog/omuxsock.so
%{_libdir}/rsyslog/pmaixforwardedfrom.so
%{_libdir}/rsyslog/pmcisconames.so
%{_libdir}/rsyslog/pmlastmsg.so
%{_libdir}/rsyslog/pmsnare.so

%files crypto
%{_bindir}/rscryutil
%{_mandir}/man1/rscryutil.1.gz
%{_libdir}/rsyslog/lmcry_gcry.so

%files doc
%doc %{rsyslog_docdir}/html

%files elasticsearch
%{_libdir}/rsyslog/omelasticsearch.so

%files gssapi
%{_libdir}/rsyslog/lmgssutil.so
%{_libdir}/rsyslog/imgssapi.so
%{_libdir}/rsyslog/omgssapi.so

%files gnutls
%{_libdir}/rsyslog/lmnsd_gtls.so

%files openssl
%{_libdir}/rsyslog/lmnsd_ossl.so

%files kafka
%{_libdir}/rsyslog/imkafka.so
%{_libdir}/rsyslog/omkafka.so

%files mmaudit
%{_libdir}/rsyslog/mmaudit.so

%files mmjsonparse
%{_libdir}/rsyslog/mmjsonparse.so

%files mmkubernetes
%{_libdir}/rsyslog/mmkubernetes.so
%doc %{rsyslog_docdir}/k8s_filename.rulebase
%doc %{rsyslog_docdir}/k8s_container_name.rulebase

%files mmnormalize
%{_libdir}/rsyslog/mmnormalize.so

%files mmfields
%{_libdir}/rsyslog/mmfields.so

%files mmsnmptrapd
%{_libdir}/rsyslog/mmsnmptrapd.so

%files mysql
%doc %{rsyslog_docdir}/mysql-createDB.sql
%{_libdir}/rsyslog/ommysql.so

%files omamqp1
%{_libdir}/rsyslog/omamqp1.so

%files pgsql
%doc %{rsyslog_docdir}/pgsql-createDB.sql
%{_libdir}/rsyslog/ompgsql.so

%files relp
%{_libdir}/rsyslog/imrelp.so
%{_libdir}/rsyslog/omrelp.so

%files snmp
%{_libdir}/rsyslog/omsnmp.so

%files udpspoof
%defattr(-,root,root)
%{_libdir}/rsyslog/omudpspoof.so

%changelog
* Mon Jan 09 2023 Attila Lakatos <alaktos@redhat.com> - 8.2102.0-13
- Make rsyslog-relp require librelp>= 1.9.0
  resolves: rhbz#2029352
- Reorder logrotate parameters to work with POSIXLY_CORRECT env var
  resolves: rhbz#2070496

* Fri Jan 06 2023 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-12
- Fix invalid memory adressing in imklog that could cause abort
  resolves: rhbz#2157658

* Tue Sep 06 2022 Sergio Arroutbi <sarroutb@redhat.com> - 8.2102.0-11
- Enable multiple SSL CA files
  resolves: rhbz#2124934

* Wed Apr 13 2022 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-10
- openssl: Correct gnutlsPriorityString (custom ciphers) behaviour
- Fix error handling in gtlsRecordRecv that can cause 100 percent CPU usage
  resolves: rhbz#2046158
- Address CVE-2022-24903, Heap-based overflow in TCP syslog server
  resolves: rhbz#2081401

* Mon Mar 28 2022 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-9
- Add deleteStateOnFileMove imfile module option
  resolves: rhbz#1909639
- Add inotify_rm_watch() inotify API call when object needs to be destroyed
  resolves: rhbz#2052403

* Fri Mar 04 2022 Sergio Arroutbi <sarroutb@redhat.com> - 8.2102.0-8
- Include maxsize for error files
  resolves: rhbz#1962318

* Mon Nov 22 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-7
- Propagate prioritizeSAN when accepting new connection
  resolves: rhbz#1832368

* Mon Oct 18 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-6
- Enable mmfields module
  resolves: rhbz#1947907
  resolves: rhbz#1866900

* Wed Aug 04 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-5
- Do not exit when user/group can not be found
  resolves: rhbz#1984489
- Remove abortOnIDResolution fail

* Tue Jul 27 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-4
- Allways use message severity when comparing with ratelimit severity
  resolves: rhbz#1984616

* Mon Jun 28 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-3
- Priority field must have valid length
  resolves: rhbz#1866877
- Allocate more memory on too large groups
  resolves: rhbz#1944718

* Tue May 18 2021 Attila Lakatos <alakatos@redhat.com> - 8.2102.0-2
  RHEL 8.5.0 ERRATUM
- rebase to 8.2102.0
  resolves: rhbz#1932795
- Enable openssl
  resolves: rhbz#1891458
- EKU check for client cert on server side
  resolves: rhbz#1783348
- Use GNUTLS_SHUT_WR when ending TLS connections
  resolves: rhbz#1880434
- Use librelp with openssl enabled
  resolves: rhbz#1795607
- Close dir when fsync=on
  resolves: rhbz#1960536

* Wed Nov 18 2020 Attila Lakatos <alakatos@redhat.com> - 8.1911.0-7
- add back rsyslog-udpspoof package
  resolves: rhbz#1869874

* Thu Jun 18 2020 Jiri Vymazal <jvymazal@redhat.com> - 8.1911.0-6
  RHEL 8.3.0 ERRATUM
- added patch preventing imfile crash when selinux blocks symlink
  access
  resolves: rhbz#1843994
- fixed config-enabled patch
  resolves: rhbz#1659383

* Thu Jun 04 2020 Jiri Vymazal <jvymazal@redhat.com> - 8.1911.0-5
  RHEL 8.3.0 ERRATUM
- added qpid-proton as another source and enabled omamqp1 module
  in a separate sub-package with it statically linked
  resolves: rhbz#1713427
- extended config.enabled patch to cover rest of the cases
  resolves: rhbz#1659383
- added patch making json serialization thread-safe
  resolves: rhbz#1789675
- added another patch for imfile state-files id
  resolves: rhbz#1793569
- fixed typo in commend-out part of default rsyslog.conf

* Wed Dec 11 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.1911.0-3
  RHEL 8.2.0 ERRATUM
- added patch reverting rejecting expired certs by default
  resolves: rhbz#1782353
- added patch silencing false errors on config.enabled statement
  resolves: rhbz#1659383

* Tue Dec 03 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.1911.0-2
  RHEL 8.2.0 ERRATUM
- cleaned old patches, fixed patch names
  resolves: rhbz#1740683

* Mon Dec 02 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.1911.0-1
  RHEL 8.2.0 ERRATUM
- rebased to 8.1911.0 upstream version, removed, previously
  upstreamed patches
  resolves: rhbz#1740683
  resolves: rhbz#1659383
  resolves: rhbz#1746876
  resolves: rhbz#1676559
  resolves: rhbz#1692072
  resolves: rhbz#1692073
  resolves: rhbz#1692074
  resolves: rhbz#1699242
  resolves: rhbz#1738213
  resolves: rhbz#1744691
  resolves: rhbz#1755218
  resolves: rhbz#1768321
  resolves: rhbz#1768324
- added patch fixing imfile stefiles naming
  resolves: rhbz#1763757

* Fri Aug 30 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-13
  RHEL 8.1.0 ERRATUM
- added patch enabling stricter TLS certs checking conforming to
  common criteria requirements
  resolves: rhbz#1733244

* Mon Jul 22 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-12
  RHEL 8.1.0 ERRATUM
- edited imjournal memleak patch to not cause double-free crash
  resolves: rhbz#1729995
- added patch calling journald API only when there are no
  preceeding errors
  resolves: rhbz#1722165
- added patch fixing imrelp module when invoked with old syntax
  resolves: rhbz#1724218

* Wed Jun 05 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-11
  RHEL 8.1.0 ERRATUM
- fixed memory leak in imjournal by proper cursor releasing
  resolves: rhbz#1716867

* Fri May 10 2019 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-10
  RHEL 8.1.0 ERRATUM
- added option for imfile endmsg.regex
  resolves: rhbz#1627941
- added patch enhancing imfile rotation detection
  resolves: rhbz#1674471
- added patch fixing msgOffset datatype preventing crash on
  message with too long other fields
  resolves: rhbz#1677037
- added patch introducing "preservecase" option for imudp/imtcp
  resolves: rhbz#1614181

* Mon Dec 17 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-9
  RHEL 8.0.0 ERRATUM
- added back legacy option for imjournal default tag
  resolves: rhbz#1659898

* Fri Dec 14 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-8
  RHEL 8.0.0 ERRATUM
- fixes mmkubenetes handling 404 and 429 errors
  resolves: rhbz#1622768

* Fri Oct 19 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-7
- removed version from docdir macro
  resolves: rhbz#1638023

* Mon Aug 27 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-6
- updated patch for enhanced imfile symlink support
  resolves: rhbz#1614179

* Fri Aug 10 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-5
- rebuild for rebased dependencies
- dependency cleanup and sorted sub-packages in spec
  resolves: rhbz#1613880

* Fri Aug 10 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-4
- enabled mmkubernetes module
  resolves: rhbz#1614432
  resolves: rhbz#1614441

* Thu Aug 09 2018 Josef Ridky <jridky@redhat.com> - 8.37.0-3
- Rebuild for Net-SNMP

* Thu Aug 09 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-2
- added patch for enhanced imfile symlink support
  resolves: rhbz#1614179

* Wed Aug 08 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.37.0-1
- rebase to 8.37.0
  resolves: rhbz#1613880
  resolves: rhbz#1564054
  resolves: rhbz#1598218
  - dropped invalid statefile patch - upstreamed
  - dropped imjournal duplicates patch - upstreamed
  resolves: rhbz#1544394
- renumbered default tag patch and fitted onto rebased version

* Fri Aug 03 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.36.0-4
- removed dependency on libee
  resolves: rhbz#1612032

* Wed Aug 01 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.36.0-3
- dropped json_nonoverwrite patch as there is no reason for
  keeping it
- renumbered rest of patches
- added release number to AC_INIT to have it in package error logs

* Mon Jul 16 2018 Charalampos Stratakis <cstratak@redhat.com> - 8.36.0-2
- Depend on python3-docutils

* Mon Jul 02 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.36.0-1
- changed PID file name to follow upstream
- removed config option to disable stdlog as it is now
  disabled by default

* Thu Jun 28 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.36.0-1
- rebase to 8.36
- removed hiredis module
- removed omudpspoof module
  resolves: rhbz#1593762
- finished converting config to new-style syntax

* Mon May 21 2018 Jiri Vymazal <jvymazal@redhat.com> - 8.35.0-1
- spec file cleanup
- enabled kafka and hiredis modules
  resolves: rhbz#1542497
  resolves: rhbz#1542504
- renamed patch fixing imjournal duplicating messages
  resolves: rhbz#1544394

* Thu May 17 2018 Marek Tamaskovic <mtamasko@redhat.com> - 8.35.0-1
- rebase to 8.35
- rebased patches from 8.32 to 8.35
  - fixed imjournal-duplicates
  - fixed imjournal-default-tag
  - fixed service patch
  - fixed in upstream deserialize-property-name

* Fri Mar 23 2018 Radovan Sroka <rsroka@redhat.com> - 8.32.0-2
- rebuild, bumped release number

* Tue Feb 06 2018 Radovan Sroka <rsroka@redhat.com> - 8.32.0-1
- initial clean build with plugins from rhel7
- removed plugins:
  - libdbi
  - omruleset
  - pmrfc3164sd
- imported from fedora26
