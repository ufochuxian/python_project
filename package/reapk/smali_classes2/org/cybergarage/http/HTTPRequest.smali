.class public Lorg/cybergarage/http/HTTPRequest;
.super Lorg/cybergarage/http/HTTPPacket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;
    }
.end annotation


# static fields
.field private static mUDPUnknownHostTimes:I


# instance fields
.field private httpSocket:Lorg/cybergarage/http/HTTPSocket;

.field private mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private tcpSocketQuicklyA:Ljava/net/Socket;

.field private tempContent:Ljava/lang/String;

.field private udpDsA:Ljava/net/DatagramSocket;

.field private udpDsB:Ljava/net/DatagramSocket;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    sput v0, Lorg/cybergarage/http/HTTPRequest;->mUDPUnknownHostTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPPacket;-><init>()V

    .line 108
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tempContent:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 282
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 417
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 477
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 614
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    .line 615
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    .line 654
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 90
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 108
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tempContent:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 282
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 417
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 477
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 614
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    .line 615
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    .line 654
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 101
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 102
    return-void
.end method

.method private closeSocket()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 1001
    :cond_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "socketOne"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 531
    if-nez p1, :cond_0

    .line 533
    new-instance p1, Ljava/net/Socket;

    .end local p1    # "socketOne":Ljava/net/Socket;
    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    .line 534
    .restart local p1    # "socketOne":Ljava/net/Socket;
    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 537
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 538
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 539
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 540
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 542
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x1388

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 545
    :cond_0
    return-object p1
.end method

.method private quicklyUDPHost(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 3
    .param p1, "ds"    # Ljava/net/DatagramSocket;

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 623
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local p1    # "ds":Ljava/net/DatagramSocket;
    .local v0, "ds":Ljava/net/DatagramSocket;
    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 632
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .restart local p1    # "ds":Ljava/net/DatagramSocket;
    :cond_0
    :goto_0
    return-object p1

    .line 625
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/net/SocketException;
    :goto_1
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    .line 629
    const/4 p1, 0x0

    goto :goto_0

    .line 625
    .end local v1    # "e":Ljava/net/SocketException;
    .end local p1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v1

    move-object p1, v0

    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .restart local p1    # "ds":Ljava/net/DatagramSocket;
    goto :goto_1
.end method


# virtual methods
.method public closeHostQuickly()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    const-string v1, "online closeHostQuickly() "

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 506
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 520
    iput-object v2, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    .line 522
    :cond_1
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 525
    iput-object v2, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    .line 527
    :cond_2
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeHostSocket()V
    .locals 2

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "clearHostSocket"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public connectHost(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isKeepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1388

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 427
    if-nez p3, :cond_1

    .line 429
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 430
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 433
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 434
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v2, v3, v1}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 435
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 436
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 443
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 446
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 447
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 448
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 449
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0, v2, v3, v1}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 450
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 451
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0
.end method

