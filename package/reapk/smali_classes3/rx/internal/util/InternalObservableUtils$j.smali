.class final Lrx/internal/util/InternalObservableUtils$j;
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
    name = "j"
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

.field private final b:I


# direct methods
.method constructor <init>(Lrx/e;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$j;, "Lrx/internal/util/InternalObservableUtils$j<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$j;->a:Lrx/e;

    .line 274
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$j;->b:I

    .line 275
    return-void
.end method


# virtual methods
.method public a()Lrx/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$j;, "Lrx/internal/util/InternalObservableUtils$j<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$j;->a:Lrx/e;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$j;->b:I

    invoke-virtual {v0, v1}, Lrx/e;->g(I)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$j;, "Lrx/internal/util/InternalObservableUtils$j<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$j;->a()Lrx/d/c;

    move-result-object v0

    return-object v0
.end method
