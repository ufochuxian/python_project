.class Ljavax/jmdns/impl/f$a;
.super Ljavax/jmdns/impl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 6
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
    .line 195
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "loname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->g()Z

    move-result v4

    const/16 v5, 0xe10

    invoke-virtual {v2, v3, v4, v5}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->D()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v1, Ljavax/jmdns/impl/f$e;

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->g()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/jmdns/impl/f$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 204
    .local v1, "question":Ljavax/jmdns/impl/f;
    invoke-virtual {v1, p1, p2}, Ljavax/jmdns/impl/f;->a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V

    goto :goto_0

    .line 208
    .end local v1    # "question":Ljavax/jmdns/impl/f;
    :cond_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/m;

    invoke-virtual {p0, p1, p2, v2}, Ljavax/jmdns/impl/f$a;->a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/m;)V

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 213
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public d(Ljavax/jmdns/impl/a;)Z
    .locals 1
    .param p1, "entry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