.method public connectHostQuickly(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const-string v0, "online ConnectHostQuickly()"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-direct {p0, v0, p1, p2}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 483
    return-void
.end method

.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->hasFirstLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/cybergarage/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lorg/cybergarage/http/ParameterList;
    .locals 10

    .prologue
    .line 215
    new-instance v5, Lorg/cybergarage/http/ParameterList;

    invoke-direct {v5}, Lorg/cybergarage/http/ParameterList;-><init>()V

    .line 216
    .local v5, "paramList":Lorg/cybergarage/http/ParameterList;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "uri":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 232
    :cond_0
    return-object v5

    .line 219
    :cond_1
    const/16 v8, 0x3f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 220
    .local v4, "paramIdx":I
    if-ltz v4, :cond_0

    .line 222
    :goto_0
    if-lez v4, :cond_0

    .line 224
    const/16 v8, 0x3d

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 225
    .local v0, "eqIdx":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "name":Ljava/lang/String;
    const/16 v8, 0x26

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 227
    .local v2, "nextParamIdx":I
    add-int/lit8 v9, v0, 0x1

    if-lez v2, :cond_2

    move v8, v2

    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "value":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/http/Parameter;

    invoke-direct {v3, v1, v7}, Lorg/cybergarage/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v3, "param":Lorg/cybergarage/http/Parameter;
    invoke-virtual {v5, v3}, Lorg/cybergarage/http/ParameterList;->add(Ljava/lang/Object;)Z

    .line 230
    move v4, v2

    goto :goto_0

    .line 227
    .end local v3    # "param":Lorg/cybergarage/http/Parameter;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getParameterList()Lorg/cybergarage/http/ParameterList;

    move-result-object v0

    .line 238
    .local v0, "paramList":Lorg/cybergarage/http/ParameterList;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lorg/cybergarage/http/HTTPSocket;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    return-object v0
.end method

.method public getTempContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tempContent:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 132
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .locals 1

    .prologue
    .line 142
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isCloseConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v2

    .line 366
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isKeepAliveConnection()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 367
    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "httpVer":Ljava/lang/String;
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v3

    .line 370
    .local v1, "isHTTP10":Z
    :goto_1
    if-nez v1, :cond_0

    move v2, v3

    .line 372
    goto :goto_0

    .end local v1    # "isHTTP10":Z
    :cond_3
    move v1, v2

    .line 369
    goto :goto_1
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "headerMethod":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isNotifyRequest()Z
    .locals 1

    .prologue
    .line 157
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQuicklyRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContent()[B

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 247
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 147
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 152
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized justPost(Ljava/lang/String;IZ)Z
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isKeepAlive"    # Z

    .prologue
    const/4 v7, 0x0

    .line 752
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->setHost(Ljava/lang/String;)V

    .line 753
    if-eqz p3, :cond_7

    const-string v8, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v8}, Lorg/cybergarage/http/HTTPRequest;->setConnection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const/4 v5, 0x0

    .line 761
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->connectHost(Ljava/lang/String;IZ)V

    .line 787
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 789
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 790
    .local v6, "pout":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isChunked()Z

    move-result v4

    .line 795
    .local v4, "isChunkedRequest":Z
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 797
    .local v2, "contentLength":I
    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 802
    :cond_0
    if-lez v2, :cond_2

    .line 804
    if-eqz v4, :cond_1

    .line 807
    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    if-eqz v4, :cond_2

    .line 813
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_2
    if-eqz v4, :cond_3

    .line 818
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    :cond_3
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    if-nez p3, :cond_5

    .line 862
    if-eqz v5, :cond_4

    .line 866
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    :cond_4
    :goto_1
    :try_start_3
    iget-object v7, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_5

    .line 876
    :try_start_4
    iget-object v7, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 880
    :goto_2
    const/4 v7, 0x0

    :try_start_5
    iput-object v7, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 886
    :cond_5
    const/4 v7, 0x1

    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contentLength":I
    .end local v4    # "isChunkedRequest":Z
    .end local v6    # "pout":Ljava/io/PrintWriter;
    :cond_6
    :goto_3
    monitor-exit p0

    return v7

    .line 753
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_7
    :try_start_6
    const-string v8, "close"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 824
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 826
    .local v3, "e":Ljava/net/SocketException;
    if-eqz p3, :cond_9

    .line 828
    :try_start_7
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v8, :cond_8

    .line 832
    :try_start_8
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 836
    :goto_4
    const/4 v8, 0x0

    :try_start_9
    iput-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 838
    :cond_8
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 860
    :cond_9
    if-nez p3, :cond_6

    .line 862
    if-eqz v5, :cond_a

    .line 866
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 872
    :cond_a
    :goto_5
    :try_start_b
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v8, :cond_6

    .line 876
    :try_start_c
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 880
    :goto_6
    const/4 v8, 0x0

    :try_start_d
    iput-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 752
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 841
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 843
    .local v3, "e":Ljava/io/IOException;
    if-eqz p3, :cond_c

    .line 845
    :try_start_e
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v8, :cond_b

    .line 849
    :try_start_f
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 853
    :goto_7
    const/4 v8, 0x0

    :try_start_10
    iput-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 855
    :cond_b
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 860
    :cond_c
    if-nez p3, :cond_6

    .line 862
    if-eqz v5, :cond_d

    .line 866
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 872
    :cond_d
    :goto_8
    :try_start_12
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v8, :cond_6

    .line 876
    :try_start_13
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 880
    :goto_9
    const/4 v8, 0x0

    :try_start_14
    iput-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_3

    .line 859
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 860
    if-nez p3, :cond_f

    .line 862
    if-eqz v5, :cond_e

    .line 866
    :try_start_15
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 872
    :cond_e
    :goto_a
    :try_start_16
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v8, :cond_f

    .line 876
    :try_start_17
    iget-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 880
    :goto_b
    const/4 v8, 0x0

    :try_start_18
    iput-object v8, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 884
    :cond_f
    throw v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 867
    .local v3, "e":Ljava/net/SocketException;
    :catch_2
    move-exception v8

    goto :goto_5

    .local v3, "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_8

    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_a

    .restart local v1    # "content":Ljava/lang/String;
    .restart local v2    # "contentLength":I
    .restart local v4    # "isChunkedRequest":Z
    .restart local v6    # "pout":Ljava/io/PrintWriter;
    :catch_5
    move-exception v7

    goto :goto_1

    .line 877
    :catch_6
    move-exception v7

    goto :goto_2

    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contentLength":I
    .end local v4    # "isChunkedRequest":Z
    .end local v6    # "pout":Ljava/io/PrintWriter;
    :catch_7
    move-exception v8

    goto :goto_b

    .restart local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    goto :goto_9

    .line 850
    :catch_9
    move-exception v8

    goto :goto_7

    .line 877
    .local v3, "e":Ljava/net/SocketException;
    :catch_a
    move-exception v8

    goto :goto_6

    .line 833
    :catch_b
    move-exception v8

    goto :goto_4
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;
    .locals 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isKeepAlive"    # Z

    .prologue
    .line 892
    new-instance v4, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v4}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 893
    .local v4, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->setHost(Ljava/lang/String;)V

    .line 894
    if-eqz p3, :cond_9

    const-string v11, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v11}, Lorg/cybergarage/http/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 895
    const-string v11, "Cache-Control"

    const-string v12, "no-cache"

    invoke-virtual {p0, v11, v12}, Lorg/cybergarage/http/HTTPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v7

    .line 899
    .local v7, "isHeaderRequest":Z
    const/4 v8, 0x0

    .line 900
    .local v8, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 904
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p3}, Lorg/cybergarage/http/HTTPRequest;->connectHost(Ljava/lang/String;IZ)V

    .line 905
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 906
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 907
    .local v9, "pout":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isChunked()Z

    move-result v6

    .line 912
    .local v6, "isChunkedRequest":Z
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 915
    .local v2, "contentLength":I
    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 918
    :cond_0
    if-lez v2, :cond_2

    .line 920
    if-eqz v6, :cond_1

    .line 923
    int-to-long v12, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    if-eqz v6, :cond_2

    .line 929
    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    :cond_2
    if-eqz v6, :cond_3

    .line 934
    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    :cond_3
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 939
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 940
    invoke-virtual {v4, v5, v7}, Lorg/cybergarage/http/HTTPResponse;->set(Ljava/io/InputStream;Z)Z

    .line 941
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v10

    .line 942
    .local v10, "statuscode":I
    if-eqz v10, :cond_4

    const-string v11, "close"

    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->getConnection()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 944
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DMR server connection has been closed, status code ="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_5
    if-eqz v5, :cond_6

    .line 962
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 968
    :cond_6
    :goto_1
    if-eqz v8, :cond_7

    .line 972
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 978
    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    .line 980
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;->closeSocket()V

    .line 983
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contentLength":I
    .end local v6    # "isChunkedRequest":Z
    .end local v9    # "pout":Ljava/io/PrintWriter;
    .end local v10    # "statuscode":I
    :cond_8
    :goto_3
    return-object v4

    .line 894
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "isHeaderRequest":Z
    .end local v8    # "out":Ljava/io/OutputStream;
    :cond_9
    const-string v11, "close"

    goto/16 :goto_0

    .line 946
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "isHeaderRequest":Z
    .restart local v8    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 948
    .local v3, "e":Ljava/net/SocketException;
    const/16 v11, 0x194

    :try_start_3
    invoke-virtual {v4, v11}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 949
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 958
    if-eqz v5, :cond_a

    .line 962
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 968
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_a
    :goto_4
    if-eqz v8, :cond_b

    .line 972
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 978
    :cond_b
    :goto_5
    if-eqz p3, :cond_8

    .line 980
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;->closeSocket()V

    goto :goto_3

    .line 963
    .restart local v3    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v3

    .line 965
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 975
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 951
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 954
    .local v3, "e":Ljava/io/IOException;
    const/16 v11, 0x1f4

    :try_start_6
    invoke-virtual {v4, v11}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 955
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 958
    if-eqz v5, :cond_c

    .line 962
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 968
    .end local v3    # "e":Ljava/io/IOException;
    :cond_c
    :goto_6
    if-eqz v8, :cond_d

    .line 972
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 978
    :cond_d
    :goto_7
    if-eqz p3, :cond_8

    .line 980
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;->closeSocket()V

    goto :goto_3

    .line 963
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 965
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 975
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 957
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 958
    if-eqz v5, :cond_e

    .line 962
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 968
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    .line 972
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 978
    :cond_f
    :goto_9
    if-eqz p3, :cond_10

    .line 980
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;->closeSocket()V

    .line 982
    :cond_10
    throw v11

    .line 963
    :catch_6
    move-exception v3

    .line 965
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 975
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 963
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v2    # "contentLength":I
    .restart local v6    # "isChunkedRequest":Z
    .restart local v9    # "pout":Ljava/io/PrintWriter;
    .restart local v10    # "statuscode":I
    :catch_8
    move-exception v3

    .line 965
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v3

    .line 975
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public post(Lorg/cybergarage/http/HTTPResponse;)Z
    .locals 17
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;

    .prologue
    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v10

    .line 391
    .local v10, "httpSock":Lorg/cybergarage/http/HTTPSocket;
    const-wide/16 v12, 0x0

    .line 392
    .local v12, "offset":J
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->getContentLength()J

    move-result-wide v8

    .line 393
    .local v8, "length":J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->hasContentRange()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getContentRangeFirstPosition()J

    move-result-wide v4

    .line 396
    .local v4, "firstPos":J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getContentRangeLastPosition()J

    move-result-wide v6

    .line 399
    .local v6, "lastPos":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_0

    .line 400
    const-wide/16 v2, 0x1

    sub-long v6, v8, v2

    .line 401
    :cond_0
    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 402
    :cond_1
    const/16 v2, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v2

    .line 409
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :goto_0
    return v2

    .restart local v4    # "firstPos":J
    .restart local v6    # "lastPos":J
    :cond_2
    move-object/from16 v3, p1

    .line 403
    invoke-virtual/range {v3 .. v9}, Lorg/cybergarage/http/HTTPResponse;->setContentRange(JJJ)V

    .line 404
    const/16 v2, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 406
    move-wide v12, v4

    .line 407
    sub-long v2, v6, v4

    const-wide/16 v14, 0x1

    add-long v8, v2, v14

    .line 409
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v16

    move-object/from16 v11, p1

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;JJZ)Z

    move-result v2

    goto :goto_0
