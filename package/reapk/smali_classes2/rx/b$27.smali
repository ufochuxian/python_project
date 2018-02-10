.class Lrx/b$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->c(Lrx/c/o;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/o;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/c/o;)V
    .locals 0

    .prologue
    .line 2270
    iput-object p1, p0, Lrx/b$27;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$27;->a:Lrx/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2273
    .local p1, "s":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/b$27;->b:Lrx/b;

    new-instance v1, Lrx/b$27$1;

    invoke-direct {v1, p0, p1}, Lrx/b$27$1;-><init>(Lrx/b$27;Lrx/k;)V

    invoke-virtual {v0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 2304
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2270
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$27;->a(Lrx/k;)V

    return-void
.end method
