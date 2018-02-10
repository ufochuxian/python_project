.class Ljavax/jmdns/impl/f$e;
.super Ljavax/jmdns/impl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 13
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    const/16 v4, 0xe10

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v9, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    check-cast v9, Ljavax/jmdns/impl/m;

    .end local v9    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {p0, p1, p2, v9}, Ljavax/jmdns/impl/f$e;->a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/m;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->D()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 100
    .local v10, "serviceType":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->D()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/jmdns/impl/JmDNSImpl$b;

    .line 101
    .local v11, "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$b;
    new-instance v0, Ljavax/jmdns/impl/g$e;

    const-string v1, "_services._dns-sd._udp.local."

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v11}, Ljavax/jmdns/impl/JmDNSImpl$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    .end local v10    # "serviceType":Ljava/lang/String;
    .end local v11    # "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$b;
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->h()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 105
    .local v8, "ipValue":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 106
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v6

    .line 107
    .local v6, "address":Ljava/net/InetAddress;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "hostIPAddress":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v0, v1, v3, v4}, Ljavax/jmdns/impl/i;->b(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v0, v1, v3, v4}, Ljavax/jmdns/impl/i;->b(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "hostIPAddress":Ljava/lang/String;
    .end local v8    # "ipValue":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 107
    .restart local v6    # "address":Ljava/net/InetAddress;
    .restart local v8    # "ipValue":Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_2

    .line 117
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v8    # "ipValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3
.end method
