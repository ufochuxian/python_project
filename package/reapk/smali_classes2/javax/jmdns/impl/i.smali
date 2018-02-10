.class public Ljavax/jmdns/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/i$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/logging/Logger;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/net/InetAddress;

.field protected c:Ljava/net/NetworkInterface;

.field private final e:Ljavax/jmdns/impl/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/i;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljavax/jmdns/impl/i$a;

    invoke-direct {v1, p3}, Ljavax/jmdns/impl/i$a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v1, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    .line 124
    iput-object p1, p0, Ljavax/jmdns/impl/i;->b:Ljava/net/InetAddress;

    .line 125
    iput-object p2, p0, Ljavax/jmdns/impl/i;->a:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/i;->c:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/i;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "LocalHostInfo() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ZI)Ljavax/jmdns/impl/g$a;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljavax/jmdns/impl/g$c;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$c;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/i;
    .locals 12
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "jmdnsName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "localhost":Ljavax/jmdns/impl/i;
    if-eqz p2, :cond_6

    move-object v0, p2

    .line 69
    .local v0, "aName":Ljava/lang/String;
    :goto_0
    move-object v1, p0

    .line 71
    .local v1, "addr":Ljava/net/InetAddress;
    if-nez v1, :cond_1

    .line 72
    :try_start_0
    const-string v7, "net.mdns.interface"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "ip":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 74
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 85
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    sget-object v7, Ljavax/jmdns/impl/i;->d:Ljava/util/logging/Logger;

    const-string v8, "Could not find any address beside the loopback."

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 89
    .end local v5    # "ip":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    const-string v7, "in-addr.arpa"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    :cond_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_8

    move-object v0, p2

    .line 103
    :cond_4
    :goto_2
    const-string v7, ".local"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 104
    .local v4, "index":I
    if-lez v4, :cond_5

    .line 105
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_5
    const/16 v7, 0x2e

    const/16 v8, 0x2d

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".local."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v6, Ljavax/jmdns/impl/i;

    .end local v6    # "localhost":Ljavax/jmdns/impl/i;
    invoke-direct {v6, v1, v0, p1}, Ljavax/jmdns/impl/i;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 110
    .restart local v6    # "localhost":Ljavax/jmdns/impl/i;
    return-object v6

    .line 68
    .end local v0    # "aName":Ljava/lang/String;
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v4    # "index":I
    :cond_6
    const-string v0, ""

    goto :goto_0

    .line 76
    .restart local v0    # "aName":Ljava/lang/String;
    .restart local v1    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "ip":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    invoke-static {}, Ljavax/jmdns/c$a;->c()Ljavax/jmdns/c;

    move-result-object v7

    invoke-interface {v7}, Ljavax/jmdns/c;->a()[Ljava/net/InetAddress;

    move-result-object v2

    .line 80
    .local v2, "addresses":[Ljava/net/InetAddress;
    array-length v7, v2

    if-lez v7, :cond_0

    .line 81
    const/4 v7, 0x0

    aget-object v1, v2, v7

    goto :goto_1

    .line 93
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "ip":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Ljavax/jmdns/impl/i;->d:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not intialize the host network interface on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "because of an error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Ljavax/jmdns/impl/i;->g()Ljava/net/InetAddress;

    move-result-object v1

    .line 99
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    move-object v0, p2

    :goto_3
    goto/16 :goto_2

    :cond_9
    const-string v0, "computer"

    goto :goto_3
.end method

.method private b(ZI)Ljavax/jmdns/impl/g$a;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljavax/jmdns/impl/g$d;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$d;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(ZI)Ljavax/jmdns/impl/g$e;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljavax/jmdns/impl/g$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".in-addr.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(ZI)Ljavax/jmdns/impl/g$e;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljavax/jmdns/impl/g$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ip6.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "exception":Ljava/net/UnknownHostException;
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)Ljava/util/Collection;
    .locals 3
    .param p1, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            "ZI)",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/g;>;"
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->a(ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    .line 276
    .local v0, "answer":Ljavax/jmdns/impl/g;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->b(ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    return-object v1
.end method

.method a(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$a;
    .locals 2
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .prologue
    .line 207
    sget-object v0, Ljavax/jmdns/impl/i$1;->a:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 209
    :pswitch_0
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->a(ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->b(ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method a(Ljava/net/DatagramPacket;)Z
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "result":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 178
    .local v0, "from":Ljava/net/InetAddress;
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    const/4 v1, 0x1

    .line 197
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    const/4 v1, 0x1

    .line 203
    .end local v0    # "from":Ljava/net/InetAddress;
    :cond_2
    return v1
.end method

.method public a(Ljavax/jmdns/impl/g$a;)Z
    .locals 5
    .param p1, "record"    # Ljavax/jmdns/impl/g$a;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1}, Ljavax/jmdns/impl/g$a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/g$a;->g()Z

    move-result v3

    const/16 v4, 0xe10

    invoke-virtual {p0, v2, v3, v4}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    .line 163
    .local v0, "hostAddress":Ljavax/jmdns/impl/g$a;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/g$a;->b(Ljavax/jmdns/impl/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/g$a;->f(Ljavax/jmdns/impl/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/g$a;->a(Ljavax/jmdns/impl/g;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 166
    :cond_0
    return v1
.end method

.method public advanceState(Ljavax/jmdns/impl/a/a;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 299
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/i$a;->advanceState(Ljavax/jmdns/impl/a/a;)Z

    move-result v0

    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 323
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i$a;->associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 324
    return-void
.end method

.method public b()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljavax/jmdns/impl/i;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method b(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$e;
    .locals 2
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .prologue
    .line 233
    sget-object v0, Ljavax/jmdns/impl/i$1;->a:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->c(ZI)Ljavax/jmdns/impl/g$e;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/i;->d(ZI)Ljavax/jmdns/impl/g$e;

    move-result-object v0

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method c()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Ljavax/jmdns/impl/i;->b:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->cancelState()Z

    move-result v0

    return v0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->closeState()Z

    move-result v0

    return v0
.end method

.method d()Ljava/net/Inet6Address;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ljavax/jmdns/impl/i;->b:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/jmdns/impl/i;->c:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$b;->a()Ljavax/jmdns/impl/NameRegister;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/i;->a:Ljava/lang/String;

    sget-object v3, Ljavax/jmdns/impl/NameRegister$NameType;->HOST:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v0, v1, v2, v3}, Ljavax/jmdns/impl/NameRegister;->c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/i;->a:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Ljavax/jmdns/impl/i;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 331
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i$a;->isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->isProbing()Z

    move-result v0

    return v0
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 307
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/i$a;->removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V

    .line 308
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i$a;->revertState()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "local host info["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->e()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->e()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    const-string v1, "no name"

    goto :goto_0

    .line 264
    :cond_1
    const-string v1, "???"

    goto :goto_1

    .line 266
    :cond_2
    const-string v1, "no address"

    goto :goto_2
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 419
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i$a;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 427
    iget-object v0, p0, Ljavax/jmdns/impl/i;->b:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/i;->e:Ljavax/jmdns/impl/i$a;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i$a;->waitForCanceled(J)Z

    move-result v0

    goto :goto_0
.end method
