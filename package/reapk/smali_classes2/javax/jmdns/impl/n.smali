.class Ljavax/jmdns/impl/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ljavax/jmdns/impl/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 2
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/n;->setDaemon(Z)V

    .line 31
    iput-object p1, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    .line 32
    return-void

    .line 29
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 37
    const/16 v4, 0x230c

    :try_start_0
    new-array v0, v4, [B

    .line 38
    .local v0, "buf":[B
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 39
    .local v3, "packet":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 41
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->E()Ljava/net/MulticastSocket;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 42
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    .end local v0    # "buf":[B
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    :goto_1
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/n;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run() exiting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 81
    :cond_2
    return-void

    .line 46
    .restart local v0    # "buf":[B
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    :cond_3
    :try_start_1
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/jmdns/impl/i;->a(Ljava/net/DatagramPacket;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    new-instance v2, Ljavax/jmdns/impl/b;

    invoke-direct {v2, v3}, Ljavax/jmdns/impl/b;-><init>(Ljava/net/DatagramPacket;)V

    .line 51
    .local v2, "msg":Ljavax/jmdns/impl/b;
    invoke-virtual {v2}, Ljavax/jmdns/impl/b;->p()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 52
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/n;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run() JmDNS in:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual {v2}, Ljavax/jmdns/impl/b;->t()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 56
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    sget v5, Ljavax/jmdns/impl/constants/a;->c:I

    if-eq v4, v5, :cond_5

    .line 57
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V

    .line 59
    :cond_5
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    iget-object v5, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->F()Ljava/net/InetAddress;

    move-result-object v5

    sget v6, Ljavax/jmdns/impl/constants/a;->c:I

    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 68
    .end local v2    # "msg":Ljavax/jmdns/impl/b;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/n;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".run() exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 72
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/n;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".run() exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->t()V

    goto/16 :goto_1

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v2    # "msg":Ljavax/jmdns/impl/b;
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    :cond_6
    :try_start_3
    iget-object v4, p0, Ljavax/jmdns/impl/n;->b:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/b;)V

    goto/16 :goto_0

    .line 64
    :cond_7
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Ljavax/jmdns/impl/n;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/n;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run() JmDNS in message with error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
