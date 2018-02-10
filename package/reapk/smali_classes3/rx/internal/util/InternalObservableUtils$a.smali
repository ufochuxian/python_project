.class final Lrx/internal/util/InternalObservableUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/d",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$a;, "Lrx/internal/util/InternalObservableUtils$a<TT;TR;>;"
    .local p1, "collector":Lrx/c/d;, "Lrx/c/d<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$a;->a:Lrx/c/d;

    .line 374
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$a;, "Lrx/internal/util/InternalObservableUtils$a<TT;TR;>;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$a;->a:Lrx/c/d;

    invoke-interface {v0, p1, p2}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    return-object p1
.end method
