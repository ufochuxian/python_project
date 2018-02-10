.class Lrx/internal/operators/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$a;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/g$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/g$a;)V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/g$a$1;, "Lrx/internal/operators/g$a.1;"
    iput-object p1, p0, Lrx/internal/operators/g$a$1;->a:Lrx/internal/operators/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/g$a$1;, "Lrx/internal/operators/g$a.1;"
    iget-object v0, p0, Lrx/internal/operators/g$a$1;->a:Lrx/internal/operators/g$a;

    iget-object v0, v0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    sget-object v1, Lrx/internal/operators/g;->c:Lrx/f;

    invoke-virtual {v0, v1}, Lrx/internal/operators/g$b;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
