.class final Lrx/c/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/l;Ljava/lang/Object;)Lrx/c/y;
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
.field final synthetic a:Lrx/c/l;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/l;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lrx/c/m$3;->a:Lrx/c/l;

    iput-object p2, p0, Lrx/c/m$3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lrx/c/m$3;->a:Lrx/c/l;

    invoke-interface {v0, p1}, Lrx/c/l;->a([Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lrx/c/m$3;->b:Ljava/lang/Object;

    return-object v0
.end method
