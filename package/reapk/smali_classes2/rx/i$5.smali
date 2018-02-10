.class Lrx/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i;->b(Lrx/h;)Lrx/i;
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
.field final synthetic a:Lrx/h;

.field final synthetic b:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/h;)V
    .locals 0

    .prologue
    .line 1917
    .local p0, "this":Lrx/i$5;, "Lrx/i.5;"
    iput-object p1, p0, Lrx/i$5;->b:Lrx/i;

    iput-object p2, p0, Lrx/i$5;->a:Lrx/h;

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
    .line 1920
    .local p0, "this":Lrx/i$5;, "Lrx/i.5;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v1, p0, Lrx/i$5;->a:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 1921
    .local v0, "w":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 1923
    new-instance v1, Lrx/i$5$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/i$5$1;-><init>(Lrx/i$5;Lrx/k;Lrx/h$a;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 1951
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1917
    .local p0, "this":Lrx/i$5;, "Lrx/i.5;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/i$5;->a(Lrx/k;)V

    return-void
.end method
