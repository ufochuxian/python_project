.class public Ljavax/jmdns/impl/a/b/b;
.super Ljavax/jmdns/impl/a/b/c;
.source "SourceFile"


# static fields
.field static a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljavax/jmdns/impl/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/a/b/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/a/b/c;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 28
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/b;->b(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 29
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/b;->a(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 6
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v1, p1

    .line 104
    .local v1, "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->h()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 105
    .local v0, "answer":Ljavax/jmdns/impl/g;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljavax/jmdns/impl/a/b/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_0
    return-object v1
.end method

.method protected a(Ljavax/jmdns/impl/m;Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 6
    .param p1, "info"    # Ljavax/jmdns/impl/m;
    .param p2, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v1, p2

    .line 117
    .local v1, "newOut":Ljavax/jmdns/impl/e;
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->h()I

    move-result v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/i;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 118
    .local v0, "answer":Ljavax/jmdns/impl/g;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljavax/jmdns/impl/a/b/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 119
    goto :goto_0

    .line 120
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_0
    return-object v1
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->t()V

    .line 130
    return-void
.end method

.method public a(Ljava/util/Timer;)V
    .locals 6
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 56
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceler("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "canceling"

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->i()V

    .line 67
    invoke-super {p0}, Ljavax/jmdns/impl/a/b/c;->cancel()Z

    move-result v0

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Ljavax/jmdns/impl/e;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljavax/jmdns/impl/e;

    const v1, 0x8400

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/e;-><init>(I)V

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/b;->b(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 139
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->cancel()Z

    .line 142
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/a/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/b;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
