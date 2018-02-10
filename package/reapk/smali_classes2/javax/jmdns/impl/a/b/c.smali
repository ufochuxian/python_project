.class public abstract Ljavax/jmdns/impl/a/b/c;
.super Ljavax/jmdns/impl/a/a;
.source "SourceFile"


# static fields
.field static b:Ljava/util/logging/Logger;

.field private static c:I


# instance fields
.field private final a:I

.field private d:Ljavax/jmdns/impl/constants/DNSState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljavax/jmdns/impl/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/a/b/c;->b:Ljava/util/logging/Logger;

    .line 32
    const/16 v0, 0xe10

    sput v0, Ljavax/jmdns/impl/a/b/c;->c:I

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "ttl"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/a/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/a/b/c;->d:Ljavax/jmdns/impl/constants/DNSState;

    .line 60
    iput p2, p0, Ljavax/jmdns/impl/a/b/c;->a:I

    .line 61
    return-void
.end method

.method public static a(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 51
    sput p0, Ljavax/jmdns/impl/a/b/c;->c:I

    .line 52
    return-void
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 42
    sget v0, Ljavax/jmdns/impl/a/b/c;->c:I

    return v0
.end method


# virtual methods
.method protected abstract a(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Ljavax/jmdns/impl/m;Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)V
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSStatefulObject;

    .line 162
    .local v0, "object":Ljavax/jmdns/impl/DNSStatefulObject;
    monitor-enter v0

    .line 163
    :try_start_0
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/a/a;)Z

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    .end local v0    # "object":Ljavax/jmdns/impl/DNSStatefulObject;
    :cond_0
    return-void
.end method

.method protected a(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 3
    .param p1, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 79
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 81
    .local v0, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/m;

    .end local v0    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0, p1}, Ljavax/jmdns/impl/m;->associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 83
    :cond_0
    return-void
.end method

.method protected b(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 0
    .param p1, "taskState"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/a/b/c;->d:Ljavax/jmdns/impl/constants/DNSState;

    .line 186
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Ljavax/jmdns/impl/e;
.end method

.method protected abstract f()V
.end method

.method public h()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ljavax/jmdns/impl/a/b/c;->a:I

    return v0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V

    .line 92
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v0, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/m;

    .end local v0    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/m;->removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 98
    :cond_0
    return-void
.end method

.method protected j()Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ljavax/jmdns/impl/a/b/c;->d:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->e()Ljavax/jmdns/impl/e;

    move-result-object v3

    .line 104
    .local v3, "out":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->d()Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->cancel()Z

    .line 149
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v5, "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v8

    invoke-virtual {v6, p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    sget-object v6, Ljavax/jmdns/impl/a/b/c;->b:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/a/b/c;->a(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;

    move-result-object v3

    .line 116
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .line 119
    .local v4, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v0, v4

    check-cast v0, Ljavax/jmdns/impl/m;

    move-object v2, v0

    .line 121
    .local v2, "info":Ljavax/jmdns/impl/m;
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :try_start_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v7

    invoke-virtual {v2, p0, v7}, Ljavax/jmdns/impl/m;->isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    sget-object v7, Ljavax/jmdns/impl/a/b/c;->b:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/a/b/c;->a(Ljavax/jmdns/impl/m;Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;

    move-result-object v3

    .line 127
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .end local v2    # "info":Ljavax/jmdns/impl/m;
    .end local v4    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v5    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v6, Ljavax/jmdns/impl/a/b/c;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run() exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/a/b/c;->a(Ljava/lang/Throwable;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->f()V

    goto/16 :goto_0

    .line 116
    .restart local v5    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6

    .line 129
    :cond_3
    invoke-virtual {v3}, Ljavax/jmdns/impl/e;->v()Z

    move-result v6

    if-nez v6, :cond_4

    .line 130
    sget-object v6, Ljavax/jmdns/impl/a/b/c;->b:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".run() JmDNS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->j()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 134
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/a/b/c;->a(Ljava/util/List;)V

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/a/b/c;->a(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/b/c;->cancel()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method
