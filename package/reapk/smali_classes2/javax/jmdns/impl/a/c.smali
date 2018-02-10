.class public Ljavax/jmdns/impl/a/c;
.super Ljavax/jmdns/impl/a/a;
.source "SourceFile"


# static fields
.field static a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljavax/jmdns/impl/b;

.field private final c:Ljava/net/InetAddress;

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Ljavax/jmdns/impl/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/b;
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/a/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 46
    iput-object p2, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    .line 47
    iput-object p3, p0, Ljavax/jmdns/impl/a/c;->c:Ljava/net/InetAddress;

    .line 48
    iput p4, p0, Ljavax/jmdns/impl/a/c;->d:I

    .line 49
    sget v0, Ljavax/jmdns/impl/constants/a;->c:I

    if-eq p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljavax/jmdns/impl/a/c;->e:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Timer;)V
    .locals 7
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, "iAmTheOnlyOne":Z
    iget-object v3, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v3}, Ljavax/jmdns/impl/b;->g()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/f;

    .line 85
    .local v2, "question":Ljavax/jmdns/impl/f;
    sget-object v4, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    sget-object v4, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start() question="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/f;->a(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v1

    .line 89
    if-nez v1, :cond_0

    .line 93
    .end local v2    # "question":Ljavax/jmdns/impl/f;
    :cond_2
    if-eqz v1, :cond_6

    iget-object v3, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v3}, Ljavax/jmdns/impl/b;->r()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    .line 94
    .local v0, "delay":I
    :goto_0
    if-gez v0, :cond_3

    .line 95
    const/4 v0, 0x0

    .line 97
    :cond_3
    sget-object v3, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    sget-object v3, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start() Responder chosen delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 101
    int-to-long v4, v0

    invoke-virtual {p1, p0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 103
    :cond_5
    return-void

    .line 93
    .end local v0    # "delay":I
    :cond_6
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->z()Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    iget-object v4, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v4}, Ljavax/jmdns/impl/b;->b()I

    move-result v4

    sub-int v0, v3, v4

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

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

.method public run()V
    .locals 13

    .prologue
    .line 107
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    iget-object v10, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v9, v10}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/b;)V

    .line 110
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v8, "questions":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/f;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v1, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 116
    :try_start_0
    iget-object v9, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b;->g()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/impl/f;

    .line 117
    .local v7, "question":Ljavax/jmdns/impl/f;
    sget-object v10, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 118
    sget-object v10, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "run() JmDNS responding to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-boolean v10, p0, Ljavax/jmdns/impl/a/c;->e:Z

    if-eqz v10, :cond_1

    .line 123
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Ljavax/jmdns/impl/f;->a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v7    # "question":Ljavax/jmdns/impl/f;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v9, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "run() exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/jmdns/impl/JmDNSImpl;->close()V

    .line 169
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 130
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    .local v4, "now":J
    iget-object v9, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b;->j()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/g;

    .line 132
    .local v3, "knownAnswer":Ljavax/jmdns/impl/g;
    invoke-virtual {v3, v4, v5}, Ljavax/jmdns/impl/g;->a(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 133
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    sget-object v10, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 135
    sget-object v10, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_2

    .line 141
    .end local v3    # "knownAnswer":Ljavax/jmdns/impl/g;
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 142
    sget-object v9, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 143
    sget-object v9, Ljavax/jmdns/impl/a/c;->a:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "run() JmDNS responding"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 145
    :cond_6
    new-instance v6, Ljavax/jmdns/impl/e;

    const v10, 0x8400

    iget-boolean v9, p0, Ljavax/jmdns/impl/a/c;->e:Z

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    iget-object v11, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v11}, Ljavax/jmdns/impl/b;->c()I

    move-result v11

    invoke-direct {v6, v10, v9, v11}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 146
    .local v6, "out":Ljavax/jmdns/impl/e;
    iget-boolean v9, p0, Ljavax/jmdns/impl/a/c;->e:Z

    if-eqz v9, :cond_7

    .line 147
    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Ljavax/jmdns/impl/a/c;->c:Ljava/net/InetAddress;

    iget v11, p0, Ljavax/jmdns/impl/a/c;->d:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Ljavax/jmdns/impl/e;->a(Ljava/net/InetSocketAddress;)V

    .line 149
    :cond_7
    iget-object v9, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b;->d()I

    move-result v9

    invoke-virtual {v6, v9}, Ljavax/jmdns/impl/e;->a(I)V

    .line 150
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/impl/f;

    .line 151
    .restart local v7    # "question":Ljavax/jmdns/impl/f;
    if-eqz v7, :cond_8

    .line 152
    invoke-virtual {p0, v6, v7}, Ljavax/jmdns/impl/a/c;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v6

    goto :goto_4

    .line 145
    .end local v6    # "out":Ljavax/jmdns/impl/e;
    .end local v7    # "question":Ljavax/jmdns/impl/f;
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 155
    .restart local v6    # "out":Ljavax/jmdns/impl/e;
    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 156
    .local v0, "answer":Ljavax/jmdns/impl/g;
    if-eqz v0, :cond_b

    .line 157
    iget-object v10, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {p0, v6, v10, v0}, Ljavax/jmdns/impl/a/c;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object v6

    goto :goto_5

    .line 161
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_c
    invoke-virtual {v6}, Ljavax/jmdns/impl/e;->v()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/a/c;->b:Ljavax/jmdns/impl/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
