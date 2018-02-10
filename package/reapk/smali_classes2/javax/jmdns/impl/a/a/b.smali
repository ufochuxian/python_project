.class public Ljavax/jmdns/impl/a/a/b;
.super Ljavax/jmdns/impl/a/a/a;
.source "SourceFile"


# instance fields
.field private final b:Ljavax/jmdns/impl/m;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/m;)V
    .locals 5
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "info"    # Ljavax/jmdns/impl/m;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/a/a/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 29
    iput-object p2, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    .line 30
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 31
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/c;Ljavax/jmdns/impl/f;)V

    .line 32
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
    const/4 v4, 0x0

    .line 86
    move-object v0, p1

    .line 87
    .local v0, "newOut":Ljavax/jmdns/impl/e;
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    .line 89
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    .line 90
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    .line 92
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfoResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

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
    .locals 8
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v1, p1

    .line 64
    .local v1, "newOut":Ljavax/jmdns/impl/e;
    iget-object v4, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v4}, Ljavax/jmdns/impl/m;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    .local v2, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v5}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/a;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/g;

    invoke-virtual {p0, v1, v4, v2, v3}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v5}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/a;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/g;

    invoke-virtual {p0, v1, v4, v2, v3}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 68
    iget-object v4, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v4}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v5}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/a;

    .line 70
    .local v0, "addressEntry":Ljavax/jmdns/impl/a;
    check-cast v0, Ljavax/jmdns/impl/g;

    .end local v0    # "addressEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {p0, v1, v0, v2, v3}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v5}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/a;

    .line 73
    .restart local v0    # "addressEntry":Ljavax/jmdns/impl/a;
    check-cast v0, Ljavax/jmdns/impl/g;

    .end local v0    # "addressEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {p0, v1, v0, v2, v3}, Ljavax/jmdns/impl/a/a/b;->a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;

    move-result-object v1

    .line 74
    goto :goto_1

    .line 77
    .end local v2    # "now":J
    :cond_1
    return-object v1
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querying service info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Ljavax/jmdns/impl/a/a/a;->cancel()Z

    move-result v0

    .line 51
    .local v0, "result":Z
    iget-object v1, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a/b;->a()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/a/a/b;->b:Ljavax/jmdns/impl/m;

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/c;)V

    .line 54
    :cond_0
    return v0
.end method
