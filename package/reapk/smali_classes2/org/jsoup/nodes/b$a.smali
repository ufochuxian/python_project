.class Lorg/jsoup/nodes/b$a;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/b$a$a;,
        Lorg/jsoup/nodes/b$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/jsoup/nodes/b;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/b;)V
    .locals 2

    .prologue
    .line 193
    iput-object p1, p0, Lorg/jsoup/nodes/b$a;->a:Lorg/jsoup/nodes/b;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 194
    invoke-static {p1}, Lorg/jsoup/nodes/b;->b(Lorg/jsoup/nodes/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p1, v0}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 196
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/nodes/b;
    .param p2, "x1"    # Lorg/jsoup/nodes/b$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "dataKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/jsoup/nodes/b$a;->a:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jsoup/nodes/b$a;->a:Lorg/jsoup/nodes/b;

    invoke-static {v3}, Lorg/jsoup/nodes/b;->b(Lorg/jsoup/nodes/b;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/a;

    invoke-virtual {v3}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "oldValue":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/jsoup/nodes/a;

    invoke-direct {v0, v1, p2}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "attr":Lorg/jsoup/nodes/a;
    iget-object v3, p0, Lorg/jsoup/nodes/b$a;->a:Lorg/jsoup/nodes/b;

    invoke-static {v3}, Lorg/jsoup/nodes/b;->b(Lorg/jsoup/nodes/b;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object v2

    .line 205
    .end local v0    # "attr":Lorg/jsoup/nodes/a;
    .end local v2    # "oldValue":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 199
    new-instance v0, Lorg/jsoup/nodes/b$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/b$a$b;-><init>(Lorg/jsoup/nodes/b$a;Lorg/jsoup/nodes/b$1;)V

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
