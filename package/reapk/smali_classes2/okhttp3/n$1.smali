.class final Lokhttp3/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/u;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Lokhttp3/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/u;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/u;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Lokhttp3/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/u;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/m;>;"
    return-void
.end method
