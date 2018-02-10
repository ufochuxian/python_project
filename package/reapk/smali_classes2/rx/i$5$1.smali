.class Lrx/i$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i$5;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/i$5;


# direct methods
.method constructor <init>(Lrx/i$5;Lrx/k;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 1923
    .local p0, "this":Lrx/i$5$1;, "Lrx/i$5.1;"
    iput-object p1, p0, Lrx/i$5$1;->c:Lrx/i$5;

    iput-object p2, p0, Lrx/i$5$1;->a:Lrx/k;

    iput-object p3, p0, Lrx/i$5$1;->b:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1926
    .local p0, "this":Lrx/i$5$1;, "Lrx/i$5.1;"
    new-instance v0, Lrx/i$5$1$1;

    invoke-direct {v0, p0}, Lrx/i$5$1$1;-><init>(Lrx/i$5$1;)V

    .line 1946
    .local v0, "single":Lrx/k;, "Lrx/k<TT;>;"
    iget-object v1, p0, Lrx/i$5$1;->a:Lrx/k;

    invoke-virtual {v1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 1948
    iget-object v1, p0, Lrx/i$5$1;->c:Lrx/i$5;

    iget-object v1, v1, Lrx/i$5;->b:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 1949
    return-void
.end method
