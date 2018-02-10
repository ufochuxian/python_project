.class final Lrx/internal/operators/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/internal/operators/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/t",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/t",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Lrx/internal/operators/t;, "Lrx/internal/operators/t<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lrx/internal/operators/t$a;->a:Lrx/internal/operators/t;

    .line 170
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lrx/internal/operators/t$a;->a:Lrx/internal/operators/t;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/t;->a(J)V

    .line 175
    return-void
.end method
