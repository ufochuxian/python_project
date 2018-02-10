.class Lrx/internal/operators/bo$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bo$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/bo$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/bo$a;)V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/bo$a$1;, "Lrx/internal/operators/bo$a.1;"
    iput-object p1, p0, Lrx/internal/operators/bo$a$1;->a:Lrx/internal/operators/bo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/bo$a$1;, "Lrx/internal/operators/bo$a.1;"
    iget-object v0, p0, Lrx/internal/operators/bo$a$1;->a:Lrx/internal/operators/bo$a;

    invoke-virtual {v0}, Lrx/internal/operators/bo$a;->b()V

    .line 285
    return-void
.end method
