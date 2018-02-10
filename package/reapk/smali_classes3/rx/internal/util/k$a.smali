.class final Lrx/internal/util/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/k$a;, "Lrx/internal/util/k$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/internal/util/k$a;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/util/k$a;, "Lrx/internal/util/k$a<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/k$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/internal/util/k;->a(Lrx/l;Ljava/lang/Object;)Lrx/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 139
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/util/k$a;, "Lrx/internal/util/k$a<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/k$a;->a(Lrx/l;)V

    return-void
.end method
