.class Lrx/d/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->h()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;)V
    .locals 0

    .prologue
    .line 423
    .local p0, "this":Lrx/d/b$2;, "Lrx/d/b.2;"
    iput-object p1, p0, Lrx/d/b$2;->a:Lrx/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lrx/d/b$2;, "Lrx/d/b.2;"
    iget-object v0, p0, Lrx/d/b$2;->a:Lrx/d/b;

    invoke-virtual {v0}, Lrx/d/b;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
