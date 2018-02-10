.class public Lorg/xbill/DNS/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static a:Ljava/lang/Class; = null

.field static b:Ljava/lang/Class; = null

.field private static final c:Ljava/lang/String; = "sun.net.spi.nameservice.nameservers"

.field private static final d:Ljava/lang/String; = "sun.net.spi.nameservice.domain"

.field private static final e:Ljava/lang/String; = "java.net.preferIPv6Addresses"


# instance fields
.field private f:Z


# direct methods
.method protected constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v9, p0, Lorg/xbill/DNS/a/a;->f:Z

    .line 55
    const-string v9, "sun.net.spi.nameservice.nameservers"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "nameServers":Ljava/lang/String;
    const-string v9, "sun.net.spi.nameservice.domain"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "domain":Ljava/lang/String;
    const-string v9, "java.net.preferIPv6Addresses"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "v6":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 60
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v7, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 62
    .local v6, "servers":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "n":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    new-instance v5, Lorg/xbill/DNS/m;

    invoke-direct {v5, v6}, Lorg/xbill/DNS/m;-><init>([Ljava/lang/String;)V

    .line 67
    .local v5, "res":Lorg/xbill/DNS/ad;
    invoke-static {v5}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/ad;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "n":I
    .end local v5    # "res":Lorg/xbill/DNS/ad;
    .end local v6    # "servers":[Ljava/lang/String;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 77
    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v9}, Lorg/xbill/DNS/t;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 86
    iput-boolean v11, p0, Lorg/xbill/DNS/a/a;->f:Z

    .line 87
    :cond_3
    return-void

    .line 69
    .restart local v2    # "n":I
    .restart local v6    # "servers":[Ljava/lang/String;
    .restart local v7    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "n":I
    .end local v6    # "servers":[Ljava/lang/String;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "DNSJavaNameService: invalid sun.net.spi.nameservice.domain"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/ag;->a(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 171
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/t;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 172
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-nez v1, :cond_0

    .line 173
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 174
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/xbill/DNS/PTRRecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1c

    .line 130
    const/4 v5, 0x0

    .line 133
    .local v5, "name":Lorg/xbill/DNS/Name;
    :try_start_0
    new-instance v5, Lorg/xbill/DNS/Name;

    .end local v5    # "name":Lorg/xbill/DNS/Name;
    invoke-direct {v5, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    const/4 v7, 0x0

    .line 140
    .local v7, "records":[Lorg/xbill/DNS/Record;
    iget-boolean v8, p0, Lorg/xbill/DNS/a/a;->f:Z

    if-eqz v8, :cond_0

    .line 141
    new-instance v8, Lorg/xbill/DNS/t;

    invoke-direct {v8, v5, v10}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 142
    :cond_0
    if-nez v7, :cond_1

    .line 143
    new-instance v8, Lorg/xbill/DNS/t;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 144
    :cond_1
    if-nez v7, :cond_2

    iget-boolean v8, p0, Lorg/xbill/DNS/a/a;->f:Z

    if-nez v8, :cond_2

    .line 145
    new-instance v8, Lorg/xbill/DNS/t;

    invoke-direct {v8, v5, v10}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 146
    :cond_2
    if-nez v7, :cond_3

    .line 147
    new-instance v8, Ljava/net/UnknownHostException;

    invoke-direct {v8, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    .end local v7    # "records":[Lorg/xbill/DNS/Record;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v8, Ljava/net/UnknownHostException;

    invoke-direct {v8, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    .end local v3    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    .restart local v7    # "records":[Lorg/xbill/DNS/Record;
    :cond_3
    array-length v8, v7

    new-array v2, v8, [Ljava/net/InetAddress;

    .line 150
    .local v2, "array":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 151
    aget-object v6, v7, v4

    .line 152
    .local v6, "record":Lorg/xbill/DNS/Record;
    aget-object v8, v7, v4

    instance-of v8, v8, Lorg/xbill/DNS/ARecord;

    if-eqz v8, :cond_4

    .line 153
    aget-object v0, v7, v4

    check-cast v0, Lorg/xbill/DNS/ARecord;

    .line 154
    .local v0, "a":Lorg/xbill/DNS/ARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    aput-object v8, v2, v4

    .line 150
    .end local v0    # "a":Lorg/xbill/DNS/ARecord;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_4
    aget-object v1, v7, v4

    check-cast v1, Lorg/xbill/DNS/AAAARecord;

    .line 157
    .local v1, "aaaa":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    aput-object v8, v2, v4

    goto :goto_1

    .line 160
    .end local v1    # "aaaa":Lorg/xbill/DNS/AAAARecord;
    .end local v6    # "record":Lorg/xbill/DNS/Record;
    :cond_5
    return-object v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getHostByAddr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p0, v7}, Lorg/xbill/DNS/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "lookupAllHostAddr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 97
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/xbill/DNS/a/a;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 98
    .local v1, "addresses":[Ljava/net/InetAddress;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 99
    .local v6, "returnType":Ljava/lang/Class;
    sget-object v7, Lorg/xbill/DNS/a/a;->a:Ljava/lang/Class;

    if-nez v7, :cond_2

    const-string v7, "[Ljava.net.InetAddress;"

    invoke-static {v7}, Lorg/xbill/DNS/a/a;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/xbill/DNS/a/a;->a:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    sget-object v7, Lorg/xbill/DNS/a/a;->b:Ljava/lang/Class;

    if-nez v7, :cond_3

    const-string v7, "[[B"

    invoke-static {v7}, Lorg/xbill/DNS/a/a;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/xbill/DNS/a/a;->b:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 104
    array-length v5, v1

    .line 105
    .local v5, "naddrs":I
    new-array v2, v5, [[B

    .line 107
    .local v2, "byteAddresses":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_4

    .line 108
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 109
    .local v0, "addr":[B
    aput-object v0, v2, v4

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 99
    .end local v0    # "addr":[B
    .end local v2    # "byteAddresses":[[B
    .end local v4    # "i":I
    .end local v5    # "naddrs":I
    :cond_2
    sget-object v7, Lorg/xbill/DNS/a/a;->a:Ljava/lang/Class;

    goto :goto_1

    .line 102
    :cond_3
    sget-object v7, Lorg/xbill/DNS/a/a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .restart local v2    # "byteAddresses":[[B
    .restart local v4    # "i":I
    .restart local v5    # "naddrs":I
    :cond_4
    move-object v1, v2

    .line 111
    goto :goto_0

    .line 114
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "byteAddresses":[[B
    .end local v4    # "i":I
    .end local v5    # "naddrs":I
    .end local v6    # "returnType":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "DNSJavaNameService: Unexpected error."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    throw v3

    .line 119
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown function name or arguments."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
