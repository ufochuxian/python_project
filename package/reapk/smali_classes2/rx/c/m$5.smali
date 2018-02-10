.class final Lrx/c/m$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/d;Ljava/lang/Object;)Lrx/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<TT1;TT2;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/d;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lrx/c/m$5;->a:Lrx/c/d;

    iput-object p2, p0, Lrx/c/m$5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)TR;"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lrx/c/m$5;->a:Lrx/c/d;

    invoke-interface {v0, p1, p2}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lrx/c/m$5;->b:Ljava/lang/Object;

    return-object v0
.end method
