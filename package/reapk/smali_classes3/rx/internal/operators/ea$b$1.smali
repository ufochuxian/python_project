.class Lrx/internal/operators/ea$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ea$b;-><init>(Lrx/internal/operators/ea;Lrx/l;Lrx/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/ea;

.field final synthetic b:Lrx/internal/operators/ea$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/ea$b;Lrx/internal/operators/ea;)V
    .locals 0

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/ea$b$1;, "Lrx/internal/operators/ea$b.1;"
    iput-object p1, p0, Lrx/internal/operators/ea$b$1;->b:Lrx/internal/operators/ea$b;

    iput-object p2, p0, Lrx/internal/operators/ea$b$1;->a:Lrx/internal/operators/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/ea$b$1;, "Lrx/internal/operators/ea$b.1;"
    iget-object v0, p0, Lrx/internal/operators/ea$b$1;->b:Lrx/internal/operators/ea$b;

    iget-object v0, v0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    iget-object v0, v0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lrx/internal/operators/ea$b$1;->b:Lrx/internal/operators/ea$b;

    invoke-virtual {v0}, Lrx/internal/operators/ea$b;->unsubscribe()V

    .line 128
    :cond_0
    return-void
.end method
