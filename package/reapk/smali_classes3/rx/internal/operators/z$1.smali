.class Lrx/internal/operators/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/z$c;

.field final synthetic b:Lrx/internal/operators/z;


# direct methods
.method constructor <init>(Lrx/internal/operators/z;Lrx/internal/operators/z$c;)V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/z$1;, "Lrx/internal/operators/z.1;"
    iput-object p1, p0, Lrx/internal/operators/z$1;->b:Lrx/internal/operators/z;

    iput-object p2, p0, Lrx/internal/operators/z$1;->a:Lrx/internal/operators/z$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/z$1;, "Lrx/internal/operators/z.1;"
    iget-object v0, p0, Lrx/internal/operators/z$1;->a:Lrx/internal/operators/z$c;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/z$c;->a(J)V

    .line 90
    return-void
.end method
