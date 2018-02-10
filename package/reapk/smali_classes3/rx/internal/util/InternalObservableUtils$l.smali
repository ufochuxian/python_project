.class final Lrx/internal/util/InternalObservableUtils$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<",
        "Lrx/d/c",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$l;, "Lrx/internal/util/InternalObservableUtils$l<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$l;->a:Lrx/e;

    .line 249
    return-void
.end method


# virtual methods
.method public a()Lrx/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$l;, "Lrx/internal/util/InternalObservableUtils$l<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$l;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->x()Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$l;, "Lrx/internal/util/InternalObservableUtils$l<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$l;->a()Lrx/d/c;

    move-result-object v0

    return-object v0
.end method
