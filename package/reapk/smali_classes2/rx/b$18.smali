.class Lrx/b$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/c/p;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/c/p;)V
    .locals 0

    .prologue
    .line 1679
    iput-object p1, p0, Lrx/b$18;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$18;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 1682
    iget-object v0, p0, Lrx/b$18;->b:Lrx/b;

    new-instance v1, Lrx/b$18$1;

    invoke-direct {v1, p0, p1}, Lrx/b$18$1;-><init>(Lrx/b$18;Lrx/d;)V

    invoke-virtual {v0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 1714
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1679
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$18;->a(Lrx/d;)V

    return-void
.end method
