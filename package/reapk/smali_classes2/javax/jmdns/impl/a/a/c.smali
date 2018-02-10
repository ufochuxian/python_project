.class public Ljavax/jmdns/impl/a/a/c;
.super Ljavax/jmdns/impl/a/a/a;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/a/a/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 29
    iput-object p2, p0, Ljavax/jmdns/impl/a/a/c;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Ljavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 5
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p1

    .line 64
    .local v0, "newOut":Ljavax/jmdns/impl/e;
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/c;->b:Ljava/lang/String;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/a/a/c;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

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
    .locals 11
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v7, p1

    .line 48
    .local v7, "newOut":Ljavax/jmdns/impl/e;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 49
    .local v8, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/c;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/ServiceInfo;

    .line 50
    .local v6, "info":Ljavax/jmdns/ServiceInfo;
    new-instance v0, Ljavax/jmdns/impl/g$e;

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x0

    const/16 v4, 0xe10

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {p0, v7, v0, v8, v9}, Ljavax/jmdns/impl/a/a/c;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v7

    .line 53
    goto :goto_0

    .line 54
    .end local v6    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_0
    return-object v7
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "querying service"

    return-object v0
.end method
