.class final Lrx/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/i;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lrx/b$3;->a:Lrx/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 608
    new-instance v0, Lrx/b$3$1;

    invoke-direct {v0, p0, p1}, Lrx/b$3$1;-><init>(Lrx/b$3;Lrx/d;)V

    .line 621
    .local v0, "te":Lrx/k;, "Lrx/k<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 622
    iget-object v1, p0, Lrx/b$3;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 623
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 605
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$3;->a(Lrx/d;)V

    return-void
.end method
