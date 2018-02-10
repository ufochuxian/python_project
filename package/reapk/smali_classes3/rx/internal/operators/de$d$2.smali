.class Lrx/internal/operators/de$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/de$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/de$d;


# direct methods
.method constructor <init>(Lrx/internal/operators/de$d;)V
    .locals 0

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/de$d$2;, "Lrx/internal/operators/de$d.2;"
    iput-object p1, p0, Lrx/internal/operators/de$d$2;->a:Lrx/internal/operators/de$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/de$d$2;, "Lrx/internal/operators/de$d.2;"
    const-wide/16 v2, 0x0

    .line 120
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 121
    iget-object v0, p0, Lrx/internal/operators/de$d$2;->a:Lrx/internal/operators/de$d;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/de$d;->b(J)V

    .line 126
    :cond_0
    return-void

    .line 123
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
