.class Lrx/internal/operators/av$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/av;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/av$a;

.field final synthetic b:Lrx/internal/operators/av;


# direct methods
.method constructor <init>(Lrx/internal/operators/av;Lrx/internal/operators/av$a;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/av$1;, "Lrx/internal/operators/av.1;"
    iput-object p1, p0, Lrx/internal/operators/av$1;->b:Lrx/internal/operators/av;

    iput-object p2, p0, Lrx/internal/operators/av$1;->a:Lrx/internal/operators/av$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/av$1;, "Lrx/internal/operators/av.1;"
    iget-object v0, p0, Lrx/internal/operators/av$1;->a:Lrx/internal/operators/av$a;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/av$a;->a(J)V

    .line 46
    return-void
.end method
