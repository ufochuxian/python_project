.class Lrx/internal/operators/cf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cf;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/cf$a;

.field final synthetic b:Lrx/internal/operators/cf;


# direct methods
.method constructor <init>(Lrx/internal/operators/cf;Lrx/internal/operators/cf$a;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/cf$1;, "Lrx/internal/operators/cf.1;"
    iput-object p1, p0, Lrx/internal/operators/cf$1;->b:Lrx/internal/operators/cf;

    iput-object p2, p0, Lrx/internal/operators/cf$1;->a:Lrx/internal/operators/cf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/cf$1;, "Lrx/internal/operators/cf.1;"
    iget-object v0, p0, Lrx/internal/operators/cf$1;->a:Lrx/internal/operators/cf$a;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/cf$a;->a(J)V

    .line 53
    return-void
.end method
