.class public Lorg/cybergarage/http/HTTPServerList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 37
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "list"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 41
    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 42
    iput p2, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 43
    return-void
.end method


# virtual methods
.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 52
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 57
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 55
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2, p1}, Lorg/cybergarage/http/HTTPServer;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 71
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 76
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 74
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->close()Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPServer;

    return-object v0
.end method

.method public open()I
    .locals 9

    .prologue
    .line 80
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 82
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 84
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 85
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-lt v3, v7, :cond_1

    .line 98
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 99
    .local v4, "j":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v7, v0

    if-lt v3, v7, :cond_3

    .line 114
    return v4

    .line 87
    .end local v4    # "j":I
    :cond_1
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 92
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 93
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_2
    if-ge v5, v6, :cond_0

    .line 95
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 101
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_3
    aget-object v7, v0, v3

    invoke-static {v7}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 99
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :cond_4
    new-instance v2, Lorg/cybergarage/http/HTTPServer;

    invoke-direct {v2}, Lorg/cybergarage/http/HTTPServer;-><init>()V

    .line 104
    .local v2, "httpServer":Lorg/cybergarage/http/HTTPServer;
    aget-object v7, v0, v3

    if-eqz v7, :cond_5

    aget-object v7, v0, v3

    iget v8, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {v2, v7, v8}, Lorg/cybergarage/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 106
    :cond_5
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 107
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    goto :goto_3

    .line 110
    :cond_6
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPServerList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public open(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 130
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 135
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 133
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->start()Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 140
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 143
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->stop()Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
