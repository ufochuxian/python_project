.class Lrx/b$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->b(Lrx/c/p;)Lrx/b;
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
    .line 1728
    iput-object p1, p0, Lrx/b$19;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$19;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 1731
    new-instance v0, Lrx/i/e;

    invoke-direct {v0}, Lrx/i/e;-><init>()V

    .line 1732
    .local v0, "sd":Lrx/i/e;
    iget-object v1, p0, Lrx/b$19;->b:Lrx/b;

    new-instance v2, Lrx/b$19$1;

    invoke-direct {v2, p0, p1, v0}, Lrx/b$19$1;-><init>(Lrx/b$19;Lrx/d;Lrx/i/e;)V

    invoke-virtual {v1, v2}, Lrx/b;->a(Lrx/d;)V

    .line 1784
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1728
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$19;->a(Lrx/d;)V

    return-void
.end method
