.class public final Lokhttp3/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/g$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/g$a;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    .prologue
    .line 312
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "pattern == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_0
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 315
    .local v0, "pin":Ljava/lang/String;
    iget-object v3, p0, Lokhttp3/g$a;->a:Ljava/util/List;

    new-instance v4, Lokhttp3/g$b;

    invoke-direct {v4, p1, v0}, Lokhttp3/g$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "pin":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public a()Lokhttp3/g;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    new-instance v0, Lokhttp3/g;

    iget-object v1, p0, Lokhttp3/g$a;->a:Ljava/util/List;

    invoke-static {v1}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lokhttp3/g;-><init>(Ljava/util/List;Lokhttp3/internal/e/b;Lokhttp3/g$1;)V

    return-object v0
.end method
