.class final Lrx/c/aa$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/aa;->a(Lrx/c/d;)Lrx/c/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/y",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/d;


# direct methods
.method constructor <init>(Lrx/c/d;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lrx/c/aa$5;->a:Lrx/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lrx/c/aa$5;->b([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 358
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action3 expecting 2 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lrx/c/aa$5;->a:Lrx/c/d;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method
