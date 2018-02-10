.class Lrx/internal/operators/bo$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bo$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/bo$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/bo$b;)V
    .locals 0

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/bo$b$1;, "Lrx/internal/operators/bo$b.1;"
    iput-object p1, p0, Lrx/internal/operators/bo$b$1;->a:Lrx/internal/operators/bo$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/bo$b$1;, "Lrx/internal/operators/bo$b.1;"
    iget-object v0, p0, Lrx/internal/operators/bo$b$1;->a:Lrx/internal/operators/bo$b;

    invoke-virtual {v0}, Lrx/internal/operators/bo$b;->b()V

    .line 171
    return-void
.end method
