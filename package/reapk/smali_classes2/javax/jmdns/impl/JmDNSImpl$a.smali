.class Ljavax/jmdns/impl/JmDNSImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2039
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2040
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 2041
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->c:Ljava/lang/String;

    .line 2042
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->d:Z

    .line 2043
    return-void
.end method


# virtual methods
.method public a(J)[Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0xc8

    .line 2105
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->d:Z

    if-eqz v1, :cond_2

    .line 2106
    :cond_0
    div-long v2, p1, v4

    .line 2107
    .local v2, "loops":J
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 2108
    const-wide/16 v2, 0x1

    .line 2110
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 2112
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->d:Z

    if-nez v1, :cond_3

    .line 2121
    .end local v0    # "i":I
    .end local v2    # "loops":J
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->d:Z

    .line 2122
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/jmdns/ServiceInfo;

    return-object v1

    .line 2110
    .restart local v0    # "i":I
    .restart local v2    # "loops":J
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2113
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 6
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2053
    monitor-enter p0

    .line 2054
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 2055
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    :goto_0
    monitor-exit p0

    .line 2067
    return-void

    .line 2058
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->D()Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, "subtype":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/a;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;

    move-result-object v0

    .line 2060
    if-eqz v0, :cond_2

    .line 2061
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2066
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v1    # "subtype":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2058
    .restart local v0    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_1
    :try_start_1
    const-string v1, ""

    goto :goto_1

    .line 2063
    .restart local v1    # "subtype":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2077
    monitor-enter p0

    .line 2078
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    monitor-exit p0

    .line 2081
    return-void

    .line 2080
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2091
    monitor-enter p0

    .line 2092
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    monitor-exit p0

    .line 2095
    return-void

    .line 2094
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2131
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v2, "\n\tType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2132
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2133
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2134
    const-string v2, "\n\tNo services collected."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2144
    :cond_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2145
    const-string v2, "\n\tNo event queued."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2155
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2136
    :cond_2
    const-string v2, "\n\tServices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2137
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2138
    .local v1, "key":Ljava/lang/String;
    const-string v3, "\n\t\tService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2140
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2141
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2147
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    const-string v2, "\n\tEvents"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2148
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2149
    .restart local v1    # "key":Ljava/lang/String;
    const-string v3, "\n\t\tEvent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2151
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2152
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
