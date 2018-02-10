.class Lrx/internal/operators/ea$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ea$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/ea$a;

.field final synthetic b:Lrx/internal/operators/ea$c;


# direct methods
.method constructor <init>(Lrx/internal/operators/ea$c;Lrx/internal/operators/ea$a;)V
    .locals 0

    .prologue
    .line 464
    .local p0, "this":Lrx/internal/operators/ea$c$2;, "Lrx/internal/operators/ea$c.2;"
    iput-object p1, p0, Lrx/internal/operators/ea$c$2;->b:Lrx/internal/operators/ea$c;

    iput-object p2, p0, Lrx/internal/operators/ea$c$2;->a:Lrx/internal/operators/ea$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 468
    .local p0, "this":Lrx/internal/operators/ea$c$2;, "Lrx/internal/operators/ea$c.2;"
    iget-object v0, p0, Lrx/internal/operators/ea$c$2;->b:Lrx/internal/operators/ea$c;

    iget-object v1, p0, Lrx/internal/operators/ea$c$2;->a:Lrx/internal/operators/ea$a;

    invoke-virtual {v0, v1}, Lrx/internal/operators/ea$c;->a(Lrx/internal/operators/ea$a;)V

    .line 469
    return-void
.end method
