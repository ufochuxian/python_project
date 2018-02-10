.class public abstract Ljavax/jmdns/impl/g;
.super Ljavax/jmdns/impl/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/g$b;,
        Ljavax/jmdns/impl/g$f;,
        Ljavax/jmdns/impl/g$g;,
        Ljavax/jmdns/impl/g$e;,
        Ljavax/jmdns/impl/g$a;,
        Ljavax/jmdns/impl/g$d;,
        Ljavax/jmdns/impl/g$c;
    }
.end annotation


# static fields
.field public static final b:[B

.field private static c:Ljava/util/logging/Logger;


# instance fields
.field private d:I

.field private e:J

.field private f:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Ljavax/jmdns/impl/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/g;->c:Ljava/util/logging/Logger;

    .line 536
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Ljavax/jmdns/impl/g;->b:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z
    .param p5, "ttl"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/a;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 47
    iput p5, p0, Ljavax/jmdns/impl/g;->d:I

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/jmdns/impl/g;->e:J

    .line 49
    return-void
.end method


# virtual methods
.method a(I)J
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 124
    iget-wide v0, p0, Ljavax/jmdns/impl/g;->e:J

    iget v2, p0, Ljavax/jmdns/impl/g;->d:I

    mul-int/2addr v2, p1

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract a(Z)Ljavax/jmdns/ServiceInfo;
.end method

.method abstract a(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/b;Ljava/net/InetAddress;ILjavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1016
    invoke-super {p0, p1}, Ljavax/jmdns/impl/a;->a(Ljava/lang/StringBuilder;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ttl: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/g;->c(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    return-void
.end method

.method public a(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "source"    # Ljava/net/InetAddress;

    .prologue
    .line 1003
    iput-object p1, p0, Ljavax/jmdns/impl/g;->f:Ljava/net/InetAddress;

    .line 1004
    return-void
.end method

.method abstract a(Ljavax/jmdns/impl/e$a;)V
.end method

.method public a(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 149
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/g;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Ljavax/jmdns/impl/JmDNSImpl;)Z
.end method

.method abstract a(Ljavax/jmdns/impl/JmDNSImpl;J)Z
.end method

.method a(Ljavax/jmdns/impl/b;)Z
    .locals 7
    .param p1, "msg"    # Ljavax/jmdns/impl/b;

    .prologue
    const/4 v2, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->i()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 97
    .local v0, "answer":Ljavax/jmdns/impl/g;
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/g;->c(Ljavax/jmdns/impl/g;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const/4 v2, 0x1

    .line 105
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_1
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v3, Ljavax/jmdns/impl/g;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suppressedBy() message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method abstract a(Ljavax/jmdns/impl/g;)Z
.end method

.method public abstract b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
.end method

.method public b(I)V
    .locals 0
    .param p1, "ttl"    # I

    .prologue
    .line 1021
    iput p1, p0, Ljavax/jmdns/impl/g;->d:I

    .line 1022
    return-void
.end method

.method public b(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 140
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/g;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljavax/jmdns/impl/g;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(J)I
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/g;->a(I)J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method c(Ljavax/jmdns/impl/g;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Ljavax/jmdns/impl/g;->d:I

    iget v1, p0, Ljavax/jmdns/impl/g;->d:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 164
    iput-wide p1, p0, Ljavax/jmdns/impl/g;->e:J

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Ljavax/jmdns/impl/g;->d:I

    .line 166
    return-void
.end method

.method d(Ljavax/jmdns/impl/g;)V
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    .line 156
    iget-wide v0, p1, Ljavax/jmdns/impl/g;->e:J

    iput-wide v0, p0, Ljavax/jmdns/impl/g;->e:J

    .line 157
    iget v0, p1, Ljavax/jmdns/impl/g;->d:I

    iput v0, p0, Ljavax/jmdns/impl/g;->d:I

    .line 158
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 57
    instance-of v0, p1, Ljavax/jmdns/impl/g;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljavax/jmdns/impl/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/jmdns/impl/g;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract o()Z
.end method

.method public p()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Ljavax/jmdns/impl/g;->f:Ljava/net/InetAddress;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Ljavax/jmdns/impl/g;->d:I

    return v0
.end method
