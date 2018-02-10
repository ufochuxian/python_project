.class Lrx/internal/operators/cd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cd;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/cd$b;

.field final synthetic b:Lrx/internal/operators/cd;


# direct methods
.method constructor <init>(Lrx/internal/operators/cd;Lrx/internal/operators/cd$b;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/cd$1;, "Lrx/internal/operators/cd.1;"
    iput-object p1, p0, Lrx/internal/operators/cd$1;->b:Lrx/internal/operators/cd;

    iput-object p2, p0, Lrx/internal/operators/cd$1;->a:Lrx/internal/operators/cd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/cd$1;, "Lrx/internal/operators/cd.1;"
    iget-object v0, p0, Lrx/internal/operators/cd$1;->a:Lrx/internal/operators/cd$b;

    invoke-virtual {v0}, Lrx/internal/operators/cd$b;->a()V

    .line 91
    return-void
.end method
