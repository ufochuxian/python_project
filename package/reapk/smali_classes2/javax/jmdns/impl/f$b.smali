.class Ljavax/jmdns/impl/f$b;
.super Ljavax/jmdns/impl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 5
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
    .line 37
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/f$b;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xe10

    invoke-virtual {v1, v2, v3, v4}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v0

    .line 38
    .local v0, "answer":Ljavax/jmdns/impl/g;
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 45
    invoke-virtual {p0}, Ljavax/jmdns/impl/f$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 46
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
