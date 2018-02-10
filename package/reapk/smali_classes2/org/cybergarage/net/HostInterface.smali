.class public Lorg/cybergarage/net/HostInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IPV4_BITMASK:I = 0x1

.field public static final IPV6_BITMASK:I = 0x10

.field public static final LOCAL_BITMASK:I = 0x100

.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;

.field private static serverIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 48
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 49
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 55
    const-string v0, ""

    sput-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 211
    const-string v0, ""

    sput-object v0, Lorg/cybergarage/net/HostInterface;->serverIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 7
    .param p0, "n"    # I

    .prologue
    .line 234
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 235
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v2

    .line 268
    :goto_0
    return-object v2

    .line 240
    :cond_0
    const/4 v3, 0x0

    .line 243
    .local v3, "hostAddrCnt":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 244
    .local v5, "nis":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 268
    .end local v5    # "nis":Ljava/util/Enumeration;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 246
    .restart local v5    # "nis":Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 247
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 248
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 250
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 251
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    if-ge v3, p0, :cond_4

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 256
    goto :goto_2

    .line 258
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 261
    .local v2, "host":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 365
    move-object v0, p0

    .line 366
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 338
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 344
    const-string v0, ""

    :cond_0
    return-object v0

    .line 340
    :cond_1
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 350
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 356
    const-string v0, ""

    :cond_0
    return-object v0

    .line 352
    :cond_1
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 11
    .param p0, "ipfilter"    # I
    .param p1, "interfaces"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 144
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 146
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/net/InetAddress;

    .line 149
    .local v6, "interAddress":[Ljava/net/InetAddress;
    :try_start_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 150
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v9, 0x0

    aput-object v0, v6, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v6    # "interAddress":[Ljava/net/InetAddress;
    :goto_0
    return-object v6

    .line 153
    .restart local v6    # "interAddress":[Ljava/net/InetAddress;
    :catch_0
    move-exception v9

    .line 158
    .end local v6    # "interAddress":[Ljava/net/InetAddress;
    :cond_0
    if-eqz p1, :cond_4

    .line 160
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 161
    .local v5, "iflist":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, p1

    if-lt v4, v9, :cond_2

    .line 175
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 186
    .end local v4    # "i":I
    .end local v5    # "iflist":Ljava/util/Vector;
    .local v8, "nis":Ljava/util/Enumeration;
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "addresses":Ljava/util/ArrayList;
    :cond_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_5

    .line 207
    new-array v9, v10, [Ljava/net/InetAddress;

    .line 206
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/InetAddress;

    move-object v6, v9

    goto :goto_0

    .line 166
    .end local v1    # "addresses":Ljava/util/ArrayList;
    .end local v8    # "nis":Ljava/util/Enumeration;
    .restart local v4    # "i":I
    .restart local v5    # "iflist":Ljava/util/Vector;
    :cond_2
    :try_start_1
    aget-object v9, p1, v4

    invoke-static {v9}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 171
    .local v7, "ni":Ljava/net/NetworkInterface;
    if-eqz v7, :cond_3

    .line 172
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v7    # "ni":Ljava/net/NetworkInterface;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/net/SocketException;
    goto :goto_3

    .line 180
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v4    # "i":I
    .end local v5    # "iflist":Ljava/util/Vector;
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .restart local v8    # "nis":Ljava/util/Enumeration;
    goto :goto_2

    .line 181
    .end local v8    # "nis":Ljava/util/Enumeration;
    :catch_2
    move-exception v3

    .line 183
    .restart local v3    # "e":Ljava/net/SocketException;
    const/4 v6, 0x0

    goto :goto_0

    .line 189
    .end local v3    # "e":Ljava/net/SocketException;
    .restart local v1    # "addresses":Ljava/util/ArrayList;
    .restart local v8    # "nis":Ljava/util/Enumeration;
    :cond_5
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 190
    .restart local v7    # "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 191
    .local v2, "addrs":Ljava/util/Enumeration;
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 194
    .restart local v0    # "addr":Ljava/net/InetAddress;
    and-int/lit16 v9, p0, 0x100

    if-nez v9, :cond_7

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_6

    .line 197
    :cond_7
    and-int/lit8 v9, p0, 0x1

    if-eqz v9, :cond_8

    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_8

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    :cond_8
    and-int/lit8 v9, p0, 0x10

    if-eqz v9, :cond_6

    instance-of v9, v0, Ljava/net/InetAddress;

    if-eqz v9, :cond_6

    .line 202
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getNHostAddresses()I
    .locals 7

    .prologue
    .line 103
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getServerIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 104
    const/4 v3, 0x1

    .line 130
    .local v3, "nHostAddrs":I
    :cond_0
    :goto_0
    return v3

    .line 109
    .end local v3    # "nHostAddrs":I
    :cond_1
    const/4 v3, 0x0

    .line 112
    .restart local v3    # "nHostAddrs":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 113
    .local v5, "nis":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 116
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 117
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 120
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getServerIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lorg/cybergarage/net/HostInterface;->serverIp:Ljava/lang/String;

    return-object v0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasIPv4Addresses()Z
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 310
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 316
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 312
    :cond_0
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    const/4 v3, 0x1

    goto :goto_1

    .line 310
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final hasIPv6Addresses()Z
    .locals 4

    .prologue
    .line 321
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 322
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 328
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 324
    :cond_0
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    const/4 v3, 0x1

    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 294
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 300
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 279
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 280
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 281
    const/4 v1, 0x1

    .line 286
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 83
    sget-boolean v1, Lorg/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget-boolean v1, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-eqz v1, :cond_2

    .line 90
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-nez v1, :cond_0

    .line 93
    :cond_2
    sget-boolean v1, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-eqz v1, :cond_3

    .line 95
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-nez v1, :cond_0

    .line 98
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static setServerIp(Ljava/lang/String;)V
    .locals 1
    .param p0, "mserverIp"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {p0}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :cond_2
    sput-object p0, Lorg/cybergarage/net/HostInterface;->serverIp:Ljava/lang/String;

    goto :goto_0
.end method
