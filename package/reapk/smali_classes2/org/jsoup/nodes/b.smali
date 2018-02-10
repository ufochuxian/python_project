.class public Lorg/jsoup/nodes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/b$1;,
        Lorg/jsoup/nodes/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/jsoup/nodes/a;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "data-"


# instance fields
.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    .line 191
    return-void
.end method

.method static synthetic a(Lorg/jsoup/nodes/b;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/b;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 17
    iput-object p1, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic b(Lorg/jsoup/nodes/b;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 34
    const-string v1, ""

    .line 37
    :goto_0
    return-object v1

    .line 36
    :cond_0
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 37
    .local v0, "attr":Lorg/jsoup/nodes/a;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lorg/jsoup/nodes/a;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "attr":Lorg/jsoup/nodes/a;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    .line 48
    return-void
.end method

.method a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V
    .locals 4
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 143
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_1

    .line 151
    :cond_0
    return-void

    .line 146
    :cond_1
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jsoup/nodes/a;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 148
    .local v0, "attribute":Lorg/jsoup/nodes/a;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/a;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V

    goto :goto_0
.end method

.method public a(Lorg/jsoup/nodes/a;)V
    .locals 2
    .param p1, "attribute"    # Lorg/jsoup/nodes/a;

    .prologue
    .line 55
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public a(Lorg/jsoup/nodes/b;)V
    .locals 2
    .param p1, "incoming"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 120
    :goto_0
    return-object v3

    .line 116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/a;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jsoup/nodes/a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jsoup/nodes/a;>;"
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lorg/jsoup/nodes/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b$1;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->e()Lorg/jsoup/nodes/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "accum":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->i()Lorg/jsoup/nodes/Document$a;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public e()Lorg/jsoup/nodes/b;
    .locals 7

    .prologue
    .line 176
    iget-object v4, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 177
    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    .line 188
    :cond_0
    return-object v1

    .line 181
    :cond_1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v1, "clone":Lorg/jsoup/nodes/b;
    new-instance v4, Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, v1, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    .line 186
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 187
    .local v0, "attribute":Lorg/jsoup/nodes/a;
    iget-object v4, v1, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->e()Lorg/jsoup/nodes/a;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    .end local v0    # "attribute":Lorg/jsoup/nodes/a;
    .end local v1    # "clone":Lorg/jsoup/nodes/b;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    instance-of v3, p1, Lorg/jsoup/nodes/b;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 162
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 164
    .local v0, "that":Lorg/jsoup/nodes/b;
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
