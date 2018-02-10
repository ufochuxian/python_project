.class Lrx/internal/operators/by$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/by;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/by$a;

.field final synthetic b:Lrx/internal/operators/by;


# direct methods
.method constructor <init>(Lrx/internal/operators/by;Lrx/internal/operators/by$a;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/by$1;, "Lrx/internal/operators/by.1;"
    iput-object p1, p0, Lrx/internal/operators/by$1;->b:Lrx/internal/operators/by;

    iput-object p2, p0, Lrx/internal/operators/by$1;->a:Lrx/internal/operators/by$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/by$1;, "Lrx/internal/operators/by.1;"
    iget-object v0, p0, Lrx/internal/operators/by$1;->b:Lrx/internal/operators/by;

    iget-object v0, v0, Lrx/internal/operators/by;->a:Lrx/c/c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lrx/internal/operators/by$1;->a:Lrx/internal/operators/by$a;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/by$a;->a(Lrx/internal/operators/by$a;J)V

    .line 48
    return-void
.end method
