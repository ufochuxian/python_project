.class Lorg/jsoup/nodes/b$a$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/jsoup/nodes/b$a;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/b$a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lorg/jsoup/nodes/b$a$b;->a:Lorg/jsoup/nodes/b$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/b$a;Lorg/jsoup/nodes/b$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/nodes/b$a;
    .param p2, "x1"    # Lorg/jsoup/nodes/b$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b$a$b;-><init>(Lorg/jsoup/nodes/b$a;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lorg/jsoup/nodes/b$a$a;

    iget-object v1, p0, Lorg/jsoup/nodes/b$a$b;->a:Lorg/jsoup/nodes/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/b$a$a;-><init>(Lorg/jsoup/nodes/b$a;Lorg/jsoup/nodes/b$1;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "count":I
    new-instance v1, Lorg/jsoup/nodes/b$a$a;

    iget-object v2, p0, Lorg/jsoup/nodes/b$a$b;->a:Lorg/jsoup/nodes/b$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jsoup/nodes/b$a$a;-><init>(Lorg/jsoup/nodes/b$a;Lorg/jsoup/nodes/b$1;)V

    .line 219
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return v0
.end method
