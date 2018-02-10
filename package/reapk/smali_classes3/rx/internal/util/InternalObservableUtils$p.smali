.class final Lrx/internal/util/InternalObservableUtils$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/e",
        "<TT;>;",
        "Lrx/e",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h;


# direct methods
.method public constructor <init>(Lrx/c/p;Lrx/h;)V
    .locals 0
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$p;, "Lrx/internal/util/InternalObservableUtils$p<TT;TR;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Lrx/c/p;

    .line 193
    iput-object p2, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Lrx/h;

    .line 194
    return-void
.end method


# virtual methods
.method public a(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$p;, "Lrx/internal/util/InternalObservableUtils$p<TT;TR;>;"
    .local p1, "t":Lrx/e;, "Lrx/e<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Lrx/c/p;

    invoke-interface {v0, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Lrx/h;

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$p;, "Lrx/internal/util/InternalObservableUtils$p<TT;TR;>;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$p;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
