.class final Lrx/i$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i;->a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/s;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/y",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/s;


# direct methods
.method constructor <init>(Lrx/c/s;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lrx/i$13;->a:Lrx/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lrx/i$13;->a:Lrx/c/s;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lrx/c/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
