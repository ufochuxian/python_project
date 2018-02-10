.class Lrx/internal/operators/de$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/de$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/de$d;


# direct methods
.method constructor <init>(Lrx/internal/operators/de$d;)V
    .locals 0

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/de$d$1;, "Lrx/internal/operators/de$d.1;"
    iput-object p1, p0, Lrx/internal/operators/de$d$1;->a:Lrx/internal/operators/de$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/de$d$1;, "Lrx/internal/operators/de$d.1;"
    iget-object v0, p0, Lrx/internal/operators/de$d$1;->a:Lrx/internal/operators/de$d;

    invoke-virtual {v0}, Lrx/internal/operators/de$d;->b()V

    .line 114
    return-void
.end method
