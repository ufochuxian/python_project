.class public Ljavax/jmdns/impl/a/a/d;
.super Ljavax/jmdns/impl/a/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/a/a/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 4
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "_services._dns-sd._udp.local."

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/jmdns/impl/a/a/d;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

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

.method protected b(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 12
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v6, p1

    .line 50
    .local v6, "newOut":Ljavax/jmdns/impl/e;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 51
    .local v8, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->D()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 52
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/d;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->D()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/jmdns/impl/JmDNSImpl$b;

    .line 53
    .local v10, "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$b;
    new-instance v0, Ljavax/jmdns/impl/g$e;

    const-string v1, "_services._dns-sd._udp.local."

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x0

    const/16 v4, 0xe10

    invoke-virtual {v10}, Ljavax/jmdns/impl/JmDNSImpl$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {p0, v6, v0, v8, v9}, Ljavax/jmdns/impl/a/a/d;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v6

    .line 54
    goto :goto_0

    .line 55
    .end local v7    # "type":Ljava/lang/String;
    .end local v10    # "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$b;
    :cond_0
    return-object v6
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "querying type"

    return-object v0
.end method
