.class final Lrx/internal/util/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/b;"
    }
.end annotation


# instance fields
.field private final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/util/l$c;, "Lrx/internal/util/l$c<TT;>;"
    .local p1, "subscriber":Lrx/k;, "Lrx/k<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lrx/internal/util/l$c;->a:Lrx/k;

    .line 110
    iput-object p2, p0, Lrx/internal/util/l$c;->b:Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/l$c;, "Lrx/internal/util/l$c<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/l$c;->a:Lrx/k;

    iget-object v2, p0, Lrx/internal/util/l$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/util/l$c;->a:Lrx/k;

    invoke-virtual {v1, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
