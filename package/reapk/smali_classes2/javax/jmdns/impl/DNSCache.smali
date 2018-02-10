.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljavax/jmdns/impl/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29fa0881c54e5a5bL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .locals 1
    .param p1, "map"    # Ljavax/jmdns/impl/DNSCache;

    .prologue
    .line 59
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    .line 63
    :cond_0
    return-void

    .line 59
    :cond_1
    const/16 v0, 0x400

    goto :goto_0
.end method

.method private _getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDNSEntry(Ljavax/jmdns/impl/a;)Z
    .locals 4
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "result":Z
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 208
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/DNSCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    check-cast v0, Ljava/util/List;

    .line 212
    .restart local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :cond_0
    monitor-enter v0

    .line 213
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    .line 216
    const/4 v1, 0x1

    .line 218
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :cond_1
    return v1

    .line 214
    .restart local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public allValues()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 95
    .local v1, "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 99
    .end local v1    # "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    :cond_1
    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/a;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "result":Ljavax/jmdns/impl/a;
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 159
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    if-eqz v0, :cond_2

    .line 160
    monitor-enter v0

    .line 161
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/a;

    .line 162
    .local v2, "testDNSEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {v2, p2}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p3}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    move-object v1, v2

    .line 167
    .end local v2    # "testDNSEntry":Ljavax/jmdns/impl/a;
    :cond_1
    monitor-exit v0

    .line 169
    :cond_2
    return-object v1

    .line 167
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDNSEntry(Ljavax/jmdns/impl/a;)Ljavax/jmdns/impl/a;
    .locals 5
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Ljavax/jmdns/impl/a;
    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 134
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    if-eqz v0, :cond_2

    .line 135
    monitor-enter v0

    .line 136
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/a;

    .line 137
    .local v2, "testDNSEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object v1, v2

    .line 142
    .end local v2    # "testDNSEntry":Ljavax/jmdns/impl/a;
    :cond_1
    monitor-exit v0

    .line 145
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :cond_2
    return-object v1

    .line 142
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 110
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    if-eqz v0, :cond_0

    .line 111
    monitor-enter v0

    .line 112
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :try_start_1
    monitor-exit v0

    move-object v0, v1

    .line 117
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :goto_0
    return-object v0

    .line 113
    :catchall_0
    move-exception v2

    move-object v1, v0

    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .restart local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 115
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 113
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .restart local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 182
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    if-eqz v0, :cond_3

    .line 183
    monitor-enter v0

    .line 184
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/a;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/a;

    .line 187
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {v3, p2}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p3}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 191
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/a;>;"
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/a;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/a;>;"
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 195
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/a;>;"
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    :goto_2
    return-object v0

    .line 193
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 191
    :catchall_1
    move-exception v4

    move-object v1, v0

    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    .restart local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/a;>;"
    goto :goto_1
.end method

.method public removeDNSEntry(Ljavax/jmdns/impl/a;)Z
    .locals 3
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "result":Z
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 231
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    if-eqz v0, :cond_0

    .line 232
    monitor-enter v0

    .line 233
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0

    .line 237
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :cond_0
    return v1

    .line 234
    .restart local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public replaceDNSEntry(Ljavax/jmdns/impl/a;Ljavax/jmdns/impl/a;)Z
    .locals 4
    .param p1, "newDNSEntry"    # Ljavax/jmdns/impl/a;
    .param p2, "existingDNSEntry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "result":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 252
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/DNSCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    check-cast v0, Ljava/util/List;

    .line 256
    .restart local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :cond_0
    monitor-enter v0

    .line 257
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0

    .line 261
    const/4 v1, 0x1

    .line 263
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :cond_1
    return v1

    .line 259
    .restart local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/a;>;"
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x7d0

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 272
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v4, "\t---- cache ----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    .local v3, "key":Ljava/lang/String;
    const-string v5, "\n\t\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v5, "\n\t\tname \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v5, "\' "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 279
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/a;

    .line 282
    .local v1, "entry":Ljavax/jmdns/impl/a;
    const-string v6, "\n\t\t\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v1}, Ljavax/jmdns/impl/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 285
    .end local v1    # "entry":Ljavax/jmdns/impl/a;
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    .end local v0    # "aLog":Ljava/lang/StringBuffer;
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    .end local v3    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 285
    .restart local v0    # "aLog":Ljava/lang/StringBuffer;
    .restart local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    .restart local v3    # "key":Ljava/lang/String;
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 287
    :cond_1
    :try_start_4
    const-string v5, " no entries"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 290
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/a;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    monitor-exit p0

    return-object v4
.end method
