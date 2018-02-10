.class Lrx/internal/operators/ea$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ea$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/ea$c;


# direct methods
.method constructor <init>(Lrx/internal/operators/ea$c;)V
    .locals 0

    .prologue
    .line 440
    .local p0, "this":Lrx/internal/operators/ea$c$1;, "Lrx/internal/operators/ea$c.1;"
    iput-object p1, p0, Lrx/internal/operators/ea$c$1;->a:Lrx/internal/operators/ea$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 444
    .local p0, "this":Lrx/internal/operators/ea$c$1;, "Lrx/internal/operators/ea$c.1;"
    iget-object v0, p0, Lrx/internal/operators/ea$c$1;->a:Lrx/internal/operators/ea$c;

    invoke-virtual {v0}, Lrx/internal/operators/ea$c;->b()V

    .line 445
    return-void
.end method
