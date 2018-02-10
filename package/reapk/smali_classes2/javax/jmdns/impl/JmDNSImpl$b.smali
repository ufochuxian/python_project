.class public Ljavax/jmdns/impl/JmDNSImpl$b;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 203
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$b;->b:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$b;->a:Ljava/util/Set;

    .line 205
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl$b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$b;->a:Ljava/util/Set;

    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$b$a;

    invoke-direct {v1, p1}, Ljavax/jmdns/impl/JmDNSImpl$b$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljavax/jmdns/impl/JmDNSImpl$b;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$b;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl$b;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "entry":Ljavax/jmdns/impl/JmDNSImpl$b;
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    .local v1, "subTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl$b;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 272
    .end local v1    # "subTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->c()Ljavax/jmdns/impl/JmDNSImpl$b;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 282
    .local v0, "aLog":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$b;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 289
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
