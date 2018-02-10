.class Lrx/internal/operators/br$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/br$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lrx/internal/operators/br$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/br$1;I)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/br$1$1;, "Lrx/internal/operators/br$1.1;"
    iput-object p1, p0, Lrx/internal/operators/br$1$1;->b:Lrx/internal/operators/br$1;

    iput p2, p0, Lrx/internal/operators/br$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/br$1$1;, "Lrx/internal/operators/br$1.1;"
    iget-object v0, p0, Lrx/internal/operators/br$1$1;->b:Lrx/internal/operators/br$1;

    iget-object v0, v0, Lrx/internal/operators/br$1;->a:Lrx/internal/operators/br$a;

    iget v1, p0, Lrx/internal/operators/br$1$1;->a:I

    iget-object v2, p0, Lrx/internal/operators/br$1$1;->b:Lrx/internal/operators/br$1;

    iget-object v2, v2, Lrx/internal/operators/br$1;->e:Lrx/e/g;

    iget-object v3, p0, Lrx/internal/operators/br$1$1;->b:Lrx/internal/operators/br$1;

    iget-object v3, v3, Lrx/internal/operators/br$1;->b:Lrx/l;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/br$a;->a(ILrx/l;Lrx/l;)V

    .line 80
    return-void
.end method
