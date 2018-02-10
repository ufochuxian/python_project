.class final Lrx/c/aa$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/aa;->a(Lrx/c/b;)Lrx/c/y;
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
.field final synthetic a:Lrx/c/b;


# direct methods
.method constructor <init>(Lrx/c/b;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lrx/c/aa$3;->a:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lrx/c/aa$3;->b([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 309
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action0 expecting 0 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lrx/c/aa$3;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method