.end method

.method public postQuickly(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;
    .locals 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 701
    const/4 v3, 0x0

    .line 702
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 705
    if-eqz p1, :cond_0

    .line 708
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 709
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 710
    .local v4, "pout":Ljava/io/PrintWriter;
    invoke-virtual {v4, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    .end local v4    # "pout":Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    return-object p1

    .line 713
    :catch_0
    move-exception v2

    .line 715
    .local v2, "ex":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 719
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 723
    :goto_1
    const/4 p1, 0x0

    .line 725
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception To reconnect and send data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object p1

    goto :goto_0

    .line 729
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 731
    .local v0, "e":Ljava/io/IOException;
    if-eqz p1, :cond_0

    .line 735
    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 741
    :goto_2
    const/4 p1, 0x0

    goto :goto_0

    .line 736
    :catch_2
    move-exception v1

    .line 739
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 720
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public print()V
    .locals 4

    .prologue
    .line 1060
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------------------DUMP HTTPRequest [Start]------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1061
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1062
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------------------DUMP HTTPRequest [End]-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public declared-synchronized quicklyPost(Ljava/lang/String;IB)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "data"    # B

    .prologue
    const/4 v3, 0x1

    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-direct {p0, v4, p1, p2}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 575
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {v4, p3}, Ljava/net/Socket;->sendUrgentData(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 578
    :catch_0
    move-exception v2

    .line 580
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 584
    :try_start_3
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    :goto_1
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 590
    :cond_1
    iget-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-direct {p0, v4, p1, p2}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 592
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 594
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v3, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    .line 598
    :try_start_6
    iget-object v3, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 604
    :goto_2
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 606
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 599
    :catch_2
    move-exception v1

    .line 602
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 570
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 585
    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public declared-synchronized quicklyTCPPost(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->postQuickly(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 554
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 556
    const-string v0, "quicklyTCPPost failed"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quicklyUDPPost(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 640
    monitor-enter p0

    const/4 v0, 0x0

    .line 641
    .local v0, "retA":Z
    const/4 v1, 0x0

    .line 642
    .local v1, "retB":Z
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsA:Ljava/net/DatagramSocket;

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->quicklyUDPPost(Ljava/net/DatagramSocket;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 643
    if-nez v0, :cond_0

    .line 645
    iget-object v2, p0, Lorg/cybergarage/http/HTTPRequest;->udpDsB:Ljava/net/DatagramSocket;

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->quicklyUDPPost(Ljava/net/DatagramSocket;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "quicklyUDPPost UDP failed, resend ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 650
    .end local v0    # "retA":Z
    :cond_0
    monitor-exit p0

    return v0

    .line 640
    .restart local v0    # "retA":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized quicklyUDPPost(Ljava/net/DatagramSocket;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "ds"    # Ljava/net/DatagramSocket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 666
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->quicklyUDPHost(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 667
    if-eqz p1, :cond_0

    .line 671
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 672
    .local v0, "dp":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    const/4 v2, 0x1

    .line 694
    .end local v0    # "dp":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 674
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 677
    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    .line 680
    const/4 p1, 0x0

    goto :goto_0

    .line 683
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 685
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 686
    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    const/4 p1, 0x0

    goto :goto_0

    .line 666
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public read()Z
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->read(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public reconnectHostQuickly(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    invoke-direct {p0, v0, p1, p2}, Lorg/cybergarage/http/HTTPRequest;->connectHostTcpQuickly(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->tcpSocketQuicklyA:Ljava/net/Socket;

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v0, "online reconnectHostQuickly() sendUrgentData"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 495
    if-eqz p3, :cond_1

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/http/HTTPRequest;->quicklyTCPPost(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public returnBadRequest()Z
    .locals 1

    .prologue
    .line 1040
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .locals 1

    .prologue
    .line 1035
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 1027
    new-instance v0, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1028
    .local v0, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1029
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 1030
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 1018
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 1019
    return-void
.end method

.method public setHostUnknownTimeListener(Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .prologue
    .line 658
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 659
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0
    .param p1, "host"    # I

    .prologue
    .line 270
    iput p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 271
    return-void
.end method

.method public setSocket(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 0
    .param p1, "value"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 287
    return-void
.end method

.method public setTempContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempContent"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->tempContent:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCheckRelativeURL"    # Z

    .prologue
    .line 190
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 191
    if-nez p2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1051
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1053
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
