.class public Ljavax/jmdns/impl/a/b/d;
.super Ljavax/jmdns/impl/a/b/c;
.source "SourceFile"


# static fields
.field static a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Ljavax/jmdns/impl/a/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/a/b/d;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 31
    invoke-static {}, Ljavax/jmdns/impl/a/b/d;->g()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/a/b/c;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 33
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/d;->b(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 34
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/d;->a(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 35
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
    const/4 v5, 0x0

    .line 116
    move-object v1, p1

    .line 117
    .local v1, "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v2, v3, v4, v5}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/f;)V

    .line 118
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->h()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)Ljava/util/Collection;

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

    .line 119
    .local v0, "answer":Ljavax/jmdns/impl/g;
    invoke-virtual {p0, v1, v0}, Ljavax/jmdns/impl/a/b/d;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 120
    goto :goto_0

    .line 121
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_0
    return-object v1
.end method

.method protected a(Ljavax/jmdns/impl/m;Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 10
    .param p1, "info"    # Ljavax/jmdns/impl/m;
    .param p2, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    move-object v9, p2

    .line 131
    .local v9, "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v0, v1, v2, v3}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Ljavax/jmdns/impl/a/b/d;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v9

    .line 133
    new-instance v0, Ljavax/jmdns/impl/g$f;

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->h()I

    move-result v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->r()I

    move-result v5

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->s()I

    move-result v6

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->q()I

    move-result v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v8

    .line 134
    invoke-virtual {v8}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/g$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 133
    invoke-virtual {p0, v9, v0}, Ljavax/jmdns/impl/a/b/d;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object v9

    .line 135
    return-object v9
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->t()V

    .line 145
    return-void
.end method

.method public a(Ljava/util/Timer;)V
    .locals 8
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 62
    .local v6, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->x()J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->y()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a(I)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljavax/jmdns/impl/JmDNSImpl;->a(J)V

    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->y()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 70
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->z()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a(I)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 72
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prober("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

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
    .line 89
    const-string v0, "probing"

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->i()V

    .line 80
    invoke-super {p0}, Ljavax/jmdns/impl/a/b/c;->cancel()Z

    move-result v0

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljavax/jmdns/impl/e;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljavax/jmdns/impl/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/e;-><init>(I)V

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a/b/d;->b(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 154
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->cancel()Z

    .line 157
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->m()V

    .line 159
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/a/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/d;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
