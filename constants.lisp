;;;; Copyright (c) Frank James 2015 <frank.a.james@gmail.com>
;;;; This code is licensed under the MIT license.

;;; This file constains various integer constant definitions as they are defined on the various
;;; supported host systems.

(in-package #:fsocket)

(defconstant +af-inet+ 2)

;; AF_INET6 seems to have different values on different platforms...
#+(or win32 windows)(defconstant +af-inet6+ 23)
#+linux(defconstant +af-inet6+ 10)
#+freebsd(defconstant +af-inet6+ 28)
#+darwin(defconstant +af-inet6+ 30)

#+linux(defconstant +af-unix+ 1)
#+freebsd(defconstant +af-unix+ 1)
#+darwin(defconstant +af-unix+ 1)

(defconstant +can-raw+ 1)
(defconstant +pf-can+ 29)
(defconstant +siocgifindex+ #x8933)
(defconstant +siocgstamp+ #x8906)
(defconstant +siocgifname+ #x8910)

(defconstant +sock-stream+ 1)
(defconstant +sock-dgram+ 2)
(defconstant +sock-raw+ 3)

(defconstant +ipproto-ip+ 0)
(defconstant +ipproto-ip6+ 41)

(defconstant +ipproto-udp+ 17)
(defconstant +ipproto-tcp+ 6)


;; MCAST_JOIN_GROUP
#+(or win32 windows)(defconstant +mcast-join-group+ 41)
#+linux(defconstant +mcast-join-group+ 42)
#+freebsd(defconstant +mcast-join-group+ 80)
#+darwin(defconstant +mcast-join-group+ 80) 

;; IP_MULTICAST_LOOP
#+(or win32 windows)(defconstant +ip-multicast-loop+ 11)
#+linux(defconstant +ip-multicast-loop+ 34)
#+freebsd(defconstant +ip-multicast-loop+ 11)
#+darwin(defconstant +ip-multicast-loop+ 11)

;; IPV6_MULTICAST_LOOP
#+(or win32 windows)(defconstant +ip6-multicast-loop+ 11)
#+linux(defconstant +ip6-multicast-loop+ 19)
#+freebsd(defconstant +ip6-multicast-loop+ 19)
#+darwin(defconstant +ip6-multicast-loop+ 19)

;; IP_MULTICAST_IF
#+(or win32 windows)(defconstant +ip-multicast-if+ 9)
#+linux(defconstant +ip-multicast-if+ 32)
#+freebsd(defconstant +ip-multicast-if+ 9)
#+darwin(defconstant +ip-multicast-if+ 9)

;; IPV6_MULTICAST_IF
#+(or win32 windows)(defconstant +ip6-multicast-if+ 9)
#+linux(defconstant +ip6-multicast-if+ 17)
#+freebsd(defconstant +ip6-multicast-if+ 9)
#+darwin(defconstant +ip6-multicast-if+ 9)

;; IP_MULTICAST_TTL
#+(or win32 windows)(defconstant +ip-multicast-ttl+ 10)
#+linux(defconstant +ip-multicast-ttl+ 33)
#+freebsd(defconstant +ip-multicast-ttl+ 10)
#+darwin(defconstant +ip-multicast-ttl+ 10)

;; IPV6_MULTICAST_HOPS
#+(or win32 windows)(defconstant +ipv6-multicast-hops+ 10)
#+linux(defconstant +ipv6-multicast-hops+ 18)
#+freebsd(defconstant +ipv6-multicast-hops+ 10)
#+darwin(defconstant +ipv6-multicast-hops+ 10)

;; SOL_SOCKET 
#+(or win32 windows)(defconstant +sol-socket+ #xffff)
#+linux(defconstant +sol-socket+ 1)
#+freebsd(defconstant +sol-socket+ #xffff)
#+darwin(defconstant +sol-socket+ #xffff)

;; #define SO_DEBUG        0x0001          /* turn on debugging info recording */
;; #define SO_ACCEPTCONN   0x0002          /* socket has had listen() */
;; #define SO_REUSEADDR    0x0004          /* allow local address reuse */
;; #define SO_KEEPALIVE    0x0008          /* keep connections alive */
;; #define SO_DONTROUTE    0x0010          /* just use interface addresses */
;; #define SO_BROADCAST    0x0020          /* permit sending of broadcast msgs */
;; #define SO_USELOOPBACK  0x0040          /* bypass hardware when possible */
;; #define SO_LINGER       0x0080          /* linger on close if data present */
;; #define SO_OOBINLINE    0x0100          /* leave received OOB data in line */
;; #define SO_DONTLINGER   (int)(~SO_LINGER)
;; #define SO_EXCLUSIVEADDRUSE ((int)(~SO_REUSEADDR)) /* disallow local address reuse */
;; #define SO_SNDBUF       0x1001          /* send buffer size */
;; #define SO_RCVBUF       0x1002          /* receive buffer size */
;; #define SO_SNDTIMEO     0x1005          /* send timeout */
;; #define SO_RCVTIMEO     0x1006          /* receive timeout */
;; #define SO_ERROR        0x1007          /* get error status and clear */
;; #define SO_TYPE         0x1008          /* get socket type */
;; #define SO_REUSEPORT    0x0200          /* allow local address & port reuse */
;; #define SO_NO_OFFLOAD   0x4000          /* socket cannot be offloaded */
;;(defconstant +so-debug+ #x0001)

;; SO_ACCEPTCONN
#+(or win32 windows)(defconstant +so-acceptconn+ #x0002)
#+linux(defconstant +so-acceptconn+ 30)
#+freebsd(defconstant +so-acceptconn+ #x0002)
#+darwin(defconstant +so-acceptconn+ #x0002)

;; SO_REUSEADDR
#+(or win32 windows)(defconstant +so-reuseaddr+ #x0004)
#+linux(defconstant +so-reuseaddr+ #x0002)
#+freebsd(defconstant +so-reuseaddr+ #x0004)
#+darwin(defconstant +so-reuseaddr+ #x0004)

;;(defconstant +so-keepalive+ #x0008)
;;(defconstant +so-dontroute+ #x0010)

;; SO_BROADCAST 
#+(or win32 windows)(defconstant +so-broadcast+ #x00020)
#+linux(defconstant +so-broadcast+ 6)
#+freebsd(defconstant +so-broadcast+ #x00020)
#+darwin(defconstant +so-broadcast+ #x00020)

;;(defconstant +so-useloopback+ #x0040)
;;(defconstant +so-linger+ #x0080)
;;(defconstant +so-oobinline+ #x0100)

;; SO_SNDBUF
#+(or win32 windows)(defconstant +so-sndbuf+ #x1001)
#+linux(defconstant +so-sndbuf+ 7)
#+freebsd(defconstant +so-sndbuf+ #x1001)
#+darwin(defconstant +so-sndbuf+ #x1001)

;; SO_RCVBUF
#+(or win32 windows)(defconstant +so-rcvbuf+ #x1002)
#+linux(defconstant +so-rcvbuf+ 8)
#+freebsd(defconstant +so-rcvbuf+ #x1002)
#+darwin(defconstant +so-rcvbuf+ #x1002)

;; SO_SNDTIMEO
#+(or win32 windows)(defconstant +so-sndtimeo+ #x1005)
#+linux(defconstant +so-sndtimeo+ 21)
#+freebsd(defconstant +so-sndtimeo+ #x1005)
#+darwin(defconstant +so-sndtimeo+ #x1005)

;; SO_RCVTIMEO
#+(or win32 windows)(defconstant +so-rcvtimeo+ #x1006)
#+linux(defconstant +so-rcvtimeo+ 20)
#+freebsd(defconstant +so-rcvtimeo+ #x1006)
#+darwin(defconstant +so-rcvtimeo+ #x1006)

;; SO_ERROR 
#+(or win32 windows)(defconstant +so-error+ #x1007)
#+linux(defconstant +so-error+ 4)
#+(or freebsd darwin)(defconstant +so-error+ #x1007)

;;(defconstant +so-type+ #x1008)
;;(defconstant +so-resuseport+ #x0200)
;;(defconstant +so-no-offload+ #x4000)

(defconstant +tcp-nodelay+ 1)






