.class final Lrx/c/m$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/e;Ljava/lang/Object;)Lrx/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/r",
        "<TT1;TT2;TT3;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/e;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lrx/c/m$6;->a:Lrx/c/e;

    iput-object p2, p0, Lrx/c/m$6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)TR;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lrx/c/m$6;->a:Lrx/c/e;

    invoke-interface {v0, p1, p2, p3}, Lrx/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lrx/c/m$6;->b:Ljava/lang/Object;

    return-object v0
.end method
